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

        private void ProcessUserFormAccess(IUser user, IEnumerable<Form> allForms)
        {
            // Process form access for a specific user;
            // Give an admin access to all forms and give normal users access only to their own forms
            // Grants and revokes all form permissions (healing behavior)

            var isAdmin = user.Groups.Where(g => g.Name == "Administrators").Count() > 0 || user.Id == -1;
            var suffix = "; #" + user.Id;

            foreach (Form form in allForms)
            {
                var formSecurityForUser = _userFormSecurityStorage.GetUserFormSecurity(user.Id.ToString(), form.Id);
                var hasSecurityAlready = (formSecurityForUser != null);

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
        }

        #region Events

        private void UserService_SavedUser(IUserService sender, SaveEventArgs<IUser> e)
        {
            // Process form access for all saved users and all forms

            IEnumerable<Form> allForms = _formStorage.GetAllForms();

            var users = e.SavedEntities;

            foreach (var user in users)
            {
                ProcessUserFormAccess(user, allForms);
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
            // Process form access for all users and all forms

            var page = 0;
            long total = 0;
            var users = _userService.GetAll(page, 10, out total);
            IEnumerable<Form> allForms = _formStorage.GetAllForms();

            while (users.Any())
            {
                foreach (var user in users)
                {
                    ProcessUserFormAccess(user, allForms);
                }

                page++;
                users = _userService.GetAll(page, 10, out total);
            }
        }

        #endregion
    }
}

