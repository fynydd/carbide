# Carbide

Carbide is a set of classes that provide Umbraco developers with additional high-level functionality. This API requires no commercial third party components.

__What's included?__ Included in the project is a Visual Studio solution which compiles the Carbide source into a single binary with embedded resources, and XML Intellisense doc file which can be dropped into a web application's "Bin" folder and used immediately.

**This project uses the newer project file "PackageResource" configuration for NuGet packages.** This means that Carbide's NuGet packages are downloaded to your user folder, and used much like assemblies in the GAC, so they won't interfere with the /packages folder in the root of your project if you're using the standard (default) packages.config method in your solution.

## Usage
<pre><code>using Argentini.Carbide;</code></pre>
or in Razor views...
<pre><code>@using Argentini.Carbide</code></pre>

## Argentini.Carbide.ContentHelpers
These are static methods to use for retrieving (and scouring) content with as little code as possible.

### GetRootContentByDocTypeAlias()
Get a single IPublishedContent node in the site root by its document type alias.

### GetContentByDocTypeAlias()
Get a single IPublishedContent node by its document type alias. Searches from the site root down through descendants, stopping at the first match.

### GetAllContentByDocTypeAlias()
Get all IPublishedContent nodes by their document type aliases. Searches from the site root down through descendants, returning all matches.

### GetContentByName()
Get a single IPublishedContent node by its node name. Searches from the site root down through descendants, stopping at the first match.

## Argentini.Carbide.ContextHelpers
These are static methods to use for ensuring an Umbraco context is available, as in class libraries, for example.

### EnsureUmbracoContext()
Return an UmbracoContext. For use in controllers and threads that need access to Umbraco Helper, etc.

### EstablishUmbracoContext()
Establish an UmbracoContext. For use in controllers and threads that need access to Umbraco Helper, etc.

## Argentini.Carbide.ExtensionMethods
These extension methods enhance existing Umbraco types, like IPublishedContent, to provide simple ways of retrieving and manipulating content.

### IPublishedContent.GetUdi()
UDIs are required for setting picker content values, etc. in ContentService, and many other places, since numeric content Ids are being phased out. This method gets the UDI for a single IPublishedContent object.

### IPublishedContent.SafeGetContentPickerItem()
Get a single content picker item from a content node property.

### IPublishedContent.SafeGetMediaPickerItem()
Get a single media picker item from a content node property.

### IPublishedContent.SafeGetMediaPickerItemUrl()
Get a single media picker item from a content node property, and return its URL.

### IPublishedContent.SafeGetContentPickerItemUrl()
Get a single content picker item from a content node property, and return its URL.

### IPublishedContent.SafeGetMediaItemMarkup()
Get a single media item from a content node whose Document Type uses a Media Picker to store a single media item as a property value, and return markup to display the item based on tags passed to the method.

### IPublishedContent.SafeGetValue<T>()
Safely get a property value by type. For supported types min values are returned (e.g. <int> returns 0, <bool> returns false, etc.) when the property does not exist or if the property returns null. Null is only returned if a type is not supported.

### IPublishedContent.SafeGetPickerItems()
Safely get items from a Multinode Tree Picker or multiple media items stored in a property. If the property is null an empty IEnumerable is returned to avoid exceptions, and so a simple foreach loop can be used without being wrapped if an if/else statement.

### IPublishedContent.SafeGetNestedContentItems()
Safely get items from a nested content picker stored in a property. If the property is null an empty IEnumerable is returned to avoid exceptions, and so a simple foreach loop can be used without being wrapped if an if/else statement.

### IPublishedContent.SafeGetBestValueAsString()
Safely get the get best property value as string. Pass a list of property names in order of preference from worst to best, and get the best value available. Useful for getting navigation menu text from various node name-like properties (e.g. name -> title -> menuName).

### IPublishedContent.SafeGetImageMarkup()
Get a single media item from a content node whose Document Type uses a Media Picker to store a single media item as a property value, and return auto-generated markup based on the type of image.

### IPublishedContent.SafeGetTags()
Return a string array of tags from a tags property.

### IPublishedContent.HasTreePickerValue()
Determine if a content picker or multi-node tree picker property contains an item with a specific value.

### IPublishedContent.ContainsTreePickerValue()
Determine if a content picker or multi-node tree picker property has an item that contains a specific substring value.

### IPublishedContent.HasNestedContentValue()
Determine if a nested content property contains an item with a specific value.

### IPublishedContent.ContainsNestedContentValue()
Determine if a nested content property has an item that contains a specific substring value.

### IPublishedContent.GetContentByDocTypeAlias()
Get a single IPublishedContent node by its document type alias. Searches the current node's descendants, stopping at the first match.

### IPublishedContent.GetAllContentByDocTypeAlias()
Get all IPublishedContent nodes by their document type aliases. Searches from the current node's descendants, returning all matches.

### IPublishedContent.GetContentByName()
Get a single IPublishedContent node by its node name. Searches from the current node's descendants, stopping at the first match.

### IEnumerable<T>.ToConcatenatedString<T>
Creates a string from the sequence by concatenating the result of the specified string selector function for each element. Concatenates the strings with or without a delimitter.

## Developers
If you'd like to help make this library better through bug fixes or code additions, let me know through the usual means.

_Carbide is published into the open source community by Michael Argentini._

__License and Disclaimer__: Halide is licensed under the MIT Open Source license, which can be read in the included file "LICENSE.txt".
