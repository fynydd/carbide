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
        private readonly IUserSecurityStorage _userSecurityStorage;
        private readonly IUserFormSecurityStorage _userFormSecurityStorage;
        private readonly IUserService _userService;
        //private readonly IMembershipUserService _membershipUserService;

        public MyComponent(IFormStorage formStorage, IUserService userService, IUserSecurityStorage userSecurityStorage, IUserFormSecurityStorage userFormSecurityStorage, /*IMembershipUserService membershipUserService,*/ IUmbracoContextFactory context)
        {
            _formStorage = formStorage;
            _userService = userService;
            _userSecurityStorage = userSecurityStorage;
            _userFormSecurityStorage = userFormSecurityStorage;
            //_membershipUserService = membershipUserService;
            _context = context;
        }

        public void Initialize()
        {
            _formStorage.Saving += this.FormStorage_Saving;
            _formStorage.Saved += this.FormStorage_Saved;
        }

        public void Terminate()
        {
        }

        //private void MembershipUserService_Save(object sender, SaveEventArgs<IUser> e)
        //{

        //}

        private void FormStorage_Saving(object sender, FormEventArgs e)
        {
            // Make form names reasonably unique (per user)

            var userId = _context.EnsureUmbracoContext().UmbracoContext.Security.CurrentUser.Id;
            var suffix = "; #" + userId;

            if (e.Form.Name.EndsWith(suffix) == false && userId > -1)
            {
                e.Form.Name = e.Form.Name + suffix;
            }
        }

        private void FormStorage_Saved(object sender, FormEventArgs e)
        {
            // Iterate users, revoke form permission on users who are not admin or the form creator

            var page = 0;
            long total = 0;
            var users = _userService.GetAll(page, 10, out total);
            IEnumerable<Form> allForms = _formStorage.GetAllForms();

            while (users.Any())
            {
                foreach (var user in users)
                {
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
                            _userFormSecurityStorage.UpdateUserFormSecurity(formSecurityForUser);
                        }
                    }
                }

                page++;
                users = _userService.GetAll(page, 10, out total);
            }
        }
    }
}

