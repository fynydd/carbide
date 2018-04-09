using System;
using System.Collections;
using System.IO;
using System.Management;
using System.Text.RegularExpressions;
using System.Web;

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
        /// Reads directory names from a gievn path and returns a string array.
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
                ext = fileName.Substring(fileName.Length - x - 1);
            }

            return ext;
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

        #endregion
    }
}