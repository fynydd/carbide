using System;
using System.IO;
using System.IO.Compression;
using System.Text;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The Compression class contains methods for compressing and decompressing data.
    /// ]]></summary>
    public static class Compression
    {
        /// <summary><![CDATA[
        /// GZip compress a string. Only useful for strings over 300 characters in length.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string compressedVar = Compression.CompressString(stringVar);
        /// ]]></code>
        /// </example>
        /// <param name="text">String to compress.</param>
        /// <returns>A compressed string.</returns>
        public static byte[] CompressString(this string text)
        {
            byte[] buffer = Encoding.UTF8.GetBytes(text);
            MemoryStream ms = new MemoryStream();

            using (GZipStream zip = new GZipStream(ms, CompressionLevel.Optimal, true))
            {
                zip.Write(buffer, 0, buffer.Length);
            }

            ms.Position = 0;

            byte[] compressed = new byte[ms.Length];
            ms.Read(compressed, 0, compressed.Length);

            byte[] gzipBuffer = new byte[compressed.Length + 4];
            System.Buffer.BlockCopy(compressed, 0, gzipBuffer, 4, compressed.Length);
            System.Buffer.BlockCopy(BitConverter.GetBytes(buffer.Length), 0, gzipBuffer, 0, 4);
            return gzipBuffer;
        }

        /// <summary><![CDATA[
        /// GZip decompress a string compressed with CompressString().
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string decompressedVar = Compression.DecompressString(compressedVar);
        /// ]]></code>
        /// </example>
        /// <param name="gzipBuffer">Byte array to decompress.</param>
        /// <returns>A decompressed string.</returns>
        public static string DecompressString(this byte[] gzipBuffer)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                int msgLength = BitConverter.ToInt32(gzipBuffer, 0);
                ms.Write(gzipBuffer, 4, gzipBuffer.Length - 4);

                byte[] buffer = new byte[msgLength];

                ms.Position = 0;

                using (GZipStream zip = new GZipStream(ms, CompressionMode.Decompress))
                {
                    zip.Read(buffer, 0, buffer.Length);
                }

                return Encoding.UTF8.GetString(buffer);
            }
        }

        /// <summary><![CDATA[
        /// GZip compress a byte array.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// byte[] compressedVar = Compression.Compress(byteBuff);
        /// ]]></code>
        /// </example>
        /// <param name="buffer">Byte array to compress.</param>
        /// <returns>A compressed byte array.</returns>
        public static byte[] Compress(this byte[] buffer)
        {
            MemoryStream ms = new MemoryStream();
            GZipStream zip = new GZipStream(ms, CompressionLevel.Optimal, true);
            zip.Write(buffer, 0, buffer.Length);
            zip.Close();
            ms.Position = 0;

            byte[] compressed = new byte[ms.Length];
            ms.Read(compressed, 0, compressed.Length);

            byte[] gzipBuffer = new byte[compressed.Length + 4];
            Buffer.BlockCopy(compressed, 0, gzipBuffer, 4, compressed.Length);
            Buffer.BlockCopy(BitConverter.GetBytes(buffer.Length), 0, gzipBuffer, 0, 4);
            return gzipBuffer;
        }

        /// <summary><![CDATA[
        /// GZip decompress a byte array.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// byte[] decompressedVar = Compression.Decompress(byteBuff);
        /// ]]></code>
        /// </example>
        /// <param name="gzipBuffer">Byte array to decompress.</param>
        /// <returns>A decompressed byte array.</returns>
        public static byte[] Decompress(this byte[] gzipBuffer)
        {
            MemoryStream ms = new MemoryStream();
            int msgLength = BitConverter.ToInt32(gzipBuffer, 0);
            ms.Write(gzipBuffer, 4, gzipBuffer.Length - 4);

            byte[] buffer = new byte[msgLength];

            ms.Position = 0;
            GZipStream zip = new GZipStream(ms, CompressionMode.Decompress);
            zip.Read(buffer, 0, buffer.Length);

            return buffer;
        }
    }
}
