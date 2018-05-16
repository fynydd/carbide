using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Management;
using System.Text.RegularExpressions;
using System.Web;

using SharpScss;

namespace Argentini.Carbide
{
    /// <summary>
    /// The StorageHelpers class contains methods and properties for performing or evaluating disk and file operations.
    /// </summary>
    public static class StorageHelpers
    {
        #region Properties

        /// <summary>
        /// Return the version number of the class; read-only.
        /// </summary>
        /// <value>
        /// A string with the version number of the class.
        /// </value>
        public static String Version
        {
            get
            {
                return "2018.04.09A";
            }
        }

        #endregion

        #region Constants

        /// <summary>
        /// The PathOptions enumeration is used to specify file attributes, like "hidden", "system", et al.
        /// </summary>
        [Flags]
        public enum PathOptions : byte
        {
            /// <summary>
            /// Normal files.
            /// </summary>
            Path = 1,

            /// <summary>
            /// Hidden files.
            /// </summary>
            Hidden = 2,

            /// <summary>
            /// System files.
            /// </summary>
            System = 4
        }

        #endregion

        #region Methods

        /// <summary>
        /// Deletes a directory, and any files and subdirectories it contains.
        /// Directory passed is in standard web form (e.g. "/temp").
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = StorageHelpers.DeleteDirectory("/temp/uploads");
        /// </code>
        /// </example>
        /// <param name="directory">Directory to delete (as "/temp"). Passing an empty string will delete the current working directory!</param>
        /// <returns>Empty string on success, or a string with an error message.</returns>
        public static string DeleteDirectory(string directory)
        {
            if (directory.SafeToString().Length < 1)
            {
                return ("You did not specify a directory to delete.");
            }

            else
            {
                try
                {
                    string webdir = StorageHelpers.MapPath(directory);

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

        /// <summary>
        /// Reads the contents of a text file.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string fileContents = StorageHelpers.ReadFile("/content/file.txt");
        /// </code>
        /// </example>
        /// <param name="filename">Web-formatted path and file name to read.</param>
        /// <returns>String with file contents.</returns>
        public static string ReadFile(string filename)
        {
            string inn = "";

            try
            {
                string fn = StorageHelpers.MapPath(filename);

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

        /// <summary>
        /// Writes a string to a text file.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = StorageHelpers.WriteFile("/documents/file.txt", contentString);
        /// </code>
        /// </example>
        /// <param name="filename">Web-formatted path and file name to save.</param>
        /// <param name="content">String to save into file.</param>
        /// <returns>Empty String if successful, error message string on failure.</returns>
        public static string WriteFile(string filename, string content)
        {
            try
            {
                string fn = StorageHelpers.MapPath(filename);

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

        /// <summary>
        /// Reads filenames from a directory and returns an ArrayList.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// ArrayList filenames = StorageHelpers.GetFiles("/pdf", "*.pdf|*.pdfx", Carbide.StorageHelpers.PathOptions.Path);
        /// </code>
        /// </example>
        /// <param name="path">Web-formatted path to the files.</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default).
        /// Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <param name="options">options for returned files inclusion, et al.
        /// (e.g. (PathOptions.Hidden | PathOptions.System | PathOptions.Path) returns all files,
        /// including hidden and system files, and the filename includes the full path).</param>
        /// <returns>ArrayList of filenames.</returns>
        public static ArrayList GetFiles(string path, string filter, PathOptions options)
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
                    files = System.IO.Directory.GetFiles(StorageHelpers.MapPath(path), filespec[L]);

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

        /// <summary>
        /// Reads directory names from a given path and returns a string array.
        /// </summary>
        /// <example>
        /// <code>
		/// using Argentini.Carbide;
		/// ...
		/// string[] folderNames = StorageHelpers.GetFolders("/pdf/");
        /// </code>
        /// </example>
        /// <param name="path">Web-formatted parent path to examine.</param>
        /// <returns>String array of folder names.</returns>
        public static string[] GetFolders(string path)
        {
            string[] folders = System.IO.Directory.GetDirectories(StorageHelpers.MapPath(path));

            for (int i = 0; i < folders.Length; i++)
            {
                folders[i] = folders[i].Substring(folders[i].LastIndexOf("\\") + 1);
            }

            return folders;
        }

        /// <summary>
        /// Reads filenames from a directory and returns an ArrayList.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// ArrayList filenames = StorageHelpers.GetFiles("/pdf", "*.pdf|*.pdfx");
        /// </code>
        /// </example>
        /// <param name="path">Web-formatted path to the files.</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default).
        /// Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <returns>ArrayList of filenames.</returns>
        public static ArrayList GetFiles(string path, string filter)
        {
            return GetFiles(path, filter, 0);
        }

        /// <summary>
        /// Transforms relative path to exact path for web and console apps.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string realPath = StorageHelpers.MapPath("/pdf/document.pdf");
        /// </code>
        /// </example>
        /// <param name="path">Web-style path to a file (e.g. "/downloads/file.jpg").</param>
        /// <returns>C:\files\downloads\file.jpg</returns>
        public static string MapPath(string path)
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

        /// <summary>
        /// Determines if a file exists at a given web path.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// bool result = StorageHelpers.FileExists("/pdf/document.pdf");
        /// </code>
        /// </example>
        /// <param name="path">Path to a file (e.g. "/downloads/file.jpg").</param>
        /// <returns>true or false.</returns>
        public static bool FileExists(string path)
        {
            return (System.IO.File.Exists(StorageHelpers.MapPath(path)));
        }

        /// <summary>
        /// Get the file size in bytes of a file on disk.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// Long fileSize = StorageHelpers.GetFileSize("/pdf/document.pdf");
        /// </code>
        /// </example>
        /// <param name="path">Path to a file (e.g. "/downloads/file.jpg").</param>
        /// <returns>File size in bytes.</returns>
        public static long GetFileSize(string path)
        {
            long fileSize = 0;

            if (FileExists(path))
            {
                FileInfo fi = new FileInfo(StorageHelpers.MapPath(path));
                fileSize = fi.Length;
            }

            return fileSize;
        }

        /// <summary>
        /// Determines if a directory exists at a given web path.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// bool result = StorageHelpers.DirectoryExists("/pdf/");
        /// </code>
        /// </example>
        /// <param name="path">Path to a directory (e.g. "/downloads/").</param>
        /// <returns>true or false.</returns>
        public static bool DirectoryExists(string path)
        {
            return (System.IO.Directory.Exists(StorageHelpers.MapPath(path)));
        }

        /// <summary>
        /// Create a directory at a given web path.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// bool result = StorageHelpers.CreateDirectory("/pdf");
        /// </code>
        /// </example>
        /// <param name="path">Path and new directory (e.g. "/downloads/newdir").</param>
        /// <returns>true if created, false if not.</returns>
        public static bool CreateDirectory(string path)
        {
            bool retVal = false;

            if (!DirectoryExists(path))
            {
                DirectoryInfo DO = System.IO.Directory.CreateDirectory(StorageHelpers.MapPath(path));

                retVal = DO.Exists;
            }

            return retVal;
        }

        /// <summary>
        /// Deletes file(s) from a directory, based on age.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// int deletedFilesCount = StorageHelpers.DeleteFiles("/pdf/", "*.tmp|*.chk", Carbide.StorageHelpers.PathOptions.Path, DateTime.Now);
        /// </code>
        /// </example>
        /// <param name="path">Web-formatted path to the files or a full path and filename to delete a single file (the later ignores any age params).</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg").</param>
        /// <param name="options">options for file inclusion (PathOptions.Hidden | PathOptions.System) deletes all files, including hidden and system files.</param>
        /// <param name="age">DateTime object; files older than this (creation date; within 1 minute) are deleted.</param>
        /// <returns>Number of files deleted successfully.</returns>
        public static int DeleteFiles(string path, string filter, PathOptions options, System.DateTime age)
        {
            FileInfo objFI;
            string[] files;
            int result = 0;

            if (string.IsNullOrEmpty(filter)) filter = "*.*";

            string[] filespec = filter.Split('|');

            if (FileExists(path))
            {
                objFI = new System.IO.FileInfo(StorageHelpers.MapPath(path));
                objFI.Delete();
                result++;
            }

            else
            {

                try
                {
                    for (int L = 0; L < filespec.Length; L++)
                    {
                        files = System.IO.Directory.GetFiles(StorageHelpers.MapPath(path), filespec[L]);

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
                                if (TemporalHelpers.DateDiff(TemporalHelpers.DateDiffComparisonType.Minutes, objFI.CreationTime, age) > 1)
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

        /// <summary>
        /// Deletes file(s) immediately.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// int deletedFilesCount = StorageHelpers.DeleteFiles("/pdf/", "*.tmp|*.chk", true);
        /// </code>
        /// </example>
        /// <param name="path">Web-formatted path where the files exist.</param>
        /// <param name="fileSpec">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg").</param>
        /// <param name="includeSpecial">Set to true to deleted hidden/system files.</param>
        /// <returns>Number of files deleted successfully.</returns>
        public static int DeleteFiles(string path, string fileSpec, bool includeSpecial)
        {
            if (includeSpecial)
            {
                return DeleteFiles(path, fileSpec, (PathOptions.Hidden | PathOptions.System), System.DateTime.Now);
            }

            else
            {
                return DeleteFiles(path, fileSpec, 0, System.DateTime.Now);
            }
        }

        /// <summary>
        /// Deletes file(s) immediately.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// int deletedFilesCount = StorageHelpers.DeleteFiles("/pdf/", "*.tmp|*.chk");
        /// </code>
        /// </example>
        /// <param name="path">Web-formatted path where the files exist.</param>
        /// <param name="fileSpec">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg").</param>
        /// <returns>Number of files deleted successfully.</returns>
        public static int DeleteFiles(string path, string fileSpec)
        {
            return DeleteFiles(path, fileSpec, 0, System.DateTime.Now);
        }

        /// <summary>
        /// Deletes a single file immediately.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// int deletedFilesCount = StorageHelpers.DeleteFiles("/pdf/document.pdf");
        /// </code>
        /// </example>
        /// <param name="fileSpec">Web-formatted path with file name.</param>
        /// <returns>1 on success, 0 on failure</returns>
        public static int DeleteFiles(string fileSpec)
        {
            return DeleteFiles(fileSpec, "", 0, System.DateTime.Now);
        }

        /// <summary>
        /// Creates a unique, cryptic filename (based on GUID) for use in temporary file manipulation.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string filename = StorageHelpers.MakeUniqueFilename("jpg");
        /// </code>
        /// </example>
        /// <param name="ext">File extension to append to the name, without leading period.</param>
        /// <returns>Unique filename as string.</returns>
        public static string MakeUniqueFilename(string ext)
        {
            string mvarFileName = string.Empty;

            Guid guid = Guid.NewGuid();
            mvarFileName = guid.ToString().Replace("-", "");
            mvarFileName += "." + ext;

            return mvarFileName;
        }

        /// <summary>
        /// Retrieve a file's extension, without the period.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string fileExt = StorageHelpers.GetFileExtension(filename);
        /// </code>
        /// </example>
        /// <param name="fileName">File name to parse.</param>
        /// <returns>File extension as a string.</returns>
        public static string GetFileExtension(string fileName)
        {
            string ext = string.Empty;

            int x = fileName.LastIndexOf(".");

            if (x > 0 && x < fileName.Length)
            {
                ext = fileName.Substring(x + 1);
            }

            return ext;
        }

        /// <summary>
        /// Retrieve a filename from a path.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string filename = StorageHelpers.GetFilename(filepath);
        /// </code>
        /// </example>
        /// <param name="fileName">File path to parse.</param>
        /// <returns>Filename as a string.</returns>
        public static string GetFilename(string filePath)
        {
            string filename = string.Empty;

            int x = filePath.LastIndexOf(@"\");

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

        /// <summary>
        /// Replaces any invalid characters in a file name with underscores,
        /// returning the filtered filename.
        /// </summary>
        /// <param name="fileName">File name to filter.</param>
        /// <returns>Filtered file name.</returns>
        public static string MakeValidFileName(string fileName)
        {
            return Regex.Replace(fileName, @"[^\s\w\.-]", "_");
        }

        /// <summary>
        /// Use a file's modified date to generate a repeatable, URL-friendly
        /// hash for use in cache busting web file assets, like CSS and JS files.
        /// </summary>
        /// <param name="filePath">Web-style file path</param>
        /// <param name="fallback">Fallback value to use if the file cannot be identified</param>
        /// <returns>A unique, repeatable, URL-friendly hash</returns>
        public static string MakeCacheBuster(string filePath, string fallback = "")
        {
            var result = "";

            try
            {
                var webFilePath = filePath;

                if (webFilePath.Contains("?"))
                {
                    webFilePath = webFilePath.Substring(0, webFilePath.IndexOf('?'));
                }

                FileInfo fileInfo = new FileInfo(StorageHelpers.MapPath(webFilePath));
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

            catch { 
                
                result = fallback;
            }

            return result;
        }

        /// <summary>
        /// Convert a file path into a string that can be used as a session variable key name.
        /// </summary>
        /// <param name="filePath">Web style path to use (e.g. "/images/space.gif").</param>
        /// <returns>"Carbide-Key--images-space.gif"</returns>
        public static string ConvertFilePathToKey(string filePath)
        {
            return "Carbide-Key-" + filePath.Replace(":", "").Replace("\\", "").Replace("/", "").Replace(" ", "");
        }

        /// <summary>
        /// Compile a SCSS file or files into CSS.
        /// </summary>
        /// <param name="scssInputPath">Web path to the scss input file (e.g. "/scss/application.scss").</param>
        /// <param name="outputPath">Web path to the CSS output file (e.g. "/stylesheets/application.css").</param>
        /// <param name="debugMode">Set to true for expanded output with source maps, false for compressed production CSS only</param>
        /// <param name="force">Force a rebuild</param>
        /// <returns>True if successful, false if an error occurred</returns>
        public static void BuildScss(string scssInputPath, string outputPath, bool debugMode = false, bool force = false)
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
                                foreach(string file in files)
                                {
                                    var segments = file.Split('|');

                                    Debug.Write(GetFilename(segments[0]) + "... ");

                                    if (segments.Length == 2)
                                    {
                                        FileInfo fileInfo = new FileInfo(MapPath(segments[0]));
                                        DateTime lastModified = fileInfo.LastWriteTime;

                                        if (segments[1] != TemporalHelpers.DateFormat(lastModified, TemporalHelpers.DateFormats.Rss))
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
                var debugOptions = new ScssOptions {

                    OutputStyle = ScssOutputStyle.Expanded,
                    SourceComments = true,
                    GenerateSourceMap = true,
                    OutputFile = MapPath(outputPath)
                };

                var releaseOptions = new ScssOptions {

                    OutputStyle = ScssOutputStyle.Compressed,
                    SourceComments = false,
                    GenerateSourceMap = false,
                    OutputFile = MapPath(outputPath)
                };

                try
                {
                    ScssResult css;

                    if (debugMode)
                    {
                        css = Scss.ConvertFileToCss(MapPath(scssInputPath), debugOptions);

                        DeleteFiles(outputPath);
                        DeleteFiles(outputPath + ".map");
                        Debug.WriteLine("Deleted " + outputPath + " and " + outputPath + ".map");

                        WriteFile(outputPath, css.Css);
                        WriteFile(outputPath + ".map", css.SourceMap);
                        Debug.WriteLine("Generated " + outputPath + " and " + outputPath + ".map");

                    }

                    else
                    {
                        css = Scss.ConvertFileToCss(MapPath(scssInputPath), releaseOptions);

                        DeleteFiles(outputPath);
                        DeleteFiles(outputPath + ".map");
                        Debug.WriteLine("Deleted " + outputPath + " and " + outputPath + ".map");

                        WriteFile(outputPath, css.Css);
                        WriteFile(outputPath + ".map", css.SourceMap);
                        Debug.WriteLine("Generated " + outputPath + " and " + outputPath + ".map");
                    }

                    if (css.IncludedFiles.Count > 0)
                    {
                        ArrayList fileList = new ArrayList();

                        foreach(var file in css.IncludedFiles)
                        {
                            FileInfo fileInfo = new FileInfo(MapPath(file));
                            DateTime lastModified = fileInfo.LastWriteTime;
                            var item = file + "|" + TemporalHelpers.DateFormat(lastModified, TemporalHelpers.DateFormats.Rss);

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

                catch (ScssException e)
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

        #endregion
    }
}