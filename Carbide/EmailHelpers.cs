using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mail;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Argentini.Carbide
{
    /// <summary>
    /// The Carbide Mailer class provides a set of methods for sending and manipulating email.
    /// </summary>
    /// <example>
    /// Make sure you add SMTP server information to your web.config file before using any email methods.
    /// In the Web.config file, only the "MailUseSsl" setting is used for the Mailer class. The other
    /// attributes are used for other classes.
    /// <code>
    /// <![CDATA[
    /// <system.net>
    ///		<mailSettings>
    ///			<smtp>
    ///				<network host="mail.server.com"
    ///				port="25"
    ///				userName="outgoing@server.com"
    ///				password="password" />
    ///			</smtp>
    ///		</mailSettings>
    ///	</system.net>
    /// ]]>
    /// </code>
    /// </example>
    public static class Mailer
    {
        #region Properties

        /// <summary>
        /// Return the version number of the class; read-only.
        /// </summary>
        /// <value>
        /// A string with the version number of the class.
        /// </value>
        public static string Version
        {
            get
            {
                return "2018.04.09A";
            }
        }

        #endregion

        #region Constants

        /// <summary>
        /// Format for email body content.
        /// </summary>
        public enum MailFormat
        {
            /// <summary>
            /// Quotable plain text format.
            /// </summary>
            PlainText,

            /// <summary>
            /// HTML format.
            /// </summary>
            Html,

            /// <summary>
            /// 7-bit plain text format.
            /// </summary>
            PlainText7Bit
        }

        #endregion

        #region Methods

        /// <summary>
        /// Send an email message with optional attachments.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// ArrayList AttachMe = new ArrayList();
        /// AttachMe.Add("/ftp/file1.pdf");
        /// AttachMe.Add("/ftp/file2.pdf");
        /// 
        /// string result = Mailer.Send(
        ///		"from@domain.com",
        ///		"John Sender",
        ///		"recipient1@domain.com,recipient2@domain.com",
        ///		"ccRecip1@domain.com,ccRecip2@domain.com",
        ///		"bccRecip1@domain.com,bccRecip2@domain.com",
        ///		"Message subject here",
        ///		"This is the message body.",
        ///		Mailer.MailFormat.PlainText,
        ///		AttachMe);
        /// </code>
        /// </example>
        /// <param name="senderAddress">From address (i.e. joesmith@party.com).</param>
        /// <param name="senderName">From name (i.e. Joe).</param>
        /// <param name="recipient">To address(es), separated by commas.</param>
        /// <param name="ccList">Comma-separated list of email addresses for carbon copies.</param>
        /// <param name="bccList">Comma-separated list of email addresses for blind carbon copies.</param>
        /// <param name="subject">Message subject.</param>
        /// <param name="body">Message body.</param>
        /// <param name="bodyFormat">MailFormat value.</param>
        /// <param name="attachments">ArrayList object with virtual paths to files OR memory streams.</param>
        /// <param name="attachmentNames">ArrayList object with filenames for memory stream attachments.</param>
        /// <returns>"SUCCESS", or an error message.</returns>
        public static string Send(string senderAddress, string senderName, string recipient, string ccList, string bccList, string subject, string body, MailFormat bodyFormat, ArrayList attachments, ArrayList attachmentNames)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

            if (string.IsNullOrEmpty(senderName))
            {
                mail.From = new MailAddress(senderAddress);
            }

            else
            {
                mail.From = new MailAddress(senderAddress, senderName);
            }

            mail.Subject = subject;
            mail.Body = body;

            foreach (string address in recipient.Split(',')) mail.To.Add(address);

            if (!string.IsNullOrEmpty(ccList))
            {
                foreach (string address in ccList.Split(',')) mail.CC.Add(address);
            }

            if (!string.IsNullOrEmpty(bccList))
            {
                foreach (string address in bccList.Split(',')) mail.Bcc.Add(address);
            }

            string result = "SUCCESS";

            AlternateView newBody = AlternateView.CreateAlternateViewFromString(
                            body,
                            Encoding.ASCII,
                            "text/plain");

            try
            {
                mail.IsBodyHtml = (bodyFormat == MailFormat.Html ? true : false);

                if (bodyFormat == MailFormat.PlainText7Bit)
                {
                    mail.Body = null;
                    newBody.TransferEncoding = TransferEncoding.SevenBit;
                    mail.AlternateViews.Add(newBody);
                }

                if (attachments != null)
                {
                    if (attachments.Count > 0)
                    {
                        for (int x = 0; x < attachments.Count; x++)
                        {
                            System.Net.Mail.Attachment data = null;

                            if (attachments[x].GetType() == typeof(string) || attachments[x].GetType() == typeof(string))
                            {
                                data = new System.Net.Mail.Attachment(HttpContext.Current.Server.MapPath((string)attachments[x]), MediaTypeNames.Application.Octet);
                                data.ContentId = attachments[x].ToString().Substring((attachments[x].ToString().LastIndexOf("/") == 0 ? 0 : attachments[x].ToString().LastIndexOf("/") + 1));
                            }

                            else if (attachments[x].GetType() == typeof(MemoryStream) && attachmentNames.Count == attachments.Count && attachmentNames[x] != null)
                            {
                                data = new System.Net.Mail.Attachment((MemoryStream)attachments[x], (string)attachmentNames[x]);
                            }

                            if (data != null)
                            {
                                mail.Attachments.Add(data);
                            }
                        }
                    }
                }

                SmtpClient smtp = new SmtpClient();

                smtp.Send(mail);

                if (newBody != null)
                {
                    newBody.Dispose();
                }

                mail.Dispose();
            }

            catch (Exception err)
            {
                result = err.ToString();
            }

            return result;
        }

        /// <summary>
        /// Send an email message with optional attachments.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// ArrayList AttachMe = new ArrayList();
        /// AttachMe.Add("/ftp/file1.pdf");
        /// AttachMe.Add("/ftp/file2.pdf");
        /// 
        /// string result = Mailer.Send(
        ///		"from@domain.com",
        ///		"John Sender",
        ///		"recipient1@domain.com,recipient2@domain.com",
        ///		"Message subject here",
        ///		"This is the message body.",
        ///		Mailer.MailFormat.PlainText,
        ///		AttachMe);
        /// </code>
        /// </example>
        /// <param name="senderAddress">From address (i.e. joesmith@party.com).</param>
        /// <param name="senderName">From name (i.e. Joe).</param>
        /// <param name="recipient">To address(es), separated by commas.</param>
        /// <param name="subject">Message subject.</param>
        /// <param name="body">Message body.</param>
        /// <param name="bodyFormat">MailFormat value.</param>
        /// <param name="attachments">ArrayList object with virtual paths to files.</param>
        /// <returns>"SUCCESS", or an error message.</returns>
        public static string Send(string senderAddress, string senderName, string recipient, string subject, string body, MailFormat bodyFormat, ArrayList attachments)
        {
            return Send(senderAddress, senderName, recipient, "", "", subject, body, bodyFormat, attachments, null);
        }

        /// <summary>
        /// Send an email message.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = Mailer.Send(
        ///		"from@domain.com",
        ///		"recipient1@domain.com,recipient2@domain.com",
        ///		"Message subject here",
        ///		"This is the message body.",
        ///		Mailer.MailFormat.PlainText);
        /// </code>
        /// </example>
        /// <param name="sender">From address (i.e. joesmith@party.com).</param>
        /// <param name="recipient">To address(es), separated by commas.</param>
        /// <param name="subject">Message subject.</param>
        /// <param name="body">Message body.</param>
        /// <param name="bodyFormat">MailFormat value.</param>
        /// <returns>"SUCCESS", or an error message.</returns>
        public static string Send(string sender, string recipient, string subject, string body, MailFormat bodyFormat)
        {
            ArrayList attachments = new ArrayList();
            return Send(sender, "", recipient, subject, body, bodyFormat, attachments);
        }

        /// <summary>
        /// Send an email message.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = Mailer.Send(
        ///		"from@domain.com",
        ///		"John Sender",
        ///		"recipient1@domain.com,recipient2@domain.com",
        ///		"Message subject here",
        ///		"This is the message body.",
        ///		Mailer.MailFormat.PlainText);
        /// </code>
        /// </example>
        /// <param name="sender">From address (i.e. joesmith@party.com).</param>
        /// <param name="senderName">From name (i.e. Joe Smith).</param>
        /// <param name="recipient">To address(es), separated by commas.</param>
        /// <param name="subject">Message subject.</param>
        /// <param name="body">Message body.</param>
        /// <param name="bodyFormat">MailFormat value.</param>
        /// <returns>"SUCCESS", or an error message.</returns>
        public static string Send(string sender, string senderName, string recipient, string subject, string body, MailFormat bodyFormat)
        {
            ArrayList attachments = new ArrayList();
            return Send(sender, senderName, recipient, subject, body, bodyFormat, attachments);
        }

        /// <summary>
        /// Send an email message.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = Mailer.Send(
        ///		"from@domain.com",
        ///		"John Sender",
        ///		"recipient1@domain.com,recipient2@domain.com",
        ///		"ccRecip1@domain.com,ccRecip2@domain.com",
        ///		"bccRecip1@domain.com,bccRecip2@domain.com",
        ///		"Message subject here",
        ///		"This is the message body.",
        ///		Mailer.MailFormat.PlainText);
        /// </code>
        /// </example>
        /// <param name="sender">From address (i.e. joesmith@party.com).</param>
        /// <param name="senderName">From name (i.e. Joe Smith).</param>
        /// <param name="recipient">To address(es), separated by commas.</param>
        /// <param name="ccList">Comma-separated list of email addresses for carbon copies.</param>
        /// <param name="bccList">Comma-separated list of email addresses for blind carbon copies.</param>
        /// <param name="subject">Message subject.</param>
        /// <param name="body">Message body.</param>
        /// <param name="bodyFormat">MailFormat value.</param>
        /// <returns>"SUCCESS", or an error message.</returns>
        public static string Send(string sender, string senderName, string recipient, string ccList, string bccList, string subject, string body, MailFormat bodyFormat)
        {
            ArrayList attachments = new ArrayList();
            return Send(sender, senderName, recipient, ccList, bccList, subject, body, bodyFormat, attachments, null);
        }

        #endregion
    }
}
