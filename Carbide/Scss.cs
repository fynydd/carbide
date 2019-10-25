using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Management;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Web;

using Umbraco.Web;

using LibSass;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Various helper methods for working with Sass and SCSS files.
    /// ]]></summary>
    public static class Scss
    {
        /// <summary><![CDATA[
        /// Compile a SCSS file or files into CSS.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="scssInputPath">Web path to the scss input file (e.g. "/scss/application.scss")</param>
        /// <param name="outputPath">Web path to the CSS output file (e.g. "/stylesheets/application.css")</param>
        /// <param name="debugMode">Set to true for expanded output with source maps, false for compressed production CSS only</param>
        /// <param name="force">Force a rebuild</param>
        public static void BuildScss(this UmbracoContext umbCtx, string scssInputPath, string outputPath, bool debugMode = false, bool force = false)
        {
            var process = force;

            Debug.WriteLine("");
            Debug.WriteLine("LibSass result (" + (debugMode ? "debug" : "release") + " mode):");
            Debug.WriteLine("------------------------------");

            #region Determine if at least one file has been modified

            if (force)
            {
                Debug.WriteLine("FORCED REBUILD MODE");
            }

            else
            {
                if (!umbCtx.FileExists(outputPath))
                {
                    Debug.WriteLine("CSS file is missing, will recompile...");
                    process = true;
                }

                else
                {
                    if (debugMode && !umbCtx.FileExists(outputPath + ".map"))
                    {
                        Debug.WriteLine("Debug mode and CSS Map file is missing, will recompile...");
                        process = true;
                    }

                    else
                    {
                        if (umbCtx.KeyExists(Storage.ConvertFilePathToKey(scssInputPath)))
                        {
                            var files = (ArrayList)umbCtx.HttpContext.Application[Storage.ConvertFilePathToKey(scssInputPath)];

                            if (files.Count > 0)
                            {
                                foreach (string file in files)
                                {
                                    var segments = file.Split('|');

                                    Debug.Write(Storage.GetFilename(segments[0]) + "... ");

                                    if (segments.Length == 2)
                                    {
                                        FileInfo fileInfo = new FileInfo(umbCtx.MapPath(segments[0]));
                                        DateTime lastModified = fileInfo.LastWriteTime;

                                        if (segments[1] != lastModified.DateFormat(DateFormats.Utc))
                                        {
                                            process = true;
                                            Debug.WriteLine(" modified, will recompile...");
                                            break;
                                        }

                                        else
                                        {
                                            Debug.WriteLine(" unchanged");
                                        }
                                    }

                                    else
                                    {
                                        process = true;
                                        Debug.WriteLine(" has no previous timestamp, will recompile...");
                                        break;
                                    }
                                }
                            }

                            else
                            {
                                process = true;
                                Debug.WriteLine("No files list is present, will recompile...");
                            }
                        }

                        else
                        {
                            process = true;
                            Debug.WriteLine("Cannot determine prior build timestamps, will recompile...");
                        }
                    }
                }
            }

            #endregion

            #region No state or file(s) modified, process...

            if (process == true)
            {
                var debugOptions = new LibSass.Compiler.Options.SassOptions
                {
                    OutputStyle = LibSass.Compiler.Options.SassOutputStyle.Compact,
                    IncludeSourceComments = false,
                    IncludeSourceMapContents = true,
                    OutputPath = umbCtx.MapPath(outputPath),
                    SourceMapFile = outputPath + ".map",
                    InputPath = umbCtx.MapPath(scssInputPath)
                };

                var releaseOptions = new LibSass.Compiler.Options.SassOptions
                {
                    OutputStyle = LibSass.Compiler.Options.SassOutputStyle.Compact,
                    IncludeSourceComments = false,
                    IncludeSourceMapContents = false,
                    OutputPath = umbCtx.MapPath(outputPath),
                    InputPath = umbCtx.MapPath(scssInputPath)
                };

                try
                {
                    var cssResult = new LibSass.Compiler.SassResult();
                    var css = "";
                    var map = "";

                    if (debugMode == false)
                    {
                        var sassCompiler = new LibSass.Compiler.SassCompiler(releaseOptions);
                        var cssc = new Yahoo.Yui.Compressor.CssCompressor();

                        cssResult = sassCompiler.Compile();
                        css = cssc.Compress(cssResult.Output);
                    }

                    else
                    {
                        var sassCompiler = new LibSass.Compiler.SassCompiler(debugOptions);

                        cssResult = sassCompiler.Compile();
                        css = cssResult.Output;
                        map = cssResult.SourceMap;
                    }

                    if (umbCtx.FileExists(outputPath))
                    {
                        umbCtx.DeleteFiles(outputPath);
                        Debug.WriteLine("Deleted " + outputPath);
                    }

                    if (umbCtx.FileExists(outputPath + ".map"))
                    {
                        umbCtx.DeleteFiles(outputPath + ".map");
                        Debug.WriteLine("Deleted " + outputPath + ".map");
                    }

                    umbCtx.WriteFile(outputPath, css);
                    Debug.WriteLine("Generated " + outputPath);

                    if (debugMode == true)
                    {
                        umbCtx.WriteFile(outputPath + ".map", map);
                        Debug.WriteLine("Generated " + outputPath + ".map");
                    }

                    if (cssResult.IncludedFiles.Length > 0)
                    {
                        ArrayList fileList = new ArrayList();

                        foreach (var file in cssResult.IncludedFiles)
                        {
                            FileInfo fileInfo = new FileInfo(umbCtx.MapPath(file));
                            DateTime lastModified = fileInfo.LastWriteTime;
                            var item = file + "|" + lastModified.DateFormat(DateFormats.Utc);

                            fileList.Add(item);
                            Debug.WriteLine(item);
                        }

                        umbCtx.HttpContext.Application[Storage.ConvertFilePathToKey(scssInputPath)] = fileList;
                        Debug.WriteLine("Saved state for " + fileList.Count + " files");
                        Debug.WriteLine("");
                    }

                    else
                    {
                        Debug.WriteLine("No files to process, aborting");
                        Debug.WriteLine("");
                    }
                }

                catch (Exception e)
                {
                    Debug.WriteLine("LibSass error: " + e.Message);
                    Debug.WriteLine("");
                }
            }

            else
            {
                Debug.WriteLine("File(s) not modified, aborting");
                Debug.WriteLine("");
            }

            #endregion
        }

        /// <summary><![CDATA[
        /// Read a folder of filenames (SCSS partials) and inject them into a SCSS file as import statements.
        /// Add the following to your SCSS file so the method knows where to inject the import statements,
        /// including the leading "// ":
        /// // $CARBIDE_PARTIALS:BEGIN
        /// // $CARBIDE_PARTIALS:END
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="scssPath">Relative web path to the SCSS files (e.g. "/scss/")</param>
        /// <param name="scssFilename">File name for the SCSS file in which to inject the partials as import statements (e.g. "application.scss")</param>
        /// <param name="partialPath">Relative web path to the folder containing the SCSS partials to read (e.g. "/scss/custom/")</param>
        public static void InjectScssPartials(this UmbracoContext umbCtx, string scssPath, string scssFilename, string partialPath)
        {
            try
            {
                var _scssPath = "/" + scssPath.ToLower().Trim('/') + "/";
                var _partialPath = "/" + partialPath.ToLower().Trim('/') + "/";
                _partialPath = _partialPath.Replace(_scssPath, "");
                var scss = umbCtx.ReadFile(_scssPath + scssFilename);
                string[] delims = { "// $CARBIDE_PARTIALS:BEGIN", "// $CARBIDE_PARTIALS:END" };

                if (scss.Length > (delims[0].Length + delims[1].Length))
                {
                    if (scss.Contains(delims[0]) && scss.Contains(delims[1]))
                    {
                        if (scss.IndexOf(delims[0]) < scss.IndexOf(delims[1]))
                        {
                            List<string> chunks = new List<string>(scss.Split(delims, StringSplitOptions.RemoveEmptyEntries));
                            var oldList = "";

                            if (chunks.Count == 3)
                            {
                                oldList = chunks[1];
                                chunks.RemoveAt(1);
                            }

                            if (chunks.Count == 2)
                            {
                                var inject = "";

                                // Root partial files go first
                                var _files = umbCtx.GetFiles(_scssPath + _partialPath, "*.scss");
                                _files.Sort();

                                if (_files.Count > 0)
                                {
                                    foreach (var file in _files)
                                    {
                                        inject += "@import \"" + (_scssPath + _partialPath).Replace(_scssPath, "") + file + "\";\r\n";
                                    }
                                }

                                ArrayList folders = umbCtx.GetWebFolders(_scssPath + _partialPath, includeRoot: false, recurse: true);

                                foreach (var folder in folders)
                                {
                                    _files = umbCtx.GetFiles(folder.ToString(), "*.scss");
                                    _files.Sort();

                                    if (_files.Count > 0)
                                    {
                                        foreach (var file in _files)
                                        {
                                            inject += "@import \"" + folder.ToString().Replace(_scssPath, "") + file + "\";\r\n";
                                        }
                                    }
                                }

                                // Only write imports if there are changes...
                                if (oldList == "" || inject.ToLower().Trim().Replace("\r\n", "|").Replace("\r", "|").Replace("\n", "|") != oldList.ToLower().Trim().Replace("\r\n", "|").Replace("\r", "|").Replace("\n", "|"))
                                {
                                    var finalFile = chunks[0] + delims[0] + "\r\n" + inject + delims[1] + chunks[1];

                                    umbCtx.WriteFile(_scssPath + scssFilename, finalFile);

                                    Debug.WriteLine("SCSS import changes detected, writing to " + _scssPath + scssFilename);
                                }

                                else
                                {
                                    Debug.WriteLine("No SCSS import changes detected in " + _scssPath + scssFilename + ", skipping");
                                }
                            }
                        }
                    }
                }
            }

            catch (Exception e)
            {
                Debug.WriteLine("EXCEPTION: Carbide.Scss.InjectScssPartials() - " + e.Message);
            }
        }

        /// <summary><![CDATA[
        /// Wrapper method for building CSS from SCSS files, with partial injection.
        /// Will check and build every "Scss.BuildCheck.Seconds" when debug=true if there are file changes (production).
        /// Will check and build every page load when debug=true if there are file changes.
        /// Requires the following Carbide config items:
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// <add key="Scss.BuildCheck.Seconds" value="3600" />
        /// <add key="Scss.Root" value="/scss/" />
        /// <add key="Scss.Partials.Root" value="/scss/custom/" />
        /// <add key="Scss.Filename.Base" value="application" />
        /// <add key="Scss.Output.Root" value="/css/" />
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context to use</param>
        public static void RunConfiguredScssBuild(this UmbracoContext umbCtx)
        {
            var scssPath = Config.GetKeyValue("Scss.Root", "/scss/", "Fynydd.Carbide");
            var scssPartialsPath = Config.GetKeyValue("Scss.Partials.Root", "/scss/custom/", "Fynydd.Carbide");
            var scssFilenameBase = Config.GetKeyValue("Scss.Filename.Base", "application", "Fynydd.Carbide");
            var scssOutputPath = Config.GetKeyValue("Scss.Output.Root", "/css/", "Fynydd.Carbide");

            var debugging = umbCtx.IsDebugging();
            var buildScss = debugging; // Always run in debug mode

            if (debugging == false)
            {
                // Only run the check periodically on production unless the file doesn't exist

                if (umbCtx.FileExists(scssOutputPath + scssFilenameBase + ".css") == false)
                {
                    buildScss = true;
                }

                umbCtx.TaskIntervalInit("ScssProductionBuild", Config.GetKeyValue<double>("Scss.BuildCheck.Seconds", 60 * 60 * 24, "Fynydd.Carbide"));

                if (umbCtx.TaskShouldBeRun("ScssProductionBuild"))
                {
                    buildScss = true;
                }
            }

            if (buildScss == true)
            {
                if (debugging == false)
                {
                    umbCtx.TaskIntervalStart("ScssProductionBuild");
                }

                umbCtx.InjectScssPartials(scssPath, scssFilenameBase + ".scss", scssPartialsPath);
                umbCtx.BuildScss(scssPath + scssFilenameBase + ".scss", scssOutputPath + scssFilenameBase + ".css", debugMode: debugging);

                if (debugging == false)
                {
                    umbCtx.TaskIntervalStop("ScssProductionBuild");
                }
            }
        }
    }
}
