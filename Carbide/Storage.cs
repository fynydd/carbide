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
    /// Various helper methods for using files and folders.
    /// ]]></summary>
    public static class Storage
    {
        /// <summary><![CDATA[
        /// Transforms web-style relative path to physical path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string realPath = relativePath.MapPath();
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-style path to a file (e.g. "/downloads/file.jpg")</param>
        /// <returns>C:\files\downloads\file.jpg</returns>
        public static string MapPath(this UmbracoContext umbCtx, string path)
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
                    filename = umbCtx.HttpContext.Server.MapPath(path);
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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="directory">Directory to delete (as "/temp"). Passing an empty string will delete the current working directory!</param>
        /// <returns>Empty string on success, or a string with an error message</returns>
        public static string DeleteDirectory(this UmbracoContext umbCtx, string directory)
        {
            if (directory.SafeToString().Length < 1)
            {
                return ("You did not specify a directory to delete.");
            }

            else
            {
                try
                {
                    string webdir = umbCtx.MapPath(directory);

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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="filename">Web-formatted path and file name to read</param>
        /// <returns>String with file contents</returns>
        public static string ReadFile(this UmbracoContext umbCtx, string filename)
        {
            string inn = "";

            try
            {
                string fn = umbCtx.MapPath(filename.RemoveQueryString());

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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="filename">Web-formatted path and file name to save</param>
        /// <param name="content">String to save into file</param>
        /// <returns>Empty String if successful, error message string on failure</returns>
        public static string WriteFile(this UmbracoContext umbCtx, string filename, string content)
        {
            try
            {
                string fn = umbCtx.MapPath(filename.RemoveQueryString());

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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted path to the files</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default).
        /// Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <param name="options">options for returned files inclusion, et al.
        /// (e.g. (PathOptions.Hidden | PathOptions.System | PathOptions.Path) returns all files,
        /// including hidden and system files, and the filename includes the full path)</param>
        /// <returns>ArrayList of filenames</returns>
        public static ArrayList GetFiles(this UmbracoContext umbCtx, string path, string filter, PathOptions options)
        {
            ArrayList fileArray = new ArrayList();
            FileInfo objFI;
            string[] files;

            if (string.IsNullOrEmpty(filter))
            {
                filter = "*.*";
            }

            string[] filespec = filter.Split('|');

            try
            {
                for (int L = 0; L < filespec.Length; L++)
                {
                    files = System.IO.Directory.GetFiles(umbCtx.MapPath(path), filespec[L]);

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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted parent path to examine</param>
        /// <returns>String array of folder names</returns>
        public static string[] GetFolders(this UmbracoContext umbCtx, string path)
        {
            string[] folders = Directory.GetDirectories(umbCtx.MapPath(path));

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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted parent path to examine</param>
        /// <param name="includeRoot">First insert the passed path</param>
        /// <returns>String array of fully qualified child folder names (e.g. "/pdf/", "/pdf/child1/", "/pdf/child2/", etc.)</returns>
        public static ArrayList GetWebFolders(this UmbracoContext umbCtx, string path, bool includeRoot = false)
        {
            ArrayList folders = new ArrayList();
            string[] _folders = Directory.GetDirectories(umbCtx.MapPath(path));

            for (int i = 0; i < _folders.Length; i++)
            {
                var newPath = path.TrimEnd('/') + "/" + _folders[i].Substring(_folders[i].LastIndexOf("\\") + 1) + "/";
                folders.Add(newPath);

                folders.AddRange(umbCtx.GetWebFolders(newPath));
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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted path to the files</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default).
        /// Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <returns>ArrayList of filenames</returns>
        public static ArrayList GetFiles(this UmbracoContext umbCtx, string path, string filter)
        {
            return umbCtx.GetFiles(path, filter, 0);
        }

        /// <summary><![CDATA[
        /// Determines if a file exists at a given web path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool result = FileExists("/pdf/document.pdf");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Path to a file (e.g. "/downloads/file.jpg")</param>
        public static bool FileExists(this UmbracoContext umbCtx, string path)
        {
            return (File.Exists(umbCtx.MapPath(path.RemoveQueryString())));
        }

        /// <summary><![CDATA[
        /// Get the file size in bytes of a file on disk.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// Long fileSize = GetFileSize("/pdf/document.pdf");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Path to a file (e.g. "/downloads/file.jpg")</param>
        public static long GetFileSize(this UmbracoContext umbCtx, string path)
        {
            long fileSize = 0;

            if (umbCtx.FileExists(path))
            {
                FileInfo fi = new FileInfo(umbCtx.MapPath(path));
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
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Path to a directory (e.g. "/downloads/")</param>
        public static bool DirectoryExists(this UmbracoContext umbCtx, string path)
        {
            return (Directory.Exists(umbCtx.MapPath(path)));
        }

        /// <summary><![CDATA[
        /// Create a directory at a given web path.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool result = CreateDirectory("/pdf");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Path and new directory (e.g. "/downloads/newdir")</param>
        public static bool CreateDirectory(this UmbracoContext umbCtx, string path)
        {
            bool retVal = false;

            if (!umbCtx.DirectoryExists(path))
            {
                DirectoryInfo DO = Directory.CreateDirectory(umbCtx.MapPath(path));

                retVal = DO.Exists;
            }

            return retVal;
        }

        /// <summary><![CDATA[
        /// Deletes file(s) from a directory, based on age.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedStorageCount = DeleteFiles("/pdf/", "*.tmp|*.chk", PathOptions.Path, DateTime.Now);
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted path to the files or a full path and filename to delete a single file (the later ignores any age params)</param>
        /// <param name="filter">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <param name="options">options for file inclusion (PathOptions.Hidden | PathOptions.System) deletes all files, including hidden and system files</param>
        /// <param name="age">DateTime object; files older than this (creation date; within 1 minute) are deleted</param>
        public static int DeleteFiles(this UmbracoContext umbCtx, string path, string filter, PathOptions options, System.DateTime age)
        {
            FileInfo objFI;
            string[] files;
            int result = 0;

            if (string.IsNullOrEmpty(filter))
            {
                filter = "*.*";
            }

            string[] filespec = filter.Split('|');

            if (umbCtx.FileExists(path))
            {
                objFI = new FileInfo(umbCtx.MapPath(path));
                objFI.Delete();
                result++;
            }

            else
            {

                try
                {
                    for (int L = 0; L < filespec.Length; L++)
                    {
                        files = Directory.GetFiles(umbCtx.MapPath(path), filespec[L]);

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
        /// int deletedStorageCount = DeleteFiles("/pdf/", "*.tmp|*.chk", true);
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted path where the files exist</param>
        /// <param name="fileSpec">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <param name="includeSpecial">Set to true to deleted hidden/system files</param>
        /// <returns>Number of files deleted successfully</returns>
        public static int DeleteFiles(this UmbracoContext umbCtx, string path, string fileSpec, bool includeSpecial)
        {
            if (includeSpecial)
            {
                return umbCtx.DeleteFiles(path, fileSpec, (PathOptions.Hidden | PathOptions.System), DateTime.Now);
            }

            else
            {
                return umbCtx.DeleteFiles(path, fileSpec, 0, DateTime.Now);
            }
        }

        /// <summary><![CDATA[
        /// Deletes file(s) immediately.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedStorageCount = DeleteFiles("/pdf/", "*.tmp|*.chk");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted path where the files exist</param>
        /// <param name="fileSpec">String filename wildcard (*.* is assumed by default). Separate multiple filespecs with a bar character (e.g. "*.gif|*.jpg")</param>
        /// <returns>Number of files deleted successfully</returns>
        public static int DeleteFiles(this UmbracoContext umbCtx, string path, string fileSpec)
        {
            return umbCtx.DeleteFiles(path, fileSpec, 0, DateTime.Now);
        }

        /// <summary><![CDATA[
        /// Deletes a single file immediately.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// int deletedStorageCount = DeleteFiles("/pdf/document.pdf");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="path">Web-formatted path with file name</param>
        /// <returns>1 on success, 0 on failure</returns>
        public static int DeleteFiles(this UmbracoContext umbCtx, string path)
        {
            return umbCtx.DeleteFiles(path, "", 0, DateTime.Now);
        }

        /// <summary><![CDATA[
        /// Creates a unique, cryptic filename (based on GUID) for use in temporary file manipulation.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string filename = MakeUniqueFilename("jpg");
        /// ]]></code>
        /// </example>
        /// <param name="ext">File extension to append to the name, without leading period</param>
        /// <returns>Unique filename as string</returns>
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
        /// <param name="fileName">File name to parse</param>
        /// <returns>File extension as a string</returns>
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
		/// <param name="filePath">File path to parse</param>
		/// <returns>Filename as a string</returns>
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
		/// <param name="fileName">File name to filter</param>
		/// <returns>Filtered file name</returns>
		public static string MakeValidFileName(this string fileName)
        {
            return Regex.Replace(fileName, @"[^\s\w\.-]", "_");
        }

        /// <summary><![CDATA[
        /// Use a file's modified date to generate a repeatable, URL-friendly
        /// hash for use in cache busting web file assets, like CSS and JS files.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="filePath">Web-style file path</param>
        /// <param name="fallback">Fallback value to use if the file cannot be identified</param>
        /// <returns>A unique, repeatable, URL-friendly hash</returns>
        public static string MakeCacheBuster(this UmbracoContext umbCtx, string filePath, string fallback = "")
        {
            var result = "";

            try
            {
                var webFilePath = filePath;

                if (webFilePath.Contains("?"))
                {
                    webFilePath = webFilePath.Substring(0, webFilePath.IndexOf('?'));
                }

                FileInfo fileInfo = new FileInfo(umbCtx.MapPath(webFilePath));
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
        /// <param name="filePath">Web style path to use (e.g. "/images/space.gif")</param>
        /// <returns>"Carbide-Key--images-space.gif"</returns>
        public static string ConvertFilePathToKey(this string filePath)
        {
            return "Carbide-Key-" + filePath.Replace(":", "").Replace("\\", "-").Replace("/", "-").Replace(" ", "");
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
