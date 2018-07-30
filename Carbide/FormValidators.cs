using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// These classes provide additional form validators to your models and the client (javascript).
    /// This validator verifies a minimum file size for an upload.
    /// 
    /// MODEL USAGE: [MinimumFileSizeValidator(1)]
    /// CLIENT USAGE: <script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
    /// ]]></summary>
    public class MinimumFileSizeValidator : ValidationAttribute, IClientValidatable
    {
        private string _errorMessage = "{0} can not be smaller than {1} MB";

        /// <summary><![CDATA[ 
        /// Minimum file size in MB 
        /// ]]></summary> 
        public double MinimumFileSize { get; private set; }

        /// <param name="minimumFileSize">MinimumFileSize file size in MB</param> 
        public MinimumFileSizeValidator(double minimumFileSize) : base()
        {
            MinimumFileSize = minimumFileSize;
        }

        /// <summary><![CDATA[
        /// Is a valid minimum file size.
        /// ]]></summary>
        /// <param name="value"></param>
        /// <returns></returns>
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

        /// <summary><![CDATA[
        /// Format error message
        /// ]]></summary>
        /// <param name="name">Field name</param>
        /// <returns>Formatted error message</returns>
        public override string FormatErrorMessage(string name)
        {
            return String.Format(_errorMessage, name, MinimumFileSize);
        }

        /// <summary><![CDATA[
        /// Get validation rules
        /// ]]></summary>
        /// <param name="metadata">Model metadata</param>
        /// <param name="context">Controller context</param>
        /// <returns>Enumeration of validation rules</returns>
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

    /// <summary><![CDATA[
    /// These classes provide additional form validators to your models and the client (javascript).
    /// This validator verifies a maximum file size for an upload.
    /// 
    /// MODEL USAGE: [MaximumFileSizeValidator(1)]
    /// CLIENT USAGE: <script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
    /// ]]></summary>
    public class MaximumFileSizeValidator : ValidationAttribute, IClientValidatable
    {
        #region Properties

        /// <summary><![CDATA[
        /// Return the version number of the class; read-only.
        /// ]]></summary>
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

        /// <summary><![CDATA[ 
        /// Maximum file size in MB 
        /// ]]></summary> 
        public double MaximumFileSize { get; private set; }

        /// <param name="maximumFileSize">Maximum file size in MB</param> 
        public MaximumFileSizeValidator(double maximumFileSize)
        {
            MaximumFileSize = maximumFileSize;
        }

        /// <summary><![CDATA[
        /// Maximum file length is valid
        /// ]]></summary>
        /// <param name="value">Posted file</param>
        /// <returns>True if at or below maximum file size</returns>
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

        /// <summary><![CDATA[
        /// Format error message
        /// ]]></summary>
        /// <param name="name">Field name</param>
        /// <returns>Formatted error message</returns>
        public override string FormatErrorMessage(string name)
        {
            return String.Format(_errorMessage, name, MaximumFileSize);
        }

        /// <summary><![CDATA[
        /// Get validation rules
        /// ]]></summary>
        /// <param name="metadata">Model metadata</param>
        /// <param name="context">Controller context</param>
        /// <returns>Enumeration of validation rules</returns>
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

    /// <summary><![CDATA[
    /// These classes provide additional form validators to your models and the client (javascript).
    /// This validator verifies the file type for an upload.
    /// 
    /// MODEL USAGE: [ValidFileTypeValidator(new string[] { "pdf", "docx" })]
    /// CLIENT USAGE: <script src="@Html.Raw(Url.Content("~/umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers"))"></script>
    /// ]]></summary>
    public class ValidFileTypeValidator : ValidationAttribute, IClientValidatable
    {
        private string _errorMessage = "{0} must be one of the following file types: {1}";

        /// <summary><![CDATA[ 
        /// Valid file extentions 
        /// ]]></summary> 
        public string[] ValidFileTypes { get; private set; }

        /// <param name="validFileTypes">Valid file extensions(without the dot)</param> 
        public ValidFileTypeValidator(params string[] validFileTypes)
        {
            ValidFileTypes = validFileTypes;
        }

        /// <summary><![CDATA[
        /// File type is valid
        /// ]]></summary>
        /// <param name="value">Posted file</param>
        /// <returns>True if file type is valid</returns>
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

        /// <summary><![CDATA[
        /// Format error message
        /// ]]></summary>
        /// <param name="name">Field name</param>
        /// <returns>Formatted error message</returns>
        public override string FormatErrorMessage(string name)
        {
            return String.Format(_errorMessage, name, ValidFileTypes.ToConcatenatedString(s => s, ","));
        }

        /// <summary><![CDATA[
        /// Get validation rules
        /// ]]></summary>
        /// <param name="metadata">Model metadata</param>
        /// <param name="context">Controller context</param>
        /// <returns>Enumeration of validation rules</returns>
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

    /// <summary><![CDATA[
    /// File upload validator support
    /// ]]></summary>
    public class FileUploadValidator : ValidationAttribute, IClientValidatable
    {
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

        /// <summary><![CDATA[
        /// Uploaded file is valid
        /// ]]></summary>
        /// <param name="value">Posted file</param>
        /// <param name="validationContext">Validation context</param>
        /// <returns>True if file is valid</returns>
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

        /// <summary><![CDATA[
        /// Get file validation rules
        /// ]]></summary>
        /// <param name="metadata">Model metadata</param>
        /// <param name="context">Controller context</param>
        /// <returns>Enumerable of validation rules</returns>
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
