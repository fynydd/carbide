﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Management;
using System.Text.RegularExpressions;
using System.Web;

using LibSass;

using Fynydd.Carbide.Constants;
using System.Reflection;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Various helper methods for using files and folders.
    /// ]]></summary>
    public static class StorageHelpers
    {
        /// <summary><![CDATA[
        /// Transforms web-style relative path to physical path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string realPath = relativePath.MapPath();
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-style path to a file (e.g. "/downloads/file.jpg").</param>
        /// <returns>C:\files\downloads\file.jpg</returns>
        public static string MapPath(this string path)
        {
            string filename = "";

            if (path.Length > 1)
            {
                if (path.Substring(1, 1) == ":")
                {
                    // Handle weird scenarios where libraries like libsass return 
                    // hybrid paths like "C:/paths/with/forward-slashes/"
                    path = path.Replace("/", "\\");
                }

                if (path.Contains("\\"))
                {
                    filename = path;
                }

                else
                {
                    if (HttpContext.Current != null)
                    {
                        filename = HttpContext.Current.Server.MapPath(path);
                    }

                    else
                    {
                        if (path.StartsWith("/"))
                        {
                            path = path.Substring(1, path.Length - 1);
                        }

                        filename = AppDomain.CurrentDomain.BaseDirectory + path.Replace("/", "\\");
                    }
                }
            }

            return filename;
        }

        /// <summary><![CDATA[
        /// Deletes a directory, and any files and subdirectories it contains.
        /// Directory passed is in standard web form (e.g. "/temp").
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = DeleteDirectory("/temp/uploads");
        /// ]]></code>
        /// </example>
        /// <param name="directory">Directory to delete (as "/temp"). Passing an empty string will delete the current working directory!</param>
        /// <returns>Empty string on success, or a string with an error message.</returns>
        public static string DeleteDirectory(this string directory)
        {
            if (directory.SafeToString().Length < 1)
            {
                return ("You did not specify a directory to delete.");
            }

            else
            {
                try
                {
                    string webdir = directory.MapPath();

                    string dirObject = String.Format("win32_Directory.Name='{0}'", webdir);

                    using (ManagementObject dir = new ManagementObject(dirObject))
                    {
                        dir.Get();
                        ManagementBaseObject outParams = dir.InvokeMethod("Delete", null, null);
                    }
                }

                catch (DirectoryNotFoundException)
                {
                    return ("The directory \"" + directory + "\" does not exist.");
                }

                catch (PathTooLongException)
                {
                    return ("The directory \"" + directory.ToString().Substring(1, 80) + "...\" is too long and exceeds the system-defined maximum length for a directory name.");
                }

                catch (Exception e)
                {
                    return ("Cannot delete the directory due to the following exception:<pre>\r\n" + e + "<pre>");
                }

                return (string.Empty);
            }
        }

        /// <summary><![CDATA[
        /// Reads the contents of a text file.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string fileContents = ReadFile("/content/file.txt");
        /// ]]></code>
        /// </example>
        /// <param name="filename">Web-formatted path and file name to read.</param>
        /// <returns>String with file contents.</returns>
        public static string ReadFile(this string filename)
        {
            string inn = "";

            try
            {
                string fn = filename.RemoveQueryString().MapPath();

                using (StreamReader sr = new StreamReader(fn))
                {
                    inn = sr.ReadToEnd();
                }
            }

            catch
            {
                return (string.Empty);
            }

            return (inn);
        }

        /// <summary><![CDATA[
        /// Writes a string to a text file.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = WriteFile("/documents/file.txt", contentString);
        /// ]]></code>
        /// </example>
        /// <param name="filename">Web-formatted path and file name to save.</param>
        /// <param name="content">String to save into file.</param>
        /// <returns>Empty String if successful, error message string on failure.</returns>
        public static string WriteFile(this string filename, string content)
        {
            try
            {
                string fn = filename.RemoveQueryString().MapPath();

                if (File.Exists(fn)) File.Delete(fn);

                StreamWriter sw = new StreamWriter(fn, false);

                sw.Write(content);
                sw.Close();

                return (string.Empty);

            }

            catch (Exception e)
            {
                return (e.ToString());
            }
        }

        /// <summary><![CDATA[
        /// Reads filenames from a directory and returns an ArrayList.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ArrayList filenames = GetFiles("/pdf", "*.pdf|*.pdfx", PathOptions.Path);
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted path to the files.</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default).
        /// Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <param name="options">options for returned files inclusion, et al.
        /// (e.g. (PathOptions.Hidden | PathOptions.System | PathOptions.Path) returns all files,
        /// including hidden and system files, and the filename includes the full path).</param>
        /// <returns>ArrayList of filenames.</returns>
        public static ArrayList GetFiles(this string path, string filter, PathOptions options)
        {
            ArrayList fileArray = new ArrayList();
            FileInfo objFI;
            string[] files;

            if (String.IsNullOrEmpty(filter)) filter = "*.*";

            string[] filespec = filter.Split('|');

            try
            {
                for (int L = 0; L < filespec.Length; L++)
                {
                    files = System.IO.Directory.GetFiles(path.MapPath(), filespec[L]);

                    for (int i = 0; i < files.Length; i++)
                    {
                        objFI = new System.IO.FileInfo(files[i]);

                        if (
                                (objFI.Attributes.ToString().IndexOf("Hidden") < 0 && objFI.Attributes.ToString().IndexOf("System") < 0)
                                ||
                                ((int)(options & PathOptions.Hidden) != 0 && objFI.Attributes.ToString().IndexOf("Hidden") >= 0)
                                ||
                                ((int)(options & PathOptions.System) != 0 && objFI.Attributes.ToString().IndexOf("System") >= 0)
                            )
                        {
                            if (!fileArray.Contains(objFI.Name) && !fileArray.Contains(objFI.FullName))
                            {
                                fileArray.Add(((int)(options & PathOptions.Path) != 0) ? objFI.FullName : objFI.Name);
                            }
                        }
                    }
                }
            }

            catch
            { }

            return fileArray;
        }

        /// <summary><![CDATA[
        /// Reads directory names from a given path and returns a string array.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
		/// string[] folderNames = GetFolders("/pdf/");
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted parent path to examine.</param>
        /// <returns>String array of folder names.</returns>
        public static string[] GetFolders(this string path)
        {
            string[] folders = Directory.GetDirectories(path.MapPath());

            for (int i = 0; i < folders.Length; i++)
            {
                folders[i] = folders[i].Substring(folders[i].LastIndexOf("\\") + 1);
            }

            return folders;
        }

        /// <summary><![CDATA[
        /// Returns the folders within a specified folder, using full relative web paths, including the starting path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string[] folderNames = RecurseFolder("/pdf/");
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted parent path to examine.</param>
        /// <param name="includeRoot">First insert the passed path.</param>
        /// <returns>String array of fully qualified child folder names (e.g. "/pdf/", "/pdf/child1/", "/pdf/child2/", etc.).</returns>
        public static ArrayList GetWebFolders(this string path, bool includeRoot = false)
        {
            ArrayList folders = new ArrayList();
            string[] _folders = Directory.GetDirectories(path.MapPath());

            for (int i = 0; i < _folders.Length; i++)
            {
                var newPath = path.TrimEnd('/') + "/" + _folders[i].Substring(_folders[i].LastIndexOf("\\") + 1) + "/";
                folders.Add(newPath);

                folders.AddRange(GetWebFolders(newPath));
            }

            folders.Sort();

            if (includeRoot == true)
            {
                folders.Add(path.TrimEnd('/') + "/");
            }

            return folders;
        }

        /// <summary><![CDATA[
        /// Reads filenames from a directory and returns an ArrayList.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ArrayList filenames = GetFiles("/pdf", "*.pdf|*.pdfx");
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted path to the files.</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default).
        /// Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <returns>ArrayList of filenames.</returns>
        public static ArrayList GetFiles(this string path, string filter)
        {
            return GetFiles(path, filter, 0);
        }

        /// <summary><![CDATA[
        /// Determines if a file exists at a given web path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool result = FileExists("/pdf/document.pdf");
        /// ]]></code>
        /// </example>
        /// <param name="path">Path to a file (e.g. "/downloads/file.jpg").</param>
        /// <returns>true or false.</returns>
        public static bool FileExists(this string path)
        {
            return (File.Exists(path.RemoveQueryString().MapPath()));
        }

        /// <summary><![CDATA[
        /// Get the file size in bytes of a file on disk.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// Long fileSize = GetFileSize("/pdf/document.pdf");
        /// ]]></code>
        /// </example>
        /// <param name="path">Path to a file (e.g. "/downloads/file.jpg").</param>
        /// <returns>File size in bytes.</returns>
        public static long GetFileSize(this string path)
        {
            long fileSize = 0;

            if (FileExists(path))
            {
                FileInfo fi = new FileInfo(path.MapPath());
                fileSize = fi.Length;
            }

            return fileSize;
        }

        /// <summary><![CDATA[
        /// Determines if a directory exists at a given web path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool result = DirectoryExists("/pdf/");
        /// ]]></code>
        /// </example>
        /// <param name="path">Path to a directory (e.g. "/downloads/").</param>
        /// <returns>true or false.</returns>
        public static bool DirectoryExists(this string path)
        {
            return (Directory.Exists(path.MapPath()));
        }

        /// <summary><![CDATA[
        /// Create a directory at a given web path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool result = CreateDirectory("/pdf");
        /// ]]></code>
        /// </example>
        /// <param name="path">Path and new directory (e.g. "/downloads/newdir").</param>
        /// <returns>true if created, false if not.</returns>
        public static bool CreateDirectory(this string path)
        {
            bool retVal = false;

            if (!DirectoryExists(path))
            {
                DirectoryInfo DO = Directory.CreateDirectory(path.MapPath());

                retVal = DO.Exists;
            }

            return retVal;
        }

        /// <summary><![CDATA[
        /// Deletes file(s) from a directory, based on age.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedFilesCount = DeleteFiles("/pdf/", "*.tmp|*.chk", PathOptions.Path, DateTime.Now);
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted path to the files or a full path and filename to delete a single file (the later ignores any age params).</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg").</param>
        /// <param name="options">options for file inclusion (PathOptions.Hidden | PathOptions.System) deletes all files, including hidden and system files.</param>
        /// <param name="age">DateTime object; files older than this (creation date; within 1 minute) are deleted.</param>
        /// <returns>Number of files deleted successfully.</returns>
        public static int DeleteFiles(this string path, string filter, PathOptions options, System.DateTime age)
        {
            FileInfo objFI;
            string[] files;
            int result = 0;

            if (string.IsNullOrEmpty(filter)) filter = "*.*";

            string[] filespec = filter.Split('|');

            if (FileExists(path))
            {
                objFI = new FileInfo(path.MapPath());
                objFI.Delete();
                result++;
            }

            else
            {

                try
                {
                    for (int L = 0; L < filespec.Length; L++)
                    {
                        files = Directory.GetFiles(path.MapPath(), filespec[L]);

                        for (int i = 0; i < files.Length; i++)
                        {
                            objFI = new FileInfo(files[i]);

                            if (
                                    (objFI.Attributes.ToString().IndexOf("Hidden") < 0 && objFI.Attributes.ToString().IndexOf("System") < 0)
                                    ||
                                    ((int)(options & PathOptions.Hidden) != 0 && objFI.Attributes.ToString().IndexOf("Hidden") >= 0)
                                    ||
                                    ((int)(options & PathOptions.System) != 0 && objFI.Attributes.ToString().IndexOf("System") >= 0)
                                )
                            {
                                if (objFI.CreationTime.DateDiff<int>(age, DateDiffComparisonType.Minutes) > 1)
                                {
                                    objFI.Delete();
                                    result++;
                                }
                            }
                        }
                    }
                }

                catch
                {
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Deletes file(s) immediately.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedFilesCount = DeleteFiles("/pdf/", "*.tmp|*.chk", true);
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted path where the files exist.</param>
        /// <param name="fileSpec">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg").</param>
        /// <param name="includeSpecial">Set to true to deleted hidden/system files.</param>
        /// <returns>Number of files deleted successfully.</returns>
        public static int DeleteFiles(this string path, string fileSpec, bool includeSpecial)
        {
            if (includeSpecial)
            {
                return path.DeleteFiles(fileSpec, (PathOptions.Hidden | PathOptions.System), DateTime.Now);
            }

            else
            {
                return path.DeleteFiles(fileSpec, 0, DateTime.Now);
            }
        }

        /// <summary><![CDATA[
        /// Deletes file(s) immediately.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedFilesCount = DeleteFiles("/pdf/", "*.tmp|*.chk");
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-formatted path where the files exist.</param>
        /// <param name="fileSpec">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg").</param>
        /// <returns>Number of files deleted successfully.</returns>
        public static int DeleteFiles(this string path, string fileSpec)
        {
            return path.DeleteFiles(fileSpec, 0, DateTime.Now);
        }

        /// <summary><![CDATA[
        /// Deletes a single file immediately.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedFilesCount = DeleteFiles("/pdf/document.pdf");
        /// ]]></code>
        /// </example>
        /// <param name="fileSpec">Web-formatted path with file name.</param>
        /// <returns>1 on success, 0 on failure</returns>
        public static int DeleteFiles(this string fileSpec)
        {
            return fileSpec.DeleteFiles("", 0, DateTime.Now);
        }

        /// <summary><![CDATA[
        /// Creates a unique, cryptic filename (based on GUID) for use in temporary file manipulation.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string filename = MakeUniqueFilename("jpg");
        /// ]]></code>
        /// </example>
        /// <param name="ext">File extension to append to the name, without leading period.</param>
        /// <returns>Unique filename as string.</returns>
        public static string MakeUniqueFilenameFromExtension(this string ext)
        {
            string mvarFileName = string.Empty;

            Guid guid = Guid.NewGuid();
            mvarFileName = guid.ToString().Replace("-", "");
            mvarFileName += "." + ext;

            return mvarFileName;
        }

        /// <summary><![CDATA[
        /// Retrieve a file's extension, without the period.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string fileExt = GetFileExtension(filename);
        /// ]]></code>
        /// </example>
        /// <param name="fileName">File name to parse.</param>
        /// <returns>File extension as a string.</returns>
        public static string GetFileExtension(this string fileName)
        {
            string ext = string.Empty;

            int x = fileName.LastIndexOf(".");

            if (x > 0 && x < fileName.Length)
            {
                ext = fileName.Substring(x + 1);
            }

            return ext;
        }

		/// <summary><![CDATA[
		/// Retrieve a filename from a path.
		/// ]]></summary>
		/// <example>
		/// <code><![CDATA[
		/// string filename = GetFilename(filepath);
		/// ]]></code>
		/// </example>
		/// <param name="filePath">File path to parse.</param>
		/// <returns>Filename as a string.</returns>
		public static string GetFilename(this string filePath)
		{
			string filename = filePath;

			int x = filePath.LastIndexOf(Path.DirectorySeparatorChar.ToString());

			if (x < 0)
			{
				x = filePath.LastIndexOf(@"/");
			}

			if (x >= 0 && x < filePath.Length)
			{
				filename = filePath.Substring(x + 1);
			}

			return filename;
		}

		/// <summary><![CDATA[
		/// Replaces any invalid characters in a file name with underscores,
		/// returning the filtered filename.
		/// ]]></summary>
		/// <param name="fileName">File name to filter.</param>
		/// <returns>Filtered file name.</returns>
		public static string MakeValidFileName(this string fileName)
        {
            return Regex.Replace(fileName, @"[^\s\w\.-]", "_");
        }

        /// <summary><![CDATA[
        /// Use a file's modified date to generate a repeatable, URL-friendly
        /// hash for use in cache busting web file assets, like CSS and JS files.
        /// ]]></summary>
        /// <param name="filePath">Web-style file path</param>
        /// <param name="fallback">Fallback value to use if the file cannot be identified</param>
        /// <returns>A unique, repeatable, URL-friendly hash</returns>
        public static string MakeCacheBuster(this string filePath, string fallback = "")
        {
            var result = "";

            try
            {
                var webFilePath = filePath;

                if (webFilePath.Contains("?"))
                {
                    webFilePath = webFilePath.Substring(0, webFilePath.IndexOf('?'));
                }

                FileInfo fileInfo = new FileInfo(webFilePath.MapPath());
                DateTime lastModified = fileInfo.LastWriteTime;
                var size = fileInfo.Length;

                result =
                    lastModified.Year.ToString()
                    + lastModified.Month.ToString("D2")
                    + lastModified.Day.ToString("D2")
                    + lastModified.Hour.ToString("D2")
                    + lastModified.Minute.ToString("D2")
                    + lastModified.Second.ToString("D2");
            }

            catch
            {

                result = fallback;
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Convert a file path into a string that can be used as a session variable key name.
        /// ]]></summary>
        /// <param name="filePath">Web style path to use (e.g. "/images/space.gif").</param>
        /// <returns>"Carbide-Key--images-space.gif"</returns>
        public static string ConvertFilePathToKey(this string filePath)
        {
            return "Carbide-Key-" + filePath.Replace(":", "").Replace("\\", "-").Replace("/", "-").Replace(" ", "");
        }

        /// <summary><![CDATA[
        /// Compile a SCSS file or files into CSS.
        /// ]]></summary>
        /// <param name="scssInputPath">Web path to the scss input file (e.g. "/scss/application.scss").</param>
        /// <param name="outputPath">Web path to the CSS output file (e.g. "/stylesheets/application.css").</param>
        /// <param name="debugMode">Set to true for expanded output with source maps, false for compressed production CSS only</param>
        /// <param name="force">Force a rebuild</param>
        /// <returns>True if successful, false if an error occurred</returns>
        public static void BuildScss(this string scssInputPath, string outputPath, bool debugMode = false, bool force = false)
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
                if (!FileExists(outputPath))
                {
                    Debug.WriteLine("CSS file is missing, will recompile...");
                    process = true;
                }

                else
                {
                    if (debugMode && !FileExists(outputPath + ".map"))
                    {
                        Debug.WriteLine("Debug mode and CSS Map file is missing, will recompile...");
                        process = true;
                    }

                    else
                    {
                        if (HttpContext.Current.Application.KeyExists(ConvertFilePathToKey(scssInputPath)))
                        {
                            var files = (ArrayList)HttpContext.Current.Application[ConvertFilePathToKey(scssInputPath)];

                            if (files.Count > 0)
                            {
                                foreach (string file in files)
                                {
                                    var segments = file.Split('|');

                                    Debug.Write(GetFilename(segments[0]) + "... ");

                                    if (segments.Length == 2)
                                    {
                                        FileInfo fileInfo = new FileInfo(MapPath(segments[0]));
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
                    OutputPath = MapPath(outputPath),
                    SourceMapFile = outputPath + ".map",
                    InputPath = MapPath(scssInputPath)
                };

                var releaseOptions = new LibSass.Compiler.Options.SassOptions
                {
                    OutputStyle = LibSass.Compiler.Options.SassOutputStyle.Compact,
                    IncludeSourceComments = false,
                    IncludeSourceMapContents = false,
                    OutputPath = MapPath(outputPath),
                    InputPath = MapPath(scssInputPath)
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

					if (outputPath.FileExists())
                    {
                        DeleteFiles(outputPath);
                        Debug.WriteLine("Deleted " + outputPath);
                    }

                    if ((outputPath + ".map").FileExists())
                    {
                        DeleteFiles(outputPath + ".map");
                        Debug.WriteLine("Deleted " + outputPath + ".map");
                    }

                    WriteFile(outputPath, css);
                    Debug.WriteLine("Generated " + outputPath);

					if (debugMode == true)
					{
						WriteFile(outputPath + ".map", map);
                        Debug.WriteLine("Generated " + outputPath + ".map");
                    }

                    if (cssResult.IncludedFiles.Length > 0)
                    {
                        ArrayList fileList = new ArrayList();

                        foreach (var file in cssResult.IncludedFiles)
                        {
                            FileInfo fileInfo = new FileInfo(MapPath(file));
                            DateTime lastModified = fileInfo.LastWriteTime;
                            var item = file + "|" + lastModified.DateFormat(DateFormats.Utc);

                            fileList.Add(item);
                            Debug.WriteLine(item);
                        }

                        HttpContext.Current.Application[ConvertFilePathToKey(scssInputPath)] = fileList;
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
        /// <param name="scssPath">Relative web path to the SCSS files (e.g. "/scss/").</param>
        /// <param name="scssFilename">File name for the SCSS file in which to inject the partials as import statements (e.g. "application.scss").</param>
        /// <param name="partialPath">Relative web path to the folder containing the SCSS partials to read (e.g. "/scss/custom/").</param>
        public static void InjectScssPartials(string scssPath, string scssFilename, string partialPath)
        {
            try
            {
                var _scssPath = "/" + scssPath.ToLower().Trim('/') + "/";
                var _partialPath = "/" + partialPath.ToLower().Trim('/') + "/";
                _partialPath = _partialPath.Replace(_scssPath, "");
                var scss = StorageHelpers.ReadFile(_scssPath + scssFilename);
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
                                ArrayList folders = GetWebFolders(_scssPath + _partialPath, includeRoot: true);

                                foreach (var folder in folders)
                                {
                                    var _files = StorageHelpers.GetFiles(folder.ToString(), "*.scss");
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

                                    StorageHelpers.WriteFile(_scssPath + scssFilename, finalFile);

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
                Debug.WriteLine("EXCEPTION: Carbide.StorageHelpers.InjectScssPartials() - " + e.Message);
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
        public static void RunConfiguredScssBuild()
        {
            var scssPath = Config.GetKeyValue("Scss.Root", "/scss/", "Fynydd.Carbide");
            var scssPartialsPath = Config.GetKeyValue("Scss.Partials.Root", "/scss/custom/", "Fynydd.Carbide");
            var scssFilenameBase = Config.GetKeyValue("Scss.Filename.Base", "application", "Fynydd.Carbide");
            var scssOutputPath = Config.GetKeyValue("Scss.Output.Root", "/css/", "Fynydd.Carbide");

            var debugging = AppStateHelpers.IsDebugging();
            var buildScss = debugging; // Always run in debug mode

            if (debugging == false)
            {
                // Only run the check periodically on production unless the file doesn't exist

                if (FileExists(scssOutputPath + scssFilenameBase + ".css") == false)
                {
                    buildScss = true;
                }

                TemporalHelpers.TaskIntervalInit("ScssProductionBuild", Config.GetKeyValue<double>("Scss.BuildCheck.Seconds", 60 * 60 * 24, "Fynydd.Carbide"));

                if (TemporalHelpers.TaskShouldBeRun("ScssProductionBuild"))
                {
                    buildScss = true;
                }
            }

            if (buildScss == true)
            {
                if (debugging == false)
                {
                    TemporalHelpers.TaskIntervalStart("ScssProductionBuild");
                }

                StorageHelpers.InjectScssPartials(scssPath, scssFilenameBase + ".scss", scssPartialsPath);
                StorageHelpers.BuildScss(scssPath + scssFilenameBase + ".scss", scssOutputPath + scssFilenameBase + ".css", debugMode: debugging);

                if (debugging == false)
                {
                    TemporalHelpers.TaskIntervalStop("ScssProductionBuild");
                }
            }
        }

        /// <summary><![CDATA[
        /// Read an HTML embedded resource from the Carbide binary
        /// ]]></summary>
        /// <param name="filename"></param>
        /// <returns>HTML content or an empty string if not found</returns>
        public static string CarbideEmbeddedHtml(string filename)
        {
            var fileContent = "";

            try
            {
                var assembly = Assembly.GetExecutingAssembly();
                var fileName = "Fynydd.Carbide.Support.Html." + filename;

                using (Stream stream = assembly.GetManifestResourceStream(fileName))
                {
                    using (StreamReader reader = new StreamReader(stream))
                    {
                        fileContent = reader.ReadToEnd();
                    }
                }
            }

            catch { }

            var umbracoPath = Config.GetKeyValue("umbracoPath", "~/umbraco");

            fileContent = fileContent.Replace("~/umbraco", umbracoPath.TrimStart(new[] { '~' }).TrimEnd(new[] { '/' }));

            return fileContent;
        }
    }
}
