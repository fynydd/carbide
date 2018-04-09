# Carbide

Carbide is a set of classes that provide Umbraco developers with additional high-level functionality. This API requires no commercial third party components.

**This project uses the newer project file "PackageResource" configuration for NuGet packages.** This means that Carbide's NuGet packages are downloaded to your user folder, and used much like assemblies in the GAC, so they won't interfere with the /packages folder in the root of your project if you're using the standard (default) packages.config method in your solution.

## Requirements
Currently, Carbide is built on .NET CLR 4.6.1, and references UmbracoCMS.Core 7.10.1. Depending on your use case, you could keep it at this version even with a newer UmbracoCMS verson, provided there are no real incompatibilities with Core. Ideally, you want to keep the versions in lock-step. So any Carbide solutions should be updated frequently, which is generally a good practice from a security standpoint.

## Usage
Simply include the git repo as a submodule in your Umbraco solution, and add a project reference to it in any other projects. You can also place the project into your solution, but you'll lose the benefit of a single source for Carbide updates.

Once you add the project to your solution, be sure to reference it in your code where applicable:

<pre><code>using Argentini.Carbide;</code></pre>
or in Razor views...
<pre><code>@using Argentini.Carbide</code></pre>



## Carbide Methods and Enhancements
Following are the methods and other enhancements avalaible in Carbide.



### Argentini.Carbide.ContentHelpers
These are static methods to use for retrieving (and scouring) content with as little code as possible.

1. #### GetRootContentByDocTypeAlias()
   Get a single IPublishedContent node in the site root by its document type alias.

2. #### GetContentByDocTypeAlias()
   Get a single IPublishedContent node by its document type alias. Searches from the site root down through descendants, stopping at the first match.

3. #### GetAllContentByDocTypeAlias()
   Get all IPublishedContent nodes by their document type aliases. Searches from the site root down through descendants, returning all matches.

4. #### GetContentByName()
   Get a single IPublishedContent node by its node name. Searches from the site root down through descendants, stopping at the first match.



### Argentini.Carbide.ContextHelpers
These are static methods to use for ensuring an Umbraco context is available, as in class libraries, for example.

1. #### EnsureUmbracoContext()
   Return an UmbracoContext. For use in controllers and threads that need access to Umbraco Helper, etc.

2. #### EstablishUmbracoContext()
   Establish an UmbracoContext. For use in controllers and threads that need access to Umbraco Helper, etc.



### Argentini.Carbide.ExtensionMethods
These extension methods enhance existing Umbraco types, like IPublishedContent, to provide simple ways of retrieving and manipulating content.

1. #### IPublishedContent.GetUdi()
    UDIs are required for setting picker content values, etc. in ContentService, and many other places, since numeric content Ids are being phased out. This method gets the UDI for a single IPublishedContent object.

2. #### IPublishedContent.SafeGetContentPickerItem()
    Get a single content picker item from a content node property.

3. #### IPublishedContent.SafeGetMediaPickerItem()
    Get a single media picker item from a content node property.

4. #### IPublishedContent.SafeGetMediaPickerItemUrl()
    Get a single media picker item from a content node property, and return its URL.

5. #### IPublishedContent.SafeGetContentPickerItemUrl()
    Get a single content picker item from a content node property, and return its URL.

6. #### IPublishedContent.SafeGetMediaItemMarkup()
    Get a single media item from a content node whose Document Type uses a Media Picker to store a single media item as a property value, and return markup to display the item based on tags passed to the method.

7. #### IPublishedContent.SafeGetValue<T>()
    Safely get a property value by type. For supported types min values are returned (e.g. <int> returns 0, <bool> returns false, etc.) when the property does not exist or if the property returns null. Null is only returned if a type is not supported.

8. #### IPublishedContent.SafeGetPickerItems()
    Safely get items from a Multinode Tree Picker or multiple media items stored in a property. If the property is null an empty IEnumerable is returned to avoid exceptions, and so a simple foreach loop can be used without being wrapped if an if/else statement.

9. #### IPublishedContent.SafeGetNestedContentItems()
    Safely get items from a nested content picker stored in a property. If the property is null an empty IEnumerable is returned to avoid exceptions, and so a simple foreach loop can be used without being wrapped if an if/else statement.

10. #### IPublishedContent.SafeGetBestValueAsString()
    Safely get the get best property value as string. Pass a list of property names in order of preference from worst to best, and get the best value available. Useful for getting navigation menu text from various node name-like properties (e.g. name -> title -> menuName).

11. #### IPublishedContent.SafeGetImageMarkup()
    Get a single media item from a content node whose Document Type uses a Media Picker to store a single media item as a property value, and return auto-generated markup based on the type of image.

12. #### IPublishedContent.SafeGetTags()
    Return a string array of tags from a tags property.

13. #### IPublishedContent.HasTreePickerValue()
    Determine if a content picker or multi-node tree picker property contains an item with a specific value.

14. #### IPublishedContent.ContainsTreePickerValue()
    Determine if a content picker or multi-node tree picker property has an item that contains a specific substring value.

15. #### IPublishedContent.HasNestedContentValue()
    Determine if a nested content property contains an item with a specific value.

16. #### IPublishedContent.ContainsNestedContentValue()
    Determine if a nested content property has an item that contains a specific substring value.

17. #### IPublishedContent.GetContentByDocTypeAlias()
    Get a single IPublishedContent node by its document type alias. Searches the current node's descendants, stopping at the first match.

18. #### IPublishedContent.GetAllContentByDocTypeAlias()
    Get all IPublishedContent nodes by their document type aliases. Searches from the current node's descendants, returning all matches.

19. #### IPublishedContent.GetContentByName()
    Get a single IPublishedContent node by its node name. Searches from the current node's descendants, stopping at the first match.

20. #### IEnumerable.ToConcatenatedString()
    Creates a string from the sequence by concatenating the result of the specified string selector function for each element. Concatenates the strings with or without a delimitter.

21. #### string.StripHtml()
    Return the current string with HTML tags removed.

22. #### object.SafeToString()
    Convert an object to a string. If null an empty string is returned.



### Form Validators
Additional MVC model and client-side validators for your forms. To use client-side validation, be sure to include the scripts:

```
<script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
```
1. #### MinimumFileSizeValidator
   ##### Model usage:
   Where # is the number of megabytes.
   
   ```
   [MinimumFileSizeValidator(#)]
   ```

2. #### MaximumFileSizeValidator
   ##### Model usage:
   Where # is the number of megabytes.
   
   ```
   [MaximumFileSizeValidator(#)]
   ```

3. #### ValidFileTypeValidator
   ##### Model usage:
   Accepts a string array list of valid file extensions, without leading periods.
   
   ```
   [ValidFileTypeValidator(new string[] { "pdf", "docx" })]
   ```



### SEO Helpers
Following are features to help with SEO and site indexing.

1. #### RobotsTxt
   If you add the following to your web.config, instances of {HTTP_HOST} in a robots.txt file at the root of your site will be swapped for the actual domain of the current site and served dynamically.
   
   ```
   <system.webServer>
     <handlers>
        <add name="RobotsTxt" path="/robots.txt" verb="*" type="Argentini.Carbide.RobotsTxt" resourceType="Unspecified" preCondition="integratedMode" />
   ```


## Developers
If you'd like to help make this library better through bug fixes or code additions, let me know through the usual means.

_Carbide is published into the open source community by Michael Argentini._

__License and Disclaimer__: Halide is licensed under the MIT Open Source license, which can be read in the included file "LICENSE.txt".
