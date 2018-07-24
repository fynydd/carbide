using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Fynydd.Carbide.UnitTests
{
    [TestClass]
    public class CompressionUnitTests
    {
        [TestMethod]
        public void CompressString()
        {
            // 314 characters
            string data = "As a company, Fynydd has been a part of the developer community since 2010. Individually we've been involved with helping other developers with code and advice since the early 80s. Given our long history in that regard, we decided to create a proper home for tools and code that we want to share. This is that home.";
            byte[] compressed = data.CompressString();

            // Compresses down to 224 characters (could change in the future if the Microsoft base class changes)
            Assert.AreEqual(224, compressed.Length);
            Assert.AreEqual(data, compressed.DecompressString());
        }
    }
}
