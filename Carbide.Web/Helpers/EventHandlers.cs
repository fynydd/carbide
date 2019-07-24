using System;
using System.Linq;

using Umbraco.Core;
using Umbraco.Core.Composing;
using Umbraco.Core.Events;
using Umbraco.Core.Services;
using Umbraco.Core.Services.Implement;

using Umbraco.Forms.Core;
using Umbraco.Forms.Core.Data.Storage;
using Umbraco.Forms.Data.Storage;

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
            //composition.SetContentLastChanceFinder<My404ContentFinder>();

            composition.Components().Append<MyComponent>();
        }
    }

    public class MyComponent : IComponent
    {
        private readonly IContentService _contentService;
        private readonly IUmbracoContextFactory _context;
        private readonly IFormStorage _formStorage;

        public MyComponent(IContentService contentService, IUmbracoContextFactory context, IFormStorage formStorage)
        {
            _contentService = contentService;
            _context = context;
            _formStorage = formStorage;
        }

        public void Initialize()
        {
            ContentService.Saving += this.ContentService_Saving;
            //FormStorage.Created += this.FormStorage_Created;
        }

        public void Terminate()
        {
        }

        /// <summary>
        /// Listen for when content is being saved, check if it is a
        /// new item and fill in some default data.
        /// </summary>
        private void ContentService_Saving(IContentService sender, ContentSavingEventArgs e)
        {
            //foreach (var content in e.SavedEntities.Where(c => c.ContentType.Alias.InvariantEquals("quotation")))
            //{
            //    if (content.HasProperty("quote") && content.HasProperty("author"))
            //    {
            //        var quote = content.GetValue<string>("quote");
            //        var authorUdi = content.GetValue<GuidUdi>("author");
            //        var authorGuid = authorUdi.Guid;
            //        var author = sender.GetById(authorGuid);

            //        content.Name = Quotations.MakeNodeName(quote, author.GetValue<string>("firstName"), author.GetValue<string>("middleName"), author.GetValue<string>("lastName"));

            //        content.Properties["quoteSearchText"].SetValue(quote.StripHtml(false, false, true).RemovePunctuation(except: @"'\-"));
            //        content.Properties["yearSearchText"].SetValue(content.GetValue<string>("year").StripHtml(false, false, true).RemovePunctuation(except: @"'\-"));

            //        content.Properties["authorSearchText"].SetValue(Quotations.AuthorFullName(author.GetValue<string>("firstName"), author.GetValue<string>("middleName"), author.GetValue<string>("lastName")));

            //        if (content.GetValue<GuidUdi>("source") != null)
            //        {
            //            var sourceUdi = content.GetValue<GuidUdi>("source");
            //            var sourceGuid = sourceUdi.Guid;
            //            var source = sender.GetById(sourceGuid);

            //            content.Properties["sourceSearchText"].SetValue(source.GetValue<string>("sourceName").StripHtml(false, false, true).RemovePunctuation(except: @"'\-"));
            //        }
            //    }
            //}

            //foreach (var content in e.SavedEntities.Where(c => c.ContentType.Alias.InvariantEquals("person")))
            //{
            //    var _author = sender.GetById(content.Id);
            //    var author = new Author(_context.EnsureUmbracoContext().UmbracoContext.ContentCache.GetById(content.Id));

            //    content.Name = Strings.SortableName(author.FirstName, author.MiddleName, author.LastName);
            //    content.Properties["nameSearchText"].SetValue(author.FullName.StripHtml(false, false, true));
            //    content.Properties["biographySearchText"].SetValue(author.Biography.StripHtml(false, false, true));
            //}
        }

        private void FormStorage_Created(IFormStorage sender, FormEventArgs e)
        {


        }
    }
}

