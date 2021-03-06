﻿using System;

namespace Fynydd.Carbide.Constants
{
    #region Base Types

    /// <summary>
    /// Determines the output format for various methods.
    /// </summary>
    public enum NumberFormats
    {
        /// <summary>
        /// Currency (#,##0.00).
        /// </summary>
        Currency,

        /// <summary>
        /// Proper (#,##0).
        /// </summary>
        Proper,

        /// <summary>
        /// 1112223333 becomes (111) 222-3333
        /// </summary>
        TelephoneFull,

        /// <summary>
        /// 1112223333 becomes 111.222.3333
        /// </summary>
        TelephoneDots,

        /// <summary>
        /// 1112223333 becomes 111-222-3333
        /// </summary>
        TelephoneHyphens
    }

    /// <summary>
    /// Determines the type of text cropping to perform.
    /// </summary>
    public enum StringCropType
    {
        /// <summary>
        /// Crop on a specific character count.
        /// </summary>
        Characters,

        /// <summary>
        /// Crop on a specific word count.
        /// </summary>
        Words
    }

    /// <summary>
    /// Types of HTML line breaking schemes
    /// </summary>
    public enum HtmlLinefeeds
    {
		/// <summary>
		/// Use paragraph tags
		/// </summary>
        Paragraphs,

		/// <summary>
		/// Use line break tags
		/// </summary>
        LineBreaks
    }

    /// <summary>
    /// Words to keep lower case when using AP Title Case,
    /// unless they are the first or last word.
    /// </summary>
    public static class Words
    {
        /// <summary>
        /// Degrees used at the end of a person's name
        /// </summary>
        public static readonly string[] NameDegrees =
        {
            "B.A.",
            "B.F.A.",
            "B.M.",
            "B.S.E.E.",
            "B.S.",
            "D.A.",
            "D.B.A.",
            "D.D.S.",
            "D.M.L.",
            "D.Min.",
            "D.P.T.",
            "Ed.D.",
            "Ed.M.",
            "J.D.",
            "M.A.",
            "M.B.A.",
            "M.Div.",
            "M.F.A.",
            "M.D.",
            "M.M.",
            "M.P.A.",
            "M.Phil.",
            "M.S.A.",
            "M.S.E.E.",
            "M.S.L.I.S.",
            "M.S.P.T.",
            "M.S.",
            "M.Th.",
            "Ph.D.",
            "R.N.",
            "S.T.M.",
            "Th.D."
        };

        /// <summary>
        /// Name prefixes used at the beginning of a person's name
        /// </summary>
        public static readonly string[] NamePrefixes =
        {
            "Rev.",
            "Reverend",
            "Hon.",
            "Honorable",
            "Dr.",
            "Doctor",
            "Pastor",
            "Rabbi",
            "Sister",
            "Fr.",
            "Father",
            "Coach",
            "Mr.",
            "Mister",
            "Mrs.",
            "Misses",
            "Ms.",
            "Miss"
        };

        /// <summary>
        /// Name suffixes used at the end of a person's name
        /// </summary>
        public static readonly string[] NameSuffixes =
        {
            "Jr.",
            "Junior",
            "Sr.",
            "Senior",
            "II",
            "2nd",
            "III",
            "3rd",
            "IV",
            "4th",
            "V",
            "5th",
            "VI",
            "6th",
            "VII",
            "7th",
            "VIII",
            "8th",
            "IX",
            "9th",
            "X",
            "10th"
        };

		/// <summary>
		/// Words to ignore when using title case
		/// </summary>
        public static readonly string[] TitleCaseIgnoreWords =
        {
            "a",
            "an",
            "and",
            "at",
            "but",
            "by",
            "for",
            "in",
            "nor",
            "of",
            "on",
            "or",
            "so",
            "the",
            "to",
            "up",
            "yet"
        };

        /// <summary>
        /// Words to ignore in searches
        /// </summary>
        public static readonly string[] SearchNoiseWords =
        {
            "a", "able", "about", "above", "abroad", "according", "accordingly", "across", "actually", "adj", "after", "afterwards", "again", "against", "ago", "ahead", "ain't", "all", "allow", "allows", "almost", "alone", "along", "alongside", "already", "also", "although", "always", "am", "amid", "amidst", "among", "amongst", "an", "and", "another", "any", "anybody", "anyhow", "anyone", "anything", "anyway", "anyways", "anywhere", "apart", "appear", "appreciate", "appropriate", "are", "aren't", "around", "as", "a's", "aside", "ask", "asking", "associated", "at", "available", "away", "awfully", 
            "b", "back", "backward", "backwards", "be", "became", "because", "become", "becomes", "becoming", "been", "before", "beforehand", "begin", "behind", "being", "believe", "below", "beside", "besides", "best", "better", "between", "beyond", "both", "brief", "but", "by", 
            "c", "came", "can", "cannot", "cant", "can't", "caption", "cause", "causes", "certain", "certainly", "changes", "clearly", "c'mon", "co", "co.", "com", "come", "comes", "concerning", "consequently", "consider", "considering", "contain", "containing", "contains", "corresponding", "could", "couldn't", "course", "c's", "currently", 
            "d", "dare", "daren't", "definitely", "described", "despite", "did", "didn't", "different", "directly", "do", "does", "doesn't", "doing", "done", "don't", "down", "downwards", "during", 
            "e", "each", "edu", "eg", "eight", "eighty", "either", "else", "elsewhere", "end", "ending", "enough", "entirely", "especially", "et", "etc", "even", "ever", "evermore", "every", "everybody", "everyone", "everything", "everywhere", "ex", "exactly", "example", "except", 
            "f", "fairly", "far", "farther", "few", "fewer", "fifth", "first", "five", "followed", "following", "follows", "for", "forever", "former", "formerly", "forth", "forward", "found", "four", "from", "further", "furthermore", 
            "g", "get", "gets", "getting", "given", "gives", "go", "goes", "going", "gone", "got", "gotten", "greetings", 
            "h", "had", "hadn't", "half", "happens", "hardly", "has", "hasn't", "have", "haven't", "having", "he", "he'd", "he'll", "hello", "help", "hence", "her", "here", "hereafter", "hereby", "herein", "here's", "hereupon", "hers", "herself", "he's", "hi", "him", "himself", "his", "hither", "hopefully", "how", "howbeit", "however", "hundred", 
            "i", "i'd", "ie", "if", "ignored", "i'll", "i'm", "immediate", "in", "inasmuch", "inc", "inc.", "indeed", "indicate", "indicated", "indicates", "inner", "inside", "insofar", "instead", "into", "inward", "is", "isn't", "it", "it'd", "it'll", "its", "it's", "itself", "i've", 
            "j", "just", 
            "k", "keep", "keeps", "kept", "know", "known", "knows", 
            "l", "last", "lately", "later", "latter", "latterly", "least", "less", "lest", "let", "let's", "like", "liked", "likely", "likewise", "little", "look", "looking", "looks", "low", "lower", "ltd", 
            "m", "made", "mainly", "make", "makes", "many", "may", "maybe", "mayn't", "me", "mean", "meantime", "meanwhile", "merely", "might", "mightn't", "mine", "minus", "miss", "more", "moreover", "most", "mostly", "mr", "mrs", "much", "must", "mustn't", "my", "myself", 
            "n", "name", "namely", "nd", "near", "nearly", "necessary", "need", "needn't", "needs", "neither", "never", "neverf", "neverless", "nevertheless", "new", "next", "nine", "ninety", "no", "nobody", "non", "none", "nonetheless", "noone", "no-one", "nor", "normally", "not", "nothing", "notwithstanding", "novel", "now", "nowhere", 
            "o", "obviously", "of", "off", "often", "oh", "ok", "okay", "old", "on", "once", "one", "ones", "one's", "only", "onto", "opposite", "or", "other", "others", "otherwise", "ought", "oughtn't", "our", "ours", "ourselves", "out", "outside", "over", "overall", "own", 
            "p", "particular", "particularly", "past", "per", "perhaps", "placed", "please", "plus", "possible", "presumably", "probably", "provided", "provides", 
            "q", "que", "quite", "qv", 
            "r", "rather", "rd", "re", "really", "reasonably", "recent", "recently", "regarding", "regardless", "regards", "relatively", "respectively", "right", "round", 
            "s", "said", "same", "saw", "say", "saying", "says", "second", "secondly", "see", "seeing", "seem", "seemed", "seeming", "seems", "seen", "self", "selves", "sensible", "sent", "serious", "seriously", "seven", "several", "shall", "shan't", "she", "she'd", "she'll", "she's", "should", "shouldn't", "since", "six", "so", "some", "somebody", "someday", "somehow", "someone", "something", "sometime", "sometimes", "somewhat", "somewhere", "soon", "sorry", "specified", "specify", "specifying", "still", "sub", "such", "sup", "sure", 
            "t", "take", "taken", "taking", "tell", "tends", "th", "than", "thank", "thanks", "thanx", "that", "that'll", "thats", "that's", "that've", "the", "their", "theirs", "them", "themselves", "then", "thence", "there", "thereafter", "thereby", "there'd", "therefore", "therein", "there'll", "there're", "theres", "there's", "thereupon", "there've", "these", "they", "they'd", "they'll", "they're", "they've", "thing", "things", "think", "third", "thirty", "this", "thorough", "thoroughly", "those", "though", "three", "through", "throughout", "thru", "thus", "till", "to", "together", "too", "took", "toward", "towards", "tried", "tries", "truly", "try", "trying", "t's", "twice", "two", 
            "u", "un", "under", "underneath", "undoing", "unfortunately", "unless", "unlike", "unlikely", "until", "unto", "up", "upon", "upwards", "us", "use", "used", "useful", "uses", "using", "usually", 
            "v", "value", "various", "versus", "very", "via", "viz", "vs", 
            "w", "want", "wants", "was", "wasn't", "way", "we", "we'd", "welcome", "well", "we'll", "went", "were", "we're", "weren't", "we've", "what", "whatever", "what'll", "what's", "what've", "when", "whence", "whenever", "where", "whereafter", "whereas", "whereby", "wherein", "where's", "whereupon", "wherever", "whether", "which", "whichever", "while", "whilst", "whither", "who", "who'd", "whoever", "whole", "who'll", "whom", "whomever", "who's", "whose", "why", "will", "willing", "wish", "with", "within", "without", "wonder", "won't", "would", "wouldn't", 
            "x", 
            "y", "yes", "yet", "you", "you'd", "you'll", "your", "you're", "yours", "yourself", "yourselves", "you've", 
            "z", "zero"
        };

        /// <summary>
        /// Words to ignore in searches
        /// </summary>
        public static readonly string[] SearchNoiseWordsAbridged =
        {
            "a", "about", "after", "all", "also", "an", "another", "any", "are", "as", "and", "at",
            "b", "be", "because", "been", "before", "being", "between", "but", "both", "by",
            "c", "came", "can", "come", "could",
            "d", "did", "do",
            "e", "each", "even",
            "f", "for", "from", "further", "furthermore",
            "g", "get", "got",
            "h", "has", "had", "he", "have", "her", "here", "him", "himself", "his", "how", "hi", "however",
            "i", "if", "in", "into", "is", "it", "its", "indeed",
            "j", "just",
            "k",
            "l", "like",
            "m", "made", "many", "me", "might", "more", "moreover", "most", "much", "must", "my",
            "n", "never", "not", "now",
            "o", "of", "on", "only", "other", "our", "out", "or", "over",
            "p",
            "q",
            "r",
            "s", "said", "same", "see", "should", "since", "she", "some", "still", "such",
            "t", "take", "than", "that", "the", "their", "them", "then", "there", "these", "therefore", "they", "this", "those", "through", "to", "too", "thus",
            "u", "under", "up",
            "v", "very",
            "w", "was", "way", "we", "well", "were", "what", "when", "where", "which", "while", "who", "will", "with", "would",
            "x",
            "y", "you", "your",
            "z"
        };
    }

    /// <summary>
    /// HTML tags
    /// </summary>
    public static class Tags
    {
        /// <summary>
        /// Dangerous (scriptable) HTML tags
        /// </summary>
        public static readonly string[] Dangerous =
        {
            "applet",
            "body",
            "embed",
            "frame",
            "script",
            "frameset",
            "html",
            "iframe",
            "img",
            "style",
            "layer",
            "link",
            "ilayer",
            "meta",
            "object"
        };
    }

    /// <summary>
    /// Characters for use in string functions.
    /// </summary>
    public static class Characters
    {
        /// <summary>
        /// Characters considered to be whitespace
        /// </summary>
        public static readonly char[] Whitespace = new char[]
        {
            '\u0009',  // CHARACTER TABULATION
		    '\u000A',  // LINE FEED
		    '\u000B',  // LINE TABULATION
		    '\u000C',  // FORM FEED
		    '\u000D',  // CARRIAGE RETURN
		    '\u0020',  // SPACE
		    '\u00A0',  // NO-BREAK SPACE
		    '\u2000',  // EN QUAD
		    '\u2001',  // EM QUAD
		    '\u2002',  // EN SPACE
		    '\u2003',  // EM SPACE
		    '\u2004',  // THREE-PER-EM SPACE
		    '\u2005',  // FOUR-PER-EM SPACE
		    '\u2006',  // SIX-PER-EM SPACE
		    '\u2007',  // FIGURE SPACE
		    '\u2008',  // PUNCTUATION SPACE
		    '\u2009',  // THIN SPACE
		    '\u200A',  // HAIR SPACE
		    '\u200B',  // ZERO WIDTH SPACE
		    '\u3000',  // IDEOGRAPHIC SPACE
		    '\uFEFF'  // ZERO WIDTH NO-BREAK SPACE
        };

        /// <summary>
        /// Characters considered to be delimitters for whole-word text searches
        /// </summary>
        public static readonly char[] WordDelimitters = new char[]
        {
            '\u0009',  // CHARACTER TABULATION
		    '\u000A',  // LINE FEED
		    '\u000B',  // LINE TABULATION
		    '\u000C',  // FORM FEED
		    '\u000D',  // CARRIAGE RETURN
		    '\u0020',  // SPACE
		    '\u00A0',  // NO-BREAK SPACE
		    '\u2000',  // EN QUAD
		    '\u2001',  // EM QUAD
		    '\u2002',  // EN SPACE
		    '\u2003',  // EM SPACE
		    '\u2004',  // THREE-PER-EM SPACE
		    '\u2005',  // FOUR-PER-EM SPACE
		    '\u2006',  // SIX-PER-EM SPACE
		    '\u2007',  // FIGURE SPACE
		    '\u2008',  // PUNCTUATION SPACE
		    '\u2009',  // THIN SPACE
		    '\u200A',  // HAIR SPACE
		    '\u200B',  // ZERO WIDTH SPACE
		    '\u3000',  // IDEOGRAPHIC SPACE
		    '\uFEFF',  // ZERO WIDTH NO-BREAK SPACE
			'!',
            '@',
            '#',
            '$',
            '%',
            '^',
            '&',
            '*',
            '(',
            ')',
            '-',
            '=',
            ',',
            '.',
            '/',
            '[',
            ']',
            '\\',
            '`',
            '<',
            '>',
            '?',
            '{',
            '}',
            '|',
            '~'
        };
    }

    #endregion

    #region Identification

	/// <summary>
	/// Constants used in geographic methods.
	/// </summary>
    public static class Geography
    {
		/// <summary>
		/// U.S. state name abbreviations
		/// </summary>
        public static readonly string[] StatesAbbreviations =
        {
            "AL",
            "AK",
            "AZ",
            "AR",
            "CA",
            "CO",
            "CT",
            "DE",
            "DC",
            "FL",
            "GA",
            "HI",
            "ID",
            "IL",
            "IN",
            "IA",
            "KS",
            "KY",
            "LA",
            "ME",
            "MD",
            "MA",
            "MI",
            "MN",
            "MS",
            "MO",
            "MT",
            "NE",
            "NV",
            "NH",
            "NJ",
            "NM",
            "NY",
            "NC",
            "ND",
            "OH",
            "OK",
            "OR",
            "PA",
            "RI",
            "SC",
            "SD",
            "TN",
            "TX",
            "UT",
            "VT",
            "VA",
            "WA",
            "WV",
            "WI",
            "WY"
        };
    }

	/// <summary>
	/// Regular expression strings.
	/// </summary>
    public static class RegularExpressions
    {
        /// <summary>
        /// Standard RFC3986 approved email addresses.
        /// </summary>
        /// <example>
        /// Allows: joe@domain.com, joe.smith@domain.com, joe.o'donnel@domain.com
        /// </example>
        public const string Email = @"^(?!^.{254})([a-zA-Z0-9_'+*$%\^&!\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9:]{2,4})+$";

        /// <summary>
        /// File size in KB, MB, GB, TB or PB.
        /// </summary>
        /// <example>
        /// Allows: 1kb, 1 KB, 15.7mb, et al.
        /// </example>
        public const string FileSize = @"^\d{1}[0-9\.]*\s?(kb|Kb|KB|mb|Mb|MB|gb|Gb|GB|tb|Tb|TB|pb|Pb|PB){1}$";

        /// <summary>
        /// Standard 5 digit U.S. zip code.
        /// </summary>
        /// <example>
        /// Allows: 12345
        /// </example>
        public const string ZipCode = @"^\d{5}$";

        /// <summary>
        /// Standard 5 digit U.S. zip code with four extra digits.
        /// </summary>
        /// <example>
        /// Allows: 12345-1234
        /// </example>
        public const string ZipCodePlusFour = @"^\d{5}((-|\s)?\d{4})$";

        /// <summary>
        /// Standard 5 digit U.S. zip code with optional four extra digits.
        /// </summary>
        /// <example>
        /// Allows: 12345-1234, 12345
        /// </example>
        public const string ZipCodePlusFourOptional = @"^\d{5}((-|\s)?\d{4})?$";

        /// <summary>
        /// Standard 2-letter state abbreviation, case insensitive.
        /// </summary>
        public const string USStateAbbreviation = @"^([Aa][LlKkSsZzRrAaEePp]|[Cc][AaOoTt]|[Dd][EeCc]|[Ff][LlMm]|[Gg][AaUu]|[Hh][Ii]|[Ii][AaDdLlNn]|[Kk][SsYy]|[Ll][Aa]|[Mm][AaDdEeHhIiNnOoPpSsTt]|[Nn][CcDdEeHhJjMmVvYy]|[Oo][HhKkRr]|[Pp][AaRrWw]|[Rr][Ii]|[Ss][CcDd]|[Tt][NnXx]|[Uu][Tt]|[Vv][AaIiTt]|[Ww][AaIiVvYy])$";

        /// <summary>
        /// Permissive US Telephone Regex. Does not allow extensions. Area code is not required.
        /// </summary>
        /// <example>
        /// Allows: 234-3433, 324-234-3433, 3242343434, (234)234-234, (234) 234-2343
        /// </example>
        public const string TelephoneUS = @"^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$";

        /// <summary>
        /// Permissive US Telephone Regex. Does not allow extensions. Area code is required.
        /// </summary>
        /// <example>
        /// Allows: 324-234-3433, 3242343434, (234)234-2343, (234) 234-2343
        /// </example>
        public const string Telephone10 = @"^\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}";

        /// <summary>
        /// This matches a url in the generic format 
        /// scheme://authority/path?query#fragment
        /// </summary>
        /// <example>
        /// Allows: http://www.yahoo.com, https://www.yahoo.com, ftp://www.yahoo.com
        /// </example>
        public const string Url = @"^(?<Protocol>\w+):\/\/(?<Domain>[\w.]+\/?)\S*$";

        /// <summary>
        /// This matches an ip address in the format xxx-xxx-xxx-xxx
        /// each group of xxx must be less than or equal to 255
        /// </summary>
        /// <example>
        /// Allows: 123.123.123.123, 192.168.1.1
        /// </example>
        public const string IPv4Address = @"^(?<First>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Second>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Third>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Fourth>2[0-4]\d|25[0-5]|[01]?\d\d?)$";

        /// <summary><![CDATA[
        /// This matches an ipv6 address in 8 16-bit words.
        /// ]]></summary>
        /// <example>
        /// Allows: 1762:0:0:0:0:B03:1:AF18, etc.
        /// </example>
        public const string IPv6Address = @"^(((?=.*(::))(?!.*\3.+\3))\3?|[0-9A-F]{1,4}:)([0-9A-F]{1,4}(\3|:\b)|\2){5}(([0-9A-F]{1,4}(\3|:\b|$)|\2){2}|(((2[0-4]|1[0-9]|[1-9])?[0-9]|25[0-5])\.?\b){4})\z";

        /// <summary>
        /// This matches a date in the format mm/dd/yy
        /// </summary>
        /// <example>
        /// Allows: 01/05/05, 12/30/99, 04/11/05
        /// Does not allow: 01/05/2000, 2/2/02
        /// </example> 
        public const string DateMMDDYY = @"^(1[0-2]|0[1-9])/(([1-2][0-9]|3[0-1]|0[1-9])/\d\d)$";

        /// <summary>
        /// This matches a date in the format m/d/yyyy. Month and day can optionally contain leading zeroes.
        /// </summary>
        /// <example>
        /// Allows: 01/05/2005, 12/30/9999, 4/1/2005
        /// </example> 
        public const string Date = @"^((1[0-2]|[1-9]|0[1-9])/([1-2][0-9]|3[0-1]|0[1-9]|[1-9])/(\d{2}|\d{4}))$";

        /// <summary>
        /// This matches a date in the format mm/yy
        /// </summary>
        /// <example>
        /// Allows: 01/05, 11/05, 04/99
        /// Does not allow: 1/05, 13/05, 00/05
        /// </example>
        public const string DateMMYY = @"^((0[1-9])|(1[0-2]))\/(\d{2})$";

        /// <summary>
        /// This matches only numbers (no decimals, commas, etc.)
        /// </summary>
        /// <example>
        /// Allows: 0, 1, 123, 4232323, 1212322
        /// </example>
        public const string Numeric = @"^([1-9]\d*)$|^0$";

        /// <summary>
        /// This matches any string with only alpha characters upper or lower case(A-Z)
        /// </summary>
        /// <example>
        /// Allows: abc, ABC, abCd, AbCd
        /// Does not allow: A C, abc!, (a,b)
        /// </example>
        public const string Alpha = @"^[a-zA-Z]+$";

        /// <summary>
        /// This matches any string with only upper case alpha character(A-Z)
        /// </summary>
        public const string UpperCase = @"^[A-Z]+$";

        /// <summary>
        /// This matches any string with only lower case alpha character(A-Z)
        /// </summary>
        public const string LowerCase = @"^[a-z]+$";

        /// <summary>
        /// Ensures the string only contains alpha-numeric characters, and
        /// not punctuation, spaces, newlines, etc.
        /// </summary>
        /// <example>
        /// Allows: ab2c, 112ABC, ab23Cd
        /// Does not allow: A C, abc!, a.a
        /// </example>
        public const string AlphaNumeric = @"^[a-zA-Z0-9]+$";

        /// <summary>
        /// Validates US Currency.  Requires $ sign.
        /// Allows for optional commas and decimal. 
        /// No leading zeros. 
        /// </summary>
        /// <example>
        /// Allows: $100,000 or $10000.00 or $10.00 or $.10 or $0 or $0.00 or $0.10 or 10,000
        /// </example>
        public const string USCurrency = @"^[\$]*(([0-9]\d*|([0-9]\d{0,2}(\,\d{3})*))(\.\d{1,2})?|(\.\d{1,2}))$|^\$[0](.00)?$";

        /// <summary>
        /// Matches major credit cards including: Visa (length 16, prefix 4);
        /// <para>Mastercard (length 16, prefix 51-55);</para>
        /// <para>Diners Club/Carte Blanche (length 14, prefix 36, 38, or 300-305);</para>
        /// <para>Discover (length 16, prefix 6011);</para>
        /// <para>American Express (length 15, prefix 34 or 37).</para>
        /// <para>Saves the card type as a named group to facilitate further validation 
        /// against a "card type" checkbox in a program.</para>
        /// <para>All 16 digit formats are grouped 4-4-4-4 with an optional hyphen 
        /// or space between each group of 4 digits.</para>
        /// <para>The American Express format is grouped 4-6-5 with an optional hyphen or 
        /// space between each group of digits.</para>
        /// <para>Formatting characters must be consistant, i.e. if two groups are separated by a hyphen, 
        /// all groups must be separated by a hyphen for a match to occur.</para>
        /// </summary>
        public const string ValidCreditCardNumber = @"^(?:(?<Visa>4\d{3})|(?<Mastercard>5[1-5]\d{2})|(?<Discover>6011)|(?<DinersClub>(?:3[68]\d{2})|(?:30[0-5]\d))|(?<AmericanExpress>3[47]\d{2}))([ -]?)(?(DinersClub)(?:\d{6}\1\d{4})|(?(AmericanExpress)(?:\d{6}\1\d{5})|(?:\d{4}\1\d{4}\1\d{4})))$";

        /// <summary>
        /// Matches social security in the following format xxx-xx-xxxx
        /// where x is a number
        /// </summary>
        /// <example>
        /// Allows: 123-45-6789, 232-432-1212
        /// </example>
        public const string SocialSecurityNumber = @"^\d{3}-\d{2}-\d{4}$";

        /// <summary>
        /// Matches x,x where x is a name, spaces are only allowed between comma and name
        /// </summary>
        /// <example>
        /// Allows: christophersen,eric; christophersen, eric
        /// Not allowed: christophersen ,eric;
        /// </example>
        public const string FullNameWithComma = @"^[a-zA-Z]+,\s?[a-zA-Z]+$";

        /// <summary>
        /// Matches time of day. Leading zeroes are ignored.
        /// </summary>
        /// <example>
        /// Allows: 01:15am, 10:15 AM, etc.
        /// </example>
        public const string Time = @"^((0?[1-9]|1[012]):[0-5]\d(\ {0,}[AaPp][Mm]))$";

        /// <summary>
        /// Matches time of day in military format.
        /// </summary>
        /// <example>
        /// Allows: 00:15, 23:45, et al.
        /// </example>
        public const string TimeMilitary = @"^((([0][0-2])|([1][0-9])|([2][0-3])):[0-5][0-9])$";

        /// <summary>
        /// Matches 3 digits for an area code
        /// </summary>
        /// <example>
        /// Allows: any 3 digits
        /// </example>
        public const string AreaCode = @"^\d\d\d$";

        /// <summary>
        /// Matches a domain name.
        /// </summary>
        /// <example>
        /// Allows: site.com, site.com:8080, http://www.site.com, et al.
        /// </example>
        public const string DomainName = @"^([a-zA-Z\:/]*[a-zA-Z0-9-_]\.[a-zA-Z][a-zA-Z][a-zA-Z0-9\?\=&#_\-/\.\:]*[^\.\s])$";

        /// <summary>
        /// Matches a strong password format. Must have 8-64 characters, and at least one lower case, one upper case, one digit, and one special character.
        /// Special characters include: ~!@#$%^&amp;*()_+=[{]};:&lt;&gt;|./?,-
        /// </summary>
        public const string PasswordAndLength = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\(\)_+=\[{\]};:<>|./?,-])\S{8,64}$";

        /// <summary>
        /// Matches a strong password format. Must have at least one lower case, one upper case, one digit, and one special character.
        /// Special characters include: ~!@#$%^&amp;*()_+=[{]};:&lt;&gt;|./?,-
        /// </summary>
        public const string Password = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\(\)_+=\[{\]};:<>|./?,-])\S{4,}$";
    }

    /// <summary>
    /// Regex validation options for various methods.
    /// </summary>
    public enum ValidationOptions
    {
        /// <summary>
        /// Validate only the length of the string.
        /// </summary>
        Length,

        /// <summary>
        /// Validate as an E-mail address
        /// </summary>
        Email,

        /// <summary>
        /// Validate as a list of e-mail addresses. Addresses can be separated with ",", "|", ";", "/", or spaces.
        /// </summary>
        EmailList,

        /// <summary>
        /// Validate as a numeric value.
        /// </summary>
        Number,

        /// <summary>
        /// Validate as a pure number; no commas, periods, or non-numeric characters.
        /// </summary>
        PureNumber,

        /// <summary>
        /// Validate as a number which is greater than zero.
        /// </summary>
        NonZero,

        /// <summary>
        /// Validate as currency.
        /// </summary>
        Currency,

        /// <summary>
        /// Validate as a date.
        /// </summary>
        Date,

        /// <summary>
        /// Validate as time of day.
        /// </summary>
        Time,

        /// <summary>
        /// Validate as a telephone number. Allows: 234-3433, 324-234-3433, 3242343434, (234)234-234, (234) 234-2343.
        /// </summary>
        Telephone,

        /// <summary>
        /// Validate as a telephone number. Area code is required. Allows: 324-234-3433, 3242343434, (234)234-234, (234) 234-2343.
        /// </summary>
        Telephone10,

        /// <summary>
        /// Validate as a credit card number.
        /// <para>Matches major credit cards including: Visa (length 16, prefix 4);</para>
        /// <para>Mastercard (length 16, prefix 51-55);</para>
        /// <para>Diners Club/Carte Blanche (length 14, prefix 36, 38, or 300-305);</para>
        /// <para>Discover (length 16, prefix 6011);</para>
        /// <para>American Express (length 15, prefix 34 or 37).</para>
        /// <para>Saves the card type as a named group to facilitate further validation 
        /// against a "card type" checkbox in a program.</para>
        /// <para>All 16 digit formats are grouped 4-4-4-4 with an optional hyphen 
        /// or space between each group of 4 digits.</para>
        /// <para>The American Express format is grouped 4-6-5 with an optional hyphen or 
        /// space between each group of digits.</para>
        /// <para>Formatting characters must be consistant, i.e. if two groups are separated by a hyphen, 
        /// all groups must be separated by a hyphen for a match to occur.</para>
        /// </summary>
        CreditCard,

        /// <summary>
        /// Validate as a U.S. 5-digit zip code.
        /// </summary>
        ZipCode,

        /// <summary>
        /// Validate as a URL. Allows: http://www.yahoo.com, https://www.yahoo.com, ftp://www.yahoo.com.
        /// </summary>
        Url,

        /// <summary>
        /// Validate as an IPv4 address. Allows: 123.123.123.123, 192.168.1.1.
        /// </summary>
        IPv4Address,

        /// <summary>
        /// Validate as a social security number. Allows: 123-45-6789, 232-432-1212.
        /// </summary>
        Ssn,

        /// <summary>
        /// Validate as domain name. Allows: site.com, site.com:8080, http://www.site.com, et al.
        /// </summary>
        Domain,

        /// <summary>
        /// Validate as first and last name.
        /// <para>Allows: christophersen,eric; christophersen, eric.</para>
        /// <para>Not allowed: christophersen ,eric.</para>
        /// </summary>
        FullNameWithComma,

        /// <summary>
        /// Validate a 2-letter abbreviation as a valid state in the U.S.
        /// </summary>
        USStateAbbreviation
    }

    #endregion

    #region Temporal

    /// <summary>
    /// Enumeration used in the DateDiff method to specify what date/time increment to use.
    /// </summary>
    public enum DateDiffComparisonType
    {
        /// <summary>
        /// Minutes (fractional).
        /// </summary>
        Minutes,

        /// <summary>
        /// Hours (fractional).
        /// </summary>
        Hours,

        /// <summary>
        /// Seconds (fractional).
        /// </summary>
        Seconds,

        /// <summary>
        /// CPU ticks (fractional).
        /// </summary>
        Ticks,

        /// <summary>
        /// Milliseconds (fractional).
        /// </summary>
        Milliseconds,

        /// <summary>
        /// Years (fractional).
        /// </summary>
        Years,

        /// <summary>
        /// Quarters (fractional).
        /// </summary>
        Quarters,

        /// <summary>
        /// Days (fractional).
        /// </summary>
        Days,

        /// <summary>
        /// Months (fractional).
        /// </summary>
        Months,

        /// <summary>
        /// Days (whole number; ignores time).
        /// Result is exclusive (e.g. 1/1/2008 and 1/7/2008 returns 6).
        /// </summary>
        DaysWhole,

        /// <summary>
        /// Age in Years (whole number, takes leap year into account, many options - see CalculateAge for more details).
        /// Takes Leap Year into account: with a 2/29/2000 birthday, if today is 2/28/2011 age is 10, if today is 3/1/2011 age is 11.
        /// </summary>
        Age
    }

    /// <summary>
    /// Enumeration used with the DateFormat method, specifying the format of the output date.
    /// </summary>
    public enum DateFormats
    {
        /// <summary>
        /// 12-APR-2018
        /// </summary>
        European,

        /// <summary>
        /// 2007-12-20
        /// </summary>
        Sortable,

        /// <summary>
        /// 12/20/2007
        /// </summary>
        Slashes,

        /// <summary>
        /// 12.20.2007
        /// </summary>
        Dots,

        /// <summary>
        /// Friday; December 20, 2007
        /// </summary>
        Full,

        /// <summary>
        /// Friday; December 20
        /// </summary>
        Daily,

        /// <summary>
        /// Dec 1, 2007
        /// </summary>
        Tidy,

        /// <summary>
        /// Friday
        /// </summary>
        Weekday,

        /// <summary>
        /// Fri
        /// </summary>
        WeekdayShort,

        /// <summary>
        /// December
        /// </summary>
        Month,

        /// <summary>
        /// Dec
        /// </summary>
        MonthShort,

        /// <summary>
        /// 12/2007
        /// </summary>
        Corporate,

        /// <summary>
        /// December 20, 2007
        /// </summary>
        PressRelease,

        /// <summary>
        /// 12-20-2007
        /// </summary>
        Standard,

        /// <summary>
        /// 2007-12-20T09:45:24Z
        /// </summary>
        Rss,

		/// <summary>
		/// 2007-12-20T09:45:24Z
		/// </summary>
		Utc,

		/// <summary>
		/// Fri-Dec-20-2007
		/// </summary>
		AbbreviatedFull,

        /// <summary>
        /// "X minutes ago", "X hours ago", "yesterday", "X days ago", "a week ago", or "on m/d/yyyy"
        /// </summary>
        Friendly,

        /// <summary>
        /// No dates, only abstractions based on the current date and time;
        /// "X minutes ago", "X hours ago", "yesterday", "X days ago", "a week ago", "a month ago", "x months ago", "a year ago", "almost 2 years ago", etc.
        /// </summary>
        Abstract
    }

    /// <summary>
    /// Enumeration used to format times of day with the TimeFormat method.
    /// </summary>
    public enum TimeFormats
    {
        /// <summary>
        /// 10:23PM
        /// </summary>
        Standard,

        /// <summary>
        /// 15:30:00
        /// </summary>
        SqlMilitary,

        /// <summary>
        /// 15:30
        /// </summary>
        Military
    }

    /// <summary>
    /// Enumeration used to define date intervals for the DateRange method.
    /// </summary>
    [Flags]
    public enum DateRangeOptions : byte
    {
        /// <summary>
        /// Weeks
        /// </summary>
        Week = 1,

        /// <summary>
        /// Months
        /// </summary>
        Month = 2,

        /// <summary>
        /// Quarters
        /// </summary>
        Quarter = 4,

        /// <summary>
        /// Years
        /// </summary>
        Year = 5
    }

    /// <summary>
    /// Struct used to define the return value format for the DateRange method.
    /// </summary>
    public struct DateRangeStruct
    {
        /// <summary>
        /// Start Date is the first element.
        /// </summary>
        public DateTime startDate;

        /// <summary>
        /// End Date is the second element.
        /// </summary>
        public DateTime endDate;
    }

    #endregion

    #region Storage

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

    #region Email

    /// <summary>
    /// Format for email body content.
    /// </summary>
    public enum EmailFormat
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

    /// <summary>
    /// Email header items
    /// </summary>
    public static class EmailHeader
    {
        /// <summary>
        /// Email header properties
        /// </summary>
        public static readonly string[] Properties = {

            "x-mailer:",
            "x-rcpt-to:",
            "x-uidl:",
            "content-transfer-encoding:",
            "content-type:",
            "mime-version:",
            "x-sender:",
            "bcc:",
            "cc:",
            "x-receiver:"
        };
    }

    #endregion

    #region HTTP

    /// <summary>
    /// Enumeration used with the GetWebPage method.
    /// </summary>
    public enum GetWebPageMethod
    {
        /// <summary>
        /// Http GET operation.
        /// </summary>
        Get,

        /// <summary>
        /// Http POST operation.
        /// </summary>
        Post
    };

    #endregion

    #region RestHelper

    /// <summary>
    /// Types of REST requests
    /// </summary>
    public enum RequestTypeEnum
    {
        /// <summary>
        /// Does a get against the source.
        /// </summary>
        GET,
        /// <summary>
        /// Does a post against the source.
        /// </summary>
        POST,
        /// <summary>
        /// Does a put against the soruce
        /// </summary>
        PUT,
        /// <summary>
        /// Does a patch against the soruce
        /// </summary>
        PATCH,
        /// <summary>
        /// Does a delete against the soruce
        /// </summary>
        DELETE
    }

    /// <summary>
    /// Types of request and response
    /// </summary>
    public enum RequestFormatEnum
    {
        /// <summary>
        /// JSON
        /// </summary>
        JSON,
        /// <summary>
        /// XML
        /// </summary>
        XML,
        /// <summary>
        /// HTML
        /// </summary>
        HTML
    }

    #endregion

    #region Security

    /// <summary>
    /// LogonSessionType for LogonUser method.
    /// </summary>
    public enum LogonSessionType : int
    {
        /// <summary>
        /// Interactive authentication.
        /// </summary>
        Interactive = 2,

        /// <summary>
        /// Network authentication.
        /// </summary>
        Network,

        /// <summary>
        /// Batch authentication.
        /// </summary>
        Batch,

        /// <summary>
        /// Service authentication.
        /// </summary>
        Service,

        /// <summary>
        /// Network authentication using clear text.
        /// </summary>
        NetworkCleartext = 8,

        /// <summary>
        /// New Credentials.
        /// </summary>
        NewCredentials
    }

    /// <summary>
    /// Logon provider enum for LogonUser method.
    /// </summary>
    public enum LogonProvider : int
    {
        /// <summary>
        /// Default platform.
        /// </summary>
        Default = 0, // default for platform (use this!)

        /// <summary>
        /// Windows NT 3.5 style.
        /// </summary>
        WinNT35,     // sends smoke signals to authority

        /// <summary>
        /// Windows NT 4.0 style.
        /// </summary>
        WinNT40,     // uses NTLM

        /// <summary>
        /// Windows 2000 style using Kerberos or NTLM.
        /// </summary>
        WinNT50      // negotiates Kerberos or NTLM
    }

    #endregion

    #region SEO

    /// <summary><![CDATA[
    /// SEO metadata options
    /// ]]></summary>
    public static class Metadata
    {
        /// <summary><![CDATA[
        /// Meta tag to prevent page indexing
        /// ]]></summary>
        public static string DoNotIndex = @"<meta name=""robots"" content=""noindex,nofollow"">
";
        /// <summary><![CDATA[
        /// Meta tag to prevent browser page caching
        /// ]]></summary>
        public static string DoNotCache = @"<meta http-equiv=""CACHE-CONTROL"" content=""NO-CACHE"">
<meta http-equiv=""PRAGMA"" content=""NO-CACHE"">
";
    }

    #endregion

}
