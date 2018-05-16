using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Fynydd.Carbide
{
    /// <summary>
    /// These classes provide additional form validators to your models and the client (javascript).
    /// This validator verifies a minimum file size for an upload.
    /// 
    /// <![CDATA[
    /// MODEL USAGE: [MinimumFileSizeValidator(1)]
    /// CLIENT USAGE: <script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
    /// ]]>
    /// </summary>
    public class MinimumFileSizeValidator : ValidationAttribute, IClientValidatable
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

        private string _errorMessage = "{0} can not be smaller than {1} MB";

        /// <summary> 
        /// Minimum file size in MB 
        /// </summary> 
        public double MinimumFileSize { get; private set; }

        /// <param name="minimumFileSize">MinimumFileSize file size in MB</param> 
        public MinimumFileSizeValidator(double minimumFileSize) : base()
        {
            MinimumFileSize = minimumFileSize;
        }

        public override bool IsValid(object value)
        {
            if (value == null)
            {
                return true;
            }

            if (!IsValidMinimumFileSize((value as HttpPostedFileBase).ContentLength))
            {
                ErrorMessage = String.Format(_errorMessage, "{0}", MinimumFileSize);
                return false;
            }

            return true;
        }

        public override string FormatErrorMessage(string name)
        {
            return String.Format(_errorMessage, name, MinimumFileSize);
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            var clientValidationRule = new ModelClientValidationRule()
            {
                ErrorMessage = FormatErrorMessage(metadata.GetDisplayName()),
                ValidationType = "minimumfilesize"
            };

            clientValidationRule.ValidationParameters.Add("size", MinimumFileSize);

            return new[] { clientValidationRule };
        }

        private bool IsValidMinimumFileSize(int fileSize)
        {
            return ConvertBytesToMegabytes(fileSize) >= MinimumFileSize;
        }

        private double ConvertBytesToMegabytes(int bytes)
        {
            return (bytes / 1024f) / 1024f;
        }
    }

    /// <summary>
    /// These classes provide additional form validators to your models and the client (javascript).
    /// This validator verifies a maximum file size for an upload.
    /// 
    /// <![CDATA[
    /// MODEL USAGE: [MaximumFileSizeValidator(1)]
    /// CLIENT USAGE: <script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
    /// ]]>
    /// </summary>
    public class MaximumFileSizeValidator : ValidationAttribute, IClientValidatable
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

        private string _errorMessage = "{0} can not be larger than {1} MB";

        /// <summary> 
        /// Maximum file size in MB 
        /// </summary> 
        public double MaximumFileSize { get; private set; }

        /// <param name="maximumFileSize">Maximum file size in MB</param> 
        public MaximumFileSizeValidator(double maximumFileSize)
        {
            MaximumFileSize = maximumFileSize;
        }

        public override bool IsValid(object value)
        {
            if (value == null)
            {
                return true;
            }

            if (!IsValidMaximumFileSize((value as HttpPostedFileBase).ContentLength))
            {
                ErrorMessage = String.Format(_errorMessage, "{0}", MaximumFileSize);
                return false;
            }

            return true;
        }

        public override string FormatErrorMessage(string name)
        {
            return String.Format(_errorMessage, name, MaximumFileSize);
        }

        public System.Collections.Generic.IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            var clientValidationRule = new ModelClientValidationRule()
            {
                ErrorMessage = FormatErrorMessage(metadata.GetDisplayName()),
                ValidationType = "maximumfilesize"
            };

            clientValidationRule.ValidationParameters.Add("size", MaximumFileSize);

            return new[] { clientValidationRule };
        }

        private bool IsValidMaximumFileSize(int fileSize)
        {
            return (ConvertBytesToMegabytes(fileSize) <= MaximumFileSize);
        }

        private double ConvertBytesToMegabytes(int bytes)
        {
            return (bytes / 1024f) / 1024f;
        }
    }

    /// <summary>
    /// These classes provide additional form validators to your models and the client (javascript).
    /// This validator verifies the file type for an upload.
    /// 
    /// <![CDATA[
    /// MODEL USAGE: [ValidFileTypeValidator(new string[] { "pdf", "docx" })]
    /// CLIENT USAGE: <script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
    /// ]]>
    /// </summary>
    public class ValidFileTypeValidator : ValidationAttribute, IClientValidatable
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

        private string _errorMessage = "{0} must be one of the following file types: {1}";

        /// <summary> 
        /// Valid file extentions 
        /// </summary> 
        public string[] ValidFileTypes { get; private set; }

        /// <param name="validFileTypes">Valid file extensions(without the dot)</param> 
        public ValidFileTypeValidator(params string[] validFileTypes)
        {
            ValidFileTypes = validFileTypes;
        }

        public override bool IsValid(object value)
        {
            var file = value as HttpPostedFileBase;

            if (value == null || String.IsNullOrEmpty(file.FileName))
            {
                return true;
            }

            if (ValidFileTypes != null)
            {
                var validFileTypeFound = false;

                foreach (var validFileType in ValidFileTypes)
                {
                    var fileNameParts = file.FileName.Split('.');

                    if (fileNameParts[fileNameParts.Length - 1] == validFileType)
                    {
                        validFileTypeFound = true;
                        break;
                    }
                }

                if (!validFileTypeFound)
                {
                    ErrorMessage = String.Format(_errorMessage, "{0}", ValidFileTypes.ToConcatenatedString(s => s, ","));
                    return false;
                }
            }

            return true;
        }

        public override string FormatErrorMessage(string name)
        {
            return String.Format(_errorMessage, name, ValidFileTypes.ToConcatenatedString(s => s, ","));
        }

        public System.Collections.Generic.IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            var clientValidationRule = new ModelClientValidationRule()
            {
                ErrorMessage = FormatErrorMessage(metadata.GetDisplayName()),
                ValidationType = "validfiletype"
            };

            clientValidationRule.ValidationParameters.Add("filetypes", ValidFileTypes.ToConcatenatedString(s => s, ","));

            return new[] { clientValidationRule };
        }
    }

    public class FileUploadValidator : ValidationAttribute, IClientValidatable
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

        private MinimumFileSizeValidator _minimumFileSizeValidator;
        private MaximumFileSizeValidator _maximumFileSizeValidator;
        private ValidFileTypeValidator _validFileTypeValidator;

        /// <param name="validFileTypes">Valid file extentions(without the dot)</param> 
        public FileUploadValidator(params string[] validFileTypes) : base()
        {
            _validFileTypeValidator = new ValidFileTypeValidator(validFileTypes);
        }

        /// <param name="maximumFileSize">Maximum file size in MB</param> 
        /// <param name="validFileTypes">Valid file extentions(without the dot)</param> 
        public FileUploadValidator(double maximumFileSize, params string[] validFileTypes) : base()
        {
            _maximumFileSizeValidator = new MaximumFileSizeValidator(maximumFileSize);
            _validFileTypeValidator = new ValidFileTypeValidator(validFileTypes);
        }

        /// <param name="minimumFileSize">MinimumFileSize file size in MB</param> 
        /// <param name="maximumFileSize">Maximum file size in MB</param> 
        /// <param name="validFileTypes">Valid file extentions(without the dot)</param> 
        public FileUploadValidator(double minimumFileSize, double maximumFileSize, params string[] validFileTypes) : base()
        {
            _minimumFileSizeValidator = new MinimumFileSizeValidator(minimumFileSize);
            _maximumFileSizeValidator = new MaximumFileSizeValidator(maximumFileSize);
            _validFileTypeValidator = new ValidFileTypeValidator(validFileTypes);
        }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value == null)
            {
                return ValidationResult.Success;
            }

            try
            {
                if (value.GetType() != typeof(HttpPostedFileWrapper))
                {
                    throw new InvalidOperationException("");
                }

                var errorMessage = new StringBuilder();
                var file = value as HttpPostedFileBase;

                if (_minimumFileSizeValidator != null)
                {
                    if (!_minimumFileSizeValidator.IsValid(file))
                    {
                        errorMessage.Append(String.Format("{0}. ", _minimumFileSizeValidator.FormatErrorMessage(validationContext.DisplayName)));
                    }
                }

                if (_maximumFileSizeValidator != null)
                {
                    if (!_maximumFileSizeValidator.IsValid(file))
                    {
                        errorMessage.Append(String.Format("{0}. ", _maximumFileSizeValidator.FormatErrorMessage(validationContext.DisplayName)));
                    }
                }

                if (_validFileTypeValidator != null)
                {
                    if (!_validFileTypeValidator.IsValid(file))
                    {
                        errorMessage.Append(String.Format("{0}. ", _validFileTypeValidator.FormatErrorMessage(validationContext.DisplayName)));
                    }
                }

                if (String.IsNullOrEmpty(errorMessage.ToString()))
                {
                    return ValidationResult.Success;
                }
                
                else
                {
                    return new ValidationResult(errorMessage.ToString());
                }
            }
            
            catch (Exception excp)
            {
                return new ValidationResult(excp.Message);
            }
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            var clientValidationRule = new ModelClientValidationRule()
            {
                ErrorMessage = FormatErrorMessage(metadata.GetDisplayName()),
                ValidationType = "fileuploadvalidator"
            };

            var clientvalidationmethods = new List<string>();
            var parameters = new List<string>();
            var errorMessages = new List<string>();

            if (_minimumFileSizeValidator != null)
            {
                clientvalidationmethods.Add(_minimumFileSizeValidator.GetClientValidationRules(metadata, context).First().ValidationType);
                parameters.Add(_minimumFileSizeValidator.MinimumFileSize.ToString());
                errorMessages.Add(_minimumFileSizeValidator.FormatErrorMessage(metadata.GetDisplayName()));
            }

            if (_maximumFileSizeValidator != null)
            {
                clientvalidationmethods.Add(_maximumFileSizeValidator.GetClientValidationRules(metadata, context).First().ValidationType);
                parameters.Add(_maximumFileSizeValidator.MaximumFileSize.ToString());
                errorMessages.Add(_maximumFileSizeValidator.FormatErrorMessage(metadata.GetDisplayName()));
            }

            if (_validFileTypeValidator != null)
            {
                clientvalidationmethods.Add(_validFileTypeValidator.GetClientValidationRules(metadata, context).First().ValidationType);
                parameters.Add(String.Join(",", _validFileTypeValidator.ValidFileTypes));
                errorMessages.Add(_validFileTypeValidator.FormatErrorMessage(metadata.GetDisplayName()));
            }

            clientValidationRule.ValidationParameters.Add("clientvalidationmethods", clientvalidationmethods.ToConcatenatedString(s => s, ","));
            clientValidationRule.ValidationParameters.Add("parameters", parameters.ToConcatenatedString(s => s, "|"));
            clientValidationRule.ValidationParameters.Add("errormessages", errorMessages.ToConcatenatedString(s => s, ","));

            yield return clientValidationRule;
        }

        private double ConvertBytesToMegabytes(long bytes)
        {
            return (bytes / 1024f) / 1024f;
        }
    }
}
