using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Various helper methods for base data types.
    /// ]]></summary>
    public static class Objects
    {
        /// <summary>
        /// Perform a deep copy of an object.
        /// </summary>
        /// <typeparam name="T">The type of object being copied.</typeparam>
        /// <param name="source">The object instance to copy</param>
        /// <returns>The copied object</returns>
        public static T DeepCopy<T>(this T source)
        {
            if (!typeof(T).IsSerializable)
            {
                throw new ArgumentException("The type must be serializable.", "source");
            }

            if (source == null)
            {
                return default(T);
            }

            IFormatter formatter = new BinaryFormatter();
            Stream stream = new MemoryStream();

            using (stream)
            {
                formatter.Serialize(stream, source);
                stream.Seek(0, SeekOrigin.Begin);
                return (T)formatter.Deserialize(stream);
            }
        }

        /// <summary>
        /// Randomize the values in a given array.
        /// <example>
        /// <code>
        ///	Int32[] values = { 1, 2, 3, 4, 5 };
        /// Int32[] randomized = values.RandomizeArray();
        /// </code>
        /// </example>
        /// </summary>
        /// <typeparam name="T">Allows for randomizing arrays of different data types.</typeparam>
        /// <param name="array">Variable array to randomize</param>
        /// <returns>Nothing. Passed array is randomized directly</returns>
        public static T[] RandomizeArray<T>(this T[] array)
        {
            if (array.Length > 0)
            {
                Random rng = new Random((int)DateTime.Now.Ticks);
                T[] randomized = new T[array.Length];
                randomized = array.DeepCopy<T[]>();

                int n = array.Length;

                while (n > 1)
                {
                    int k = rng.Next(n--);
                    T temp = randomized[n];
                    randomized[n] = randomized[k];
                    randomized[k] = temp;
                }

                return randomized;
            }

            else
            {
                T[] randomized = new T[0];

                return randomized;
            }
        }

        /// <summary>
        /// Creates a string from the sequence by concatenating the result
        /// of the specified string selector function for each element.
        /// Concatenates the strings with no delimitter.
        /// </summary>
        /// <param name="source">The source IEnumerable object</param>
        /// <param name="stringSelector">Abstraction for the individual string objects</param>
        public static string ToConcatenatedString<T>(
            this IEnumerable<T> source,
            Func<T, string> stringSelector)
        {
            return ToConcatenatedString(source, stringSelector, String.Empty);
        }

        /// <summary>
        /// Creates a string from the sequence by concatenating the result
        /// of the specified string selector function for each element.
        /// Concatenates the string with a specified delimitter.
        /// </summary>
        /// <param name="source">The source IEnumerable object</param>
        /// <param name="stringSelector">Abstraction for the individual string objects</param>
        /// <param name="delimitter">The string which separates each concatenated item</param>
        public static string ToConcatenatedString<T>(
            this IEnumerable<T> source,
            Func<T, string> stringSelector,
            string delimitter)
        {
            var b = new StringBuilder();
            bool needsSeparator = false;

            foreach (var item in source)
            {
                if (needsSeparator)
                {
                    b.Append(delimitter);
                }

                b.Append(stringSelector(item));
                needsSeparator = true;
            }

            return b.ToString();
        }

        /// <summary>
        /// Convert an object to a byte array.
        /// </summary>
        /// <param name="obj">Object to convert</param>
        /// <returns>Byte array</returns>
        public static byte[] ToObjectByteArray<T>(this T obj)
        {
            byte[] result = null;

#pragma warning disable RECS0017 // Possible compare of value type with 'null'
            if (obj != null)
#pragma warning restore RECS0017 // Possible compare of value type with 'null'
            {
                BinaryFormatter bf = new BinaryFormatter();

                using (MemoryStream ms = new MemoryStream())
                {
                    bf.Serialize(ms, obj);
                    result = ms.ToArray();
                }
            }

            return result;
        }

        /// <summary>
        /// Convert a byte array back into an object.
        /// </summary>
        /// <param name="data">Byte array to convert into an object</param>
        /// <returns>Object from byte array</returns>
        public static T FromObjectByteArray<T>(this byte[] data)
        {
            if (data == null)
            {
                return default(T);
            }

            else
            {
                BinaryFormatter bf = new BinaryFormatter();

                using (MemoryStream ms = new MemoryStream(data))
                {
                    object obj = bf.Deserialize(ms);
                    return (T)obj;
                }
            }
        }
    }
}
