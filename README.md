Carbide
=======

Carbide is a set of classes that provide Umbraco developers with additional high-level functionality. This API requires no commercial third party components.

__What's included?__ Included in the project is a Visual Studio solution which compiles the Carbide source into a single binary with embedded resources, and XML Intellisense doc file which can be dropped into a web application's "Bin" folder and used immediately.

**This project uses the newer project file "PackageResource" configuration for NuGet packages.** This means that Carbide's NuGet packages are downloaded to your user folder, and used much like assemblies in the GAC, so they won't interfere with the /packages folder in the root of your project if you're using the standard (default) packages.config method in your solution.

Usage
-----
<pre><code>using Argentini.Carbide;</code></pre>
or in Razor views...
<pre><code>@using Argentini.Carbide</code></pre>

Developers
----------
If you'd like to help make this library better through bug fixes or code additions, let me know through the usual means.

_Carbide is published into the open source community by Michael Argentini._

__License and Disclaimer__: Halide is licensed under the MIT Open Source license, which can be read in the included file "LICENSE.txt".
