using System;
using System.Drawing;
using System.Drawing.Imaging;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Various helper methods for processing images.
    /// ]]></summary>
    public static class Imaging
    {
        /// <summary><![CDATA[
        /// Resize an image on disk, constraining proportions
        /// (handles BMP, JPEG, GIF, TIFF, PNG); maintains
        /// transparency of PNG images. Filenames determine
        /// file types used automatically.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// Rectangle cropArea = new Rectangle(0, 0, 0, 0);
        /// string finalPath = Imaging.ResizeImage("/portfolio/picture01.jpg", 80, 320, 0, "/portfolio/temp/upload.jpg", cropArea);
        /// ]]></code>
        /// </example>
        /// <param name="imageSavePath">Web-style path with filename for the final resized image.</param>
        /// <param name="quality">Quality setting from 1 to 100 (for JPEG only; 0 for other types).</param>
        /// <param name="maxWidth">How wide to make the image, constraining the aspect ratio (0 ignore this param).
        /// Only one "Max" property can be used at a time - set the other to a zero.</param>
        /// <param name="maxHeight">How tall to make the image, constraining the aspect ratio (0 ignore this param).</param>
        /// <param name="path">Web-style path to the source image file.</param>
        /// <param name="cropArea">Rectangle object (left, top, width, height) to crop image. Leave out for no cropping.</param>
        /// <returns>The web path to the saved file on success, empty string on failure.</returns>
        public static string ResizeImage(string imageSavePath, int quality, int maxWidth, int maxHeight, string path, Rectangle cropArea)
        {
            maxWidth = System.Math.Abs(maxWidth);
            maxHeight = System.Math.Abs(maxHeight);

            if (maxWidth == 0 && maxHeight == 0) return (string.Empty);

            int intNewWidth = 0;
            int intNewHeight = 0;
            System.Drawing.Image image;

            if (imageSavePath.Length > 2)
            {
                if (imageSavePath.Substring(1, 1) != ":" && !imageSavePath.StartsWith(@"\\"))
                {
                    imageSavePath = imageSavePath.MapPath();
                }
            }

            string newPath = path;

            if (newPath.Length > 2)
            {
                if (newPath.Substring(1, 1) != ":" && !newPath.StartsWith(@"\\"))
                {
                    newPath = newPath.MapPath();
                }
            }

            try
            {
                if (cropArea.Top == 0 && cropArea.Bottom == 0 && cropArea.Width == 0 && cropArea.Height == 0)
                {
                    image = System.Drawing.Image.FromFile(newPath);
                }
                else
                {
                    image = CropImage(path, cropArea.Width, cropArea.Height, cropArea.Left, cropArea.Top);
                }

                int intOldWidth = image.Width;
                int intOldHeight = image.Height;

                if (maxWidth > 0)
                {
                    if (intOldWidth != maxWidth)
                    {
                        //set new width and height	
                        double dblCoef = (double)maxWidth / (double)intOldWidth;

                        intNewWidth = Convert.ToInt32(dblCoef * intOldWidth);
                        intNewHeight = Convert.ToInt32(dblCoef * intOldHeight);
                    }
                    else
                    {
                        intNewWidth = intOldWidth;
                        intNewHeight = intOldHeight;
                    }
                }

                if (maxHeight > 0)
                {
                    if (intOldHeight != maxHeight)
                    {
                        //set new width and height	
                        double dblCoef = (double)maxHeight / (double)intOldHeight;

                        intNewWidth = Convert.ToInt32(dblCoef * intOldWidth);
                        intNewHeight = Convert.ToInt32(dblCoef * intOldHeight);
                    }

                    else
                    {
                        intNewWidth = intOldWidth;
                        intNewHeight = intOldHeight;
                    }
                }

                System.Drawing.Image thumbnail = new Bitmap(intNewWidth, intNewHeight, PixelFormat.Format32bppPArgb);
                System.Drawing.Graphics graphic = System.Drawing.Graphics.FromImage(thumbnail);

                graphic.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceOver;
                graphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                graphic.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                graphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                graphic.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;
                graphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                graphic.DrawImage(image, 0, 0, thumbnail.Width, thumbnail.Height);

                ImageCodecInfo[] info = ImageCodecInfo.GetImageEncoders();

                int encoder = 1;

                switch (imageSavePath.Right(4).ToLower())
                {
                    case ".bmp": encoder = 0; break;
                    case ".jpg": encoder = 1; break;
                    case ".gif": encoder = 2; break;
                    case ".tif": encoder = 3; break;
                    case ".png": encoder = 4; break;
                }

                switch (imageSavePath.Right(5).ToLower())
                {
                    case ".jpeg": encoder = 1; break;
                    case ".tiff": encoder = 3; break;
                }

                if (encoder != 1) quality = 100;

                EncoderParameters encoderParameters;
                encoderParameters = new EncoderParameters(1);
                encoderParameters.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, (long)quality);

                thumbnail.Save(imageSavePath, info[encoder], encoderParameters);

                image.Dispose();
                thumbnail.Dispose();
                graphic.Dispose();
                encoderParameters.Dispose();

                return (imageSavePath);
            }

            catch (Exception e)
            {
                return (e.ToString());
            }
        }

        /// <summary><![CDATA[
        /// Resize an image on disk, constraining proportions
        /// (handles BMP, JPEG, GIF, TIFF, PNG); maintains
        /// transparency of PNG images. Filenames determine
        /// file types used automatically.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string finalPath = Imaging.ResizeImage("/portfolio/picture01.jpg", 80, 320, 0, "/portfolio/temp/upload.jpg");
        /// ]]></code>
        /// </example>
        /// <param name="imageSavePath">Web-style path with filename for the final resized image.</param>
        /// <param name="quality">Quality setting from 1 to 100 (for JPEG only; 0 for other types).</param>
        /// <param name="maxWidth">How wide to make the image, constraining the aspect ratio (0 ignore this param).
        /// Only one "Max" property can be used at a time - set the other to a zero.</param>
        /// <param name="maxHeight">How tall to make the image, constraining the aspect ratio (0 ignore this param).</param>
        /// <param name="path">Web-style path to the source image file.</param>
        /// <returns>The web path to the saved file on success, empty string on failure.</returns>
        public static string ResizeImage(string imageSavePath, int quality, int maxWidth, int maxHeight, string path)
        {
            Rectangle cropArea = new Rectangle(0, 0, 0, 0);
            return ResizeImage(imageSavePath, quality, maxWidth, maxHeight, path, cropArea);
        }

        /// <summary><![CDATA[
        /// Load an image from disk and crop, returning cropped System.Drawing.Image object.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// Image croppedImage = Imaging.CropImage("/portfolio/picture01jpg", 320, 0, 0, 0);
        /// ]]></code>
        /// </example>
        /// <param name="path">Web-style path to the source image file.</param>
        /// <param name="Width">Crop width.</param>
        /// <param name="Height">Crop height.</param>
        /// <param name="Left">Left pixel location for starting point.</param>
        /// <param name="Top">Top pixel location for starting point.</param>
        /// <returns>System.Drawing.Image object cropped.</returns>
        static System.Drawing.Image CropImage(string path, int Width, int Height, int Left, int Top)
        {
            string newPath = path;

            if (newPath.Length > 2)
            {
                if (newPath.Substring(1, 1) != ":" && !newPath.StartsWith(@"\\"))
                {
                    newPath = newPath.MapPath();
                }
            }

            System.Drawing.Image imgPhoto = System.Drawing.Image.FromFile(newPath);
            int sourceWidth = imgPhoto.Width;
            int sourceHeight = imgPhoto.Height;

            Bitmap bmPhoto = new Bitmap(Width, Height, PixelFormat.Format32bppPArgb);

            bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

            Graphics grPhoto = Graphics.FromImage(bmPhoto);
            grPhoto.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceOver;
            grPhoto.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            grPhoto.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
            grPhoto.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            grPhoto.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

            grPhoto.DrawImage(imgPhoto,
                new Rectangle(0, 0, Width, Height),
                new Rectangle(Left, Top, Width, Height),
                GraphicsUnit.Pixel);

            imgPhoto.Dispose();
            grPhoto.Dispose();

            return bmPhoto;
        }
    }
}
