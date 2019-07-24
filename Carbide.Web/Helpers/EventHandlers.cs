using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

using Umbraco.Core;
using Umbraco.Core.Composing;
using Umbraco.Core.Events;
using Umbraco.Core.Models.Membership;
using Umbraco.Core.Services;
using Umbraco.Core.Services.Implement;

using Umbraco.Forms.Core;
using Umbraco.Forms.Core.Models;
using Umbraco.Forms.Core.Persistence.Dtos;
using Umbraco.Forms.Data.Storage;
using Umbraco.Forms.Core.Data.Storage;

using Umbraco.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

using Carbide.Web.Helpers;

namespace MyProject.Components
{
    [RuntimeLevel(MinLevel = RuntimeLevel.Run)]
    public class MyComposer : IUserComposer
    {
        public void Compose(Composition composition)
        {
            composition.Components().Append<MyComponent>();
        }
    }

    public class MyComponent : IComponent
    {
        private readonly IUmbracoContextFactory _context;
        private readonly IFormStorage _formStorage;
        private readonly IUserFormSecurityStorage _userFormSecurityStorage;
        private readonly IUserService _userService;

        public MyComponent(IFormStorage formStorage, IUserService userService, IUserFormSecurityStorage userFormSecurityStorage, IUmbracoContextFactory context)
        {
            _formStorage = formStorage;
            _userService = userService;
            _userFormSecurityStorage = userFormSecurityStorage;
            _context = context;
        }

        public void Initialize()
        {
            _formStorage.Saving += this.FormStorage_Saving;
            _formStorage.Saved += this.FormStorage_Saved;

            UserService.SavedUser += this.UserService_SavedUser;
        }

        public void Terminate()
        {
        }

        private void ProcessUserFormAccess(IUser user, bool isAdmin, Form form)
        {
            // Process form access for a specific user and a specific form.
            // Give a user access to the form if they are an admin or the form owner.

            var formSecurityForUser = _userFormSecurityStorage.GetUserFormSecurity(user.Id.ToString(), form.Id);
            var hasSecurityAlready = (formSecurityForUser != null);
            var suffix = "; #" + user.Id;

            if (!hasSecurityAlready)
            {
                formSecurityForUser = UserFormSecurity.Create();
                formSecurityForUser.User = user.Id.ToString();
                formSecurityForUser.Form = form.Id;
            }

            var oldPermission = formSecurityForUser.HasAccess;

            formSecurityForUser.HasAccess = false;

            if (form.Name.EndsWith(suffix) || isAdmin)
            {
                formSecurityForUser.HasAccess = true;
            }

            if (!hasSecurityAlready)
            {
                _userFormSecurityStorage.InsertUserFormSecurity(formSecurityForUser);
            }

            else
            {
                if (oldPermission != formSecurityForUser.HasAccess)
                {
                    _userFormSecurityStorage.UpdateUserFormSecurity(formSecurityForUser);
                }
            }
        }

        #region Events

        private void UserService_SavedUser(IUserService sender, SaveEventArgs<IUser> e)
        {
            IEnumerable<Form> allForms = _formStorage.GetAllForms();

            var users = e.SavedEntities;
            var savingAdmin = false;

            // Are we saving one or more admin users?

            foreach (var user in users)
            {
                if (user.Groups.Where(g => g.Name == "Administrators").Count() > 0 || user.Id == -1)
                {
                    savingAdmin = true;
                }
            }

            if (savingAdmin)
            {
                // If saving one or more admin users, process permissions for ALL users and ALL forms

                var page = 0;
                long total = 0;
                users = _userService.GetAll(page, 10, out total);

                while (users.Any())
                {
                    foreach (var user in users)
                    {
                        var isAdmin = user.Groups.Where(g => g.Name == "Administrators").Count() > 0 || user.Id == -1;

                        foreach (Form form in allForms)
                        {
                            ProcessUserFormAccess(user, isAdmin, form);
                        }
                    }

                    page++;
                    users = _userService.GetAll(page, 10, out total);
                }
            }

            else
            {
                // If saving only normal users, process form access for all users being saved for all forms

                foreach (var user in users)
                {
                    var isAdmin = user.Groups.Where(g => g.Name == "Administrators").Count() > 0 || user.Id == -1;

                    foreach (Form form in allForms)
                    {
                        ProcessUserFormAccess(user, isAdmin, form);
                    }
                }
            }
        }

        private void FormStorage_Saving(object sender, FormEventArgs e)
        {
            // Append user ID to the end of the form name

            var userId = _context.EnsureUmbracoContext().UmbracoContext.Security.CurrentUser.Id;
            var suffix = "; #" + userId;

            if (e.Form.Name.EndsWith(suffix) == false && userId > -1)
            {
                e.Form.Name = e.Form.Name + suffix;
            }
        }

        private void FormStorage_Saved(object sender, FormEventArgs e)
        {
            // Process current form access for all users

            var page = 0;
            long total = 0;
            var users = _userService.GetAll(page, 10, out total);

            while (users.Any())
            {
                foreach (var user in users)
                {
                    var isAdmin = user.Groups.Where(g => g.Name == "Administrators").Count() > 0 || user.Id == -1;

                    ProcessUserFormAccess(user, isAdmin, e.Form);
                }

                page++;
                users = _userService.GetAll(page, 10, out total);
            }
        }

        #endregion
    }
}

