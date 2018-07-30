using System;

namespace Fynydd.Carbide.Constants
{
    #region Base Types

    /// <summary><![CDATA[
    /// Determines the output format for various methods.
    /// ]]></summary>
    public enum NumberFormats
    {
        /// <summary><![CDATA[
        /// Currency (#,##0.00).
        /// ]]></summary>
        Currency,

        /// <summary><![CDATA[
        /// Disk storage (#,##0.#kb/mb/gb/tb/pb)
        /// ]]></summary>
        DiskStorage,

        /// <summary><![CDATA[
        /// 1112223333 becomes (111) 222-3333
        /// ]]></summary>
        TelephoneFull,

        /// <summary><![CDATA[
        /// 1112223333 becomes 111.222.3333
        /// ]]></summary>
        TelephoneDots,

        /// <summary><![CDATA[
        /// 1112223333 becomes 111-222-3333
        /// ]]></summary>
        TelephoneHyphens
    }

    /// <summary><![CDATA[
    /// Determines the type of text cropping to perform.
    /// ]]></summary>
    public enum StringCropType
    {
        /// <summary><![CDATA[
        /// Crop on a specific character count.
        /// ]]></summary>
        Characters,

        /// <summary><![CDATA[
        /// Crop on a specific word count.
        /// ]]></summary>
        Words
    }

    /// <summary><![CDATA[
    /// Types of HTML line breaking schemes
    /// ]]></summary>
    public enum HtmlLinefeeds
    {
        /// <summary><![CDATA[
        /// Use <p> tags
        /// ]]></summary>
        Paragraphs,

        /// <summary><![CDATA[
        /// Use <br /> tags
        /// ]]></summary>
        LineBreaks
    }

    /// <summary><![CDATA[
    /// Words to keep lower case when using AP Title Case,
    /// unless they are the first or last word.
    /// ]]></summary>
    public static class Words
    {
        /// <summary><![CDATA[
        /// Words to keep lower case in titles
        /// ]]></summary>
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
    }

    /// <summary><![CDATA[
    /// HTML tags
    /// ]]></summary>
    public static class Tags
    {
        /// <summary><![CDATA[
        /// Dangerous (scriptable) HTML tags
        /// ]]></summary>
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

    /// <summary><![CDATA[
    /// Characters for use in string functions.
    /// ]]></summary>
    public static class Characters
    {
        /// <summary><![CDATA[
        /// Characters considered to be whitespace
        /// ]]></summary>
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
    }

    #endregion

    #region Identification

    /// <summary><![CDATA[
    /// Geography constants, like U.S. state abbreviations
    /// ]]></summary>
    public static class Geography
    {
        /// <summary><![CDATA[
        /// U.S. state abbreviations
        /// ]]></summary>
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

    /// <summary><![CDATA[
    /// Regular expression constants
    /// ]]></summary>
    public static class RegularExpressions
    {
        /// <summary><![CDATA[
        /// Standard RFC3986 approved email addresses.
        /// ]]></summary>
        /// <example>
        /// Allows: joe@domain.com, joe.smith@domain.com, joe.o'donnel@domain.com
        /// </example>
        public const string Email = @"^(?!^.{254})([a-zA-Z0-9_'+*$%\^&!\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9:]{2,4})+$";

        /// <summary><![CDATA[
        /// File size in KB, MB, GB, TB or PB.
        /// ]]></summary>
        /// <example>
        /// Allows: 1kb, 1 KB, 15.7mb, et al.
        /// </example>
        public const string FileSize = @"^\d{1}[0-9\.]*\s?(kb|Kb|KB|mb|Mb|MB|gb|Gb|GB|tb|Tb|TB|pb|Pb|PB){1}$";

        /// <summary><![CDATA[
        /// Standard 5 digit U.S. zip code.
        /// ]]></summary>
        /// <example>
        /// Allows: 12345
        /// </example>
        public const string ZipCode = @"^\d{5}$";

        /// <summary><![CDATA[
        /// Standard 5 digit U.S. zip code with four extra digits.
        /// ]]></summary>
        /// <example>
        /// Allows: 12345-1234
        /// </example>
        public const string ZipCodePlusFour = @"^\d{5}((-|\s)?\d{4})$";

        /// <summary><![CDATA[
        /// Standard 5 digit U.S. zip code with optional four extra digits.
        /// ]]></summary>
        /// <example>
        /// Allows: 12345-1234, 12345
        /// </example>
        public const string ZipCodePlusFourOptional = @"^\d{5}((-|\s)?\d{4})?$";

        /// <summary><![CDATA[
        /// Standard 2-letter state abbreviation, case insensitive.
        /// ]]></summary>
        public const string USStateAbbreviation = @"^([Aa][LlKkSsZzRrAaEePp]|[Cc][AaOoTt]|[Dd][EeCc]|[Ff][LlMm]|[Gg][AaUu]|[Hh][Ii]|[Ii][AaDdLlNn]|[Kk][SsYy]|[Ll][Aa]|[Mm][AaDdEeHhIiNnOoPpSsTt]|[Nn][CcDdEeHhJjMmVvYy]|[Oo][HhKkRr]|[Pp][AaRrWw]|[Rr][Ii]|[Ss][CcDd]|[Tt][NnXx]|[Uu][Tt]|[Vv][AaIiTt]|[Ww][AaIiVvYy])$";

        /// <summary><![CDATA[
        /// Permissive US Telephone Regex. Does not allow extensions. Area code is not required.
        /// ]]></summary>
        /// <example>
        /// Allows: 234-3433, 324-234-3433, 3242343434, (234)234-234, (234) 234-2343
        /// </example>
        public const string TelephoneUS = @"^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$";

        /// <summary><![CDATA[
        /// Permissive US Telephone Regex. Does not allow extensions. Area code is required.
        /// ]]></summary>
        /// <example>
        /// Allows: 324-234-3433, 3242343434, (234)234-2343, (234) 234-2343
        /// </example>
        public const string Telephone10 = @"^\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}";

        /// <summary><![CDATA[
        /// This matches a url in the generic format 
        /// scheme://authority/path?query#fragment
        /// ]]></summary>
        /// <example>
        /// Allows: http://www.yahoo.com, https://www.yahoo.com, ftp://www.yahoo.com
        /// </example>
        public const string Url = @"^(?<Protocol>\w+):\/\/(?<Domain>[\w.]+\/?)\S*$";

        /// <summary><![CDATA[
        /// This matches an ip address in the format xxx-xxx-xxx-xxx
        /// each group of xxx must be less than or equal to 255
        /// ]]></summary>
        /// <example>
        /// Allows: 123.123.123.123, 192.168.1.1
        /// </example>
        public const string IPv4Address = @"^(?<First>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Second>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Third>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Fourth>2[0-4]\d|25[0-5]|[01]?\d\d?)$";

        /// <summary><![CDATA[
        /// This matches a date in the format mm/dd/yy
        /// ]]></summary>
        /// <example>
        /// Allows: 01/05/05, 12/30/99, 04/11/05
        /// Does not allow: 01/05/2000, 2/2/02
        /// </example> 
        public const string DateMMDDYY = @"^(1[0-2]|0[1-9])/(([1-2][0-9]|3[0-1]|0[1-9])/\d\d)$";

        /// <summary><![CDATA[
        /// This matches a date in the format m/d/yyyy. Month and day can optionally contain leading zeroes.
        /// ]]></summary>
        /// <example>
        /// Allows: 01/05/2005, 12/30/9999, 4/1/2005
        /// </example> 
        public const string Date = @"^((1[0-2]|[1-9]|0[1-9])/([1-2][0-9]|3[0-1]|0[1-9]|[1-9])/(\d{2}|\d{4}))$";

        /// <summary><![CDATA[
        /// This matches a date in the format mm/yy
        /// ]]></summary>
        /// <example>
        /// Allows: 01/05, 11/05, 04/99
        /// Does not allow: 1/05, 13/05, 00/05
        /// </example>
        public const string DateMMYY = @"^((0[1-9])|(1[0-2]))\/(\d{2})$";

        /// <summary><![CDATA[
        /// This matches only numbers (no decimals, commas, etc.)
        /// ]]></summary>
        /// <example>
        /// Allows: 0, 1, 123, 4232323, 1212322
        /// </example>
        public const string Numeric = @"^([1-9]\d*)$|^0$";

        /// <summary><![CDATA[
        /// This matches any string with only alpha characters upper or lower case(A-Z)
        /// ]]></summary>
        /// <example>
        /// Allows: abc, ABC, abCd, AbCd
        /// Does not allow: A C, abc!, (a,b)
        /// </example>
        public const string Alpha = @"^[a-zA-Z]+$";

        /// <summary><![CDATA[
        /// This matches any string with only upper case alpha character(A-Z)
        /// ]]></summary>
        public const string UpperCase = @"^[A-Z]+$";

        /// <summary><![CDATA[
        /// This matches any string with only lower case alpha character(A-Z)
        /// ]]></summary>
        public const string LowerCase = @"^[a-z]+$";

        /// <summary><![CDATA[
        /// Ensures the string only contains alpha-numeric characters, and
        /// not punctuation, spaces, newlines, etc.
        /// ]]></summary>
        /// <example>
        /// Allows: ab2c, 112ABC, ab23Cd
        /// Does not allow: A C, abc!, a.a
        /// </example>
        public const string AlphaNumeric = @"^[a-zA-Z0-9]+$";

        /// <summary><![CDATA[
        /// Validates US Currency.  Requires $ sign.
        /// Allows for optional commas and decimal. 
        /// No leading zeros. 
        /// ]]></summary>
        /// <example>
        /// Allows: $100,000 or $10000.00 or $10.00 or $.10 or $0 or $0.00 or $0.10 or 10,000
        /// </example>
        public const string USCurrency = @"^[\$]*(([0-9]\d*|([0-9]\d{0,2}(\,\d{3})*))(\.\d{1,2})?|(\.\d{1,2}))$|^\$[0](.00)?$";

        /// <summary><![CDATA[
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
        /// ]]></summary>
        public const string ValidCreditCardNumber = @"^(?:(?<Visa>4\d{3})|(?<Mastercard>5[1-5]\d{2})|(?<Discover>6011)|(?<DinersClub>(?:3[68]\d{2})|(?:30[0-5]\d))|(?<AmericanExpress>3[47]\d{2}))([ -]?)(?(DinersClub)(?:\d{6}\1\d{4})|(?(AmericanExpress)(?:\d{6}\1\d{5})|(?:\d{4}\1\d{4}\1\d{4})))$";

        /// <summary><![CDATA[
        /// Matches social security in the following format xxx-xx-xxxx
        /// where x is a number
        /// ]]></summary>
        /// <example>
        /// Allows: 123-45-6789, 232-432-1212
        /// </example>
        public const string SocialSecurityNumber = @"^\d{3}-\d{2}-\d{4}$";

        /// <summary><![CDATA[
        /// Matches x,x where x is a name, spaces are only allowed between comma and name
        /// ]]></summary>
        /// <example>
        /// Allows: christophersen,eric; christophersen, eric
        /// Not allowed: christophersen ,eric;
        /// </example>
        public const string FullNameWithComma = @"^[a-zA-Z]+,\s?[a-zA-Z]+$";

        /// <summary><![CDATA[
        /// Matches time of day. Leading zeroes are ignored.
        /// ]]></summary>
        /// <example>
        /// Allows: 01:15am, 10:15 AM, etc.
        /// </example>
        public const string Time = @"^((0?[1-9]|1[012]):[0-5]\d(\ {0,}[AaPp][Mm]))$";

        /// <summary><![CDATA[
        /// Matches time of day in military format.
        /// ]]></summary>
        /// <example>
        /// Allows: 00:15, 23:45, et al.
        /// </example>
        public const string TimeMilitary = @"^((([0][0-2])|([1][0-9])|([2][0-3])):[0-5][0-9])$";

        /// <summary><![CDATA[
        /// Matches 3 digits for an area code
        /// ]]></summary>
        /// <example>
        /// Allows: any 3 digits
        /// </example>
        public const string AreaCode = @"^\d\d\d$";

        /// <summary><![CDATA[
        /// Matches a domain name.
        /// ]]></summary>
        /// <example>
        /// Allows: site.com, site.com:8080, http://www.site.com, et al.
        /// </example>
        public const string DomainName = @"^([a-zA-Z\:/]*[a-zA-Z0-9-_]\.[a-zA-Z][a-zA-Z][a-zA-Z0-9\?\=&#_\-/\.\:]*[^\.\s])$";

        /// <summary><![CDATA[
        /// Matches a strong password format. Must have 8-64 characters, and at least one lower case, one upper case, one digit, and one special character.
        /// Special characters include: ~!@#$%^&*()_+=[{]};:<>|./?,-
        /// ]]></summary>
        public const string PasswordAndLength = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\(\)_+=\[{\]};:<>|./?,-])\S{8,64}$";

        /// <summary><![CDATA[
        /// Matches a strong password format. Must have at least one lower case, one upper case, one digit, and one special character.
        /// Special characters include: ~!@#$%^&*()_+=[{]};:<>|./?,-
        /// ]]></summary>
        public const string Password = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\(\)_+=\[{\]};:<>|./?,-])\S{4,}$";
    }

    /// <summary><![CDATA[
    /// Regex validation options for various methods.
    /// ]]></summary>
    public enum ValidationOptions
    {
        /// <summary><![CDATA[
        /// Validate only the length of the string.
        /// ]]></summary>
        Length,

        /// <summary><![CDATA[
        /// Validate as an E-mail address
        /// ]]></summary>
        Email,

        /// <summary><![CDATA[
        /// Validate as a list of e-mail addresses. Addresses can be separated with ",", "|", ";", "/", or spaces.
        /// ]]></summary>
        EmailList,

        /// <summary><![CDATA[
        /// Validate as a numeric value.
        /// ]]></summary>
        Number,

        /// <summary><![CDATA[
        /// Validate as a pure number; no commas, periods, or non-numeric characters.
        /// ]]></summary>
        PureNumber,

        /// <summary><![CDATA[
        /// Validate as a number which is greater than zero.
        /// ]]></summary>
        NonZero,

        /// <summary><![CDATA[
        /// Validate as currency.
        /// ]]></summary>
        Currency,

        /// <summary><![CDATA[
        /// Validate as a date.
        /// ]]></summary>
        Date,

        /// <summary><![CDATA[
        /// Validate as time of day.
        /// ]]></summary>
        Time,

        /// <summary><![CDATA[
        /// Validate as a telephone number. Allows: 234-3433, 324-234-3433, 3242343434, (234)234-234, (234) 234-2343.
        /// ]]></summary>
        Telephone,

        /// <summary><![CDATA[
        /// Validate as a telephone number. Area code is required. Allows: 324-234-3433, 3242343434, (234)234-234, (234) 234-2343.
        /// ]]></summary>
        Telephone10,

        /// <summary><![CDATA[
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
        /// ]]></summary>
        CreditCard,

        /// <summary><![CDATA[
        /// Validate as a U.S. 5-digit zip code.
        /// ]]></summary>
        ZipCode,

        /// <summary><![CDATA[
        /// Validate as a URL. Allows: http://www.yahoo.com, https://www.yahoo.com, ftp://www.yahoo.com.
        /// ]]></summary>
        Url,

        /// <summary><![CDATA[
        /// Validate as an IPv4 address. Allows: 123.123.123.123, 192.168.1.1.
        /// ]]></summary>
        IPv4Address,

        /// <summary><![CDATA[
        /// Validate as a social security number. Allows: 123-45-6789, 232-432-1212.
        /// ]]></summary>
        Ssn,

        /// <summary><![CDATA[
        /// Validate as domain name. Allows: site.com, site.com:8080, http://www.site.com, et al.
        /// ]]></summary>
        Domain,

        /// <summary><![CDATA[
        /// Validate as first and last name.
        /// <para>Allows: christophersen,eric; christophersen, eric.</para>
        /// <para>Not allowed: christophersen ,eric.</para>
        /// ]]></summary>
        FullNameWithComma,

        /// <summary><![CDATA[
        /// Validate a 2-letter abbreviation as a valid state in the U.S.
        /// ]]></summary>
        USStateAbbreviation
    }

    #endregion

    #region Temporal

    /// <summary><![CDATA[
    /// Enumeration used in the DateDiff method to specify what date/time increment to use.
    /// ]]></summary>
    public enum DateDiffComparisonType
    {
        /// <summary><![CDATA[
        /// Minutes (fractional).
        /// ]]></summary>
        Minutes,

        /// <summary><![CDATA[
        /// Hours (fractional).
        /// ]]></summary>
        Hours,

        /// <summary><![CDATA[
        /// Seconds (fractional).
        /// ]]></summary>
        Seconds,

        /// <summary><![CDATA[
        /// CPU ticks (fractional).
        /// ]]></summary>
        Ticks,

        /// <summary><![CDATA[
        /// Milliseconds (fractional).
        /// ]]></summary>
        Milliseconds,

        /// <summary><![CDATA[
        /// Years (fractional).
        /// ]]></summary>
        Years,

        /// <summary><![CDATA[
        /// Quarters (fractional).
        /// ]]></summary>
        Quarters,

        /// <summary><![CDATA[
        /// Days (fractional).
        /// ]]></summary>
        Days,

        /// <summary><![CDATA[
        /// Months (fractional).
        /// ]]></summary>
        Months,

        /// <summary><![CDATA[
        /// Days (whole number; ignores time).
        /// Result is exclusive (e.g. 1/1/2008 and 1/7/2008 returns 6).
        /// ]]></summary>
        DaysWhole,

        /// <summary><![CDATA[
        /// Age in Years (whole number, takes leap year into account, many options - see CalculateAge for more details).
        /// Takes Leap Year into account: with a 2/29/2000 birthday, if today is 2/28/2011 age is 10, if today is 3/1/2011 age is 11.
        /// ]]></summary>
        Age
    }

    /// <summary><![CDATA[
    /// Enumeration used with the DateFormat method, specifying the format of the output date.
    /// ]]></summary>
    public enum DateFormats
    {
        /// <summary><![CDATA[
        /// 12-APR-2018
        /// ]]></summary>
        European,

        /// <summary><![CDATA[
        /// 2007-12-20
        /// ]]></summary>
        Sortable,

        /// <summary><![CDATA[
        /// 12/20/2007
        /// ]]></summary>
        Slashes,

        /// <summary><![CDATA[
        /// 12.20.2007
        /// ]]></summary>
        Dots,

        /// <summary><![CDATA[
        /// Friday; December 20, 2007
        /// ]]></summary>
        Full,

        /// <summary><![CDATA[
        /// Friday; December 20
        /// ]]></summary>
        Daily,

        /// <summary><![CDATA[
        /// Dec 1, 2007
        /// ]]></summary>
        Tidy,

        /// <summary><![CDATA[
        /// Friday
        /// ]]></summary>
        Weekday,

        /// <summary><![CDATA[
        /// Fri
        /// ]]></summary>
        WeekdayShort,

        /// <summary><![CDATA[
        /// December
        /// ]]></summary>
        Month,

        /// <summary><![CDATA[
        /// Dec
        /// ]]></summary>
        MonthShort,

        /// <summary><![CDATA[
        /// 12/2007
        /// ]]></summary>
        Corporate,

        /// <summary><![CDATA[
        /// December 20, 2007
        /// ]]></summary>
        PressRelease,

        /// <summary><![CDATA[
        /// 12-20-2007
        /// ]]></summary>
        Standard,

        /// <summary><![CDATA[
        /// 2007-12-20T09:45:24Z
        /// ]]></summary>
        Rss,

        /// <summary><![CDATA[
        /// Fri-Dec-20-2007
        /// ]]></summary>
        AbbreviatedFull,

        /// <summary><![CDATA[
        /// "X minutes ago", "X hours ago", "yesterday", "X days ago", "a week ago", or "on m/d/yyyy"
        /// ]]></summary>
        Friendly,

        /// <summary><![CDATA[
        /// No dates, only abstractions based on the current date and time;
        /// "X minutes ago", "X hours ago", "yesterday", "X days ago", "a week ago", "a month ago", "x months ago", "a year ago", "almost 2 years ago", etc.
        /// ]]></summary>
        Abstract
    }

    /// <summary><![CDATA[
    /// Enumeration used to format times of day with the TimeFormat method.
    /// ]]></summary>
    public enum TimeFormats
    {
        /// <summary><![CDATA[
        /// 10:23PM
        /// ]]></summary>
        Standard,

        /// <summary><![CDATA[
        /// 15:30:00
        /// ]]></summary>
        SqlMilitary,

        /// <summary><![CDATA[
        /// 15:30
        /// ]]></summary>
        Military
    }

    /// <summary><![CDATA[
    /// Enumeration used to define date intervals for the DateRange method.
    /// ]]></summary>
    [Flags]
    public enum DateRangeOptions : byte
    {
        /// <summary><![CDATA[
        /// Weeks
        /// ]]></summary>
        Week = 1,

        /// <summary><![CDATA[
        /// Months
        /// ]]></summary>
        Month = 2,

        /// <summary><![CDATA[
        /// Quarters
        /// ]]></summary>
        Quarter = 4,

        /// <summary><![CDATA[
        /// Years
        /// ]]></summary>
        Year = 5
    }

    /// <summary><![CDATA[
    /// Struct used to define the return value format for the DateRange method.
    /// ]]></summary>
    public struct DateRangeStruct
    {
        /// <summary><![CDATA[
        /// Start Date is the first element.
        /// ]]></summary>
        public DateTime startDate;

        /// <summary><![CDATA[
        /// End Date is the second element.
        /// ]]></summary>
        public DateTime endDate;
    }

    #endregion

    #region Storage

    /// <summary><![CDATA[
    /// The PathOptions enumeration is used to specify file attributes, like "hidden", "system", et al.
    /// ]]></summary>
    [Flags]
    public enum PathOptions : byte
    {
        /// <summary><![CDATA[
        /// Normal files.
        /// ]]></summary>
        Path = 1,

        /// <summary><![CDATA[
        /// Hidden files.
        /// ]]></summary>
        Hidden = 2,

        /// <summary><![CDATA[
        /// System files.
        /// ]]></summary>
        System = 4
    }

    #endregion

    #region Email

    /// <summary><![CDATA[
    /// Format for email body content.
    /// ]]></summary>
    public enum EmailFormat
    {
        /// <summary><![CDATA[
        /// Quotable plain text format.
        /// ]]></summary>
        PlainText,

        /// <summary><![CDATA[
        /// HTML format.
        /// ]]></summary>
        Html,

        /// <summary><![CDATA[
        /// 7-bit plain text format.
        /// ]]></summary>
        PlainText7Bit
    }

    /// <summary><![CDATA[
    /// Email header items
    /// ]]></summary>
    public static class EmailHeader
    {
        /// <summary><![CDATA[
        /// Email header properties
        /// ]]></summary>
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

    /// <summary><![CDATA[
    /// Enumeration used with the GetWebPage method.
    /// ]]></summary>
    public enum GetWebPageMethod
    {
        /// <summary><![CDATA[
        /// Http GET operation.
        /// ]]></summary>
        Get,

        /// <summary><![CDATA[
        /// Http POST operation.
        /// ]]></summary>
        Post
    };

    #endregion

    #region RestHelper

    /// <summary><![CDATA[
    /// Types of REST requests
    /// ]]></summary>
    public enum RequestTypeEnum
    {
        /// <summary><![CDATA[
        /// Does a get against the source.
        /// ]]></summary>
        GET,
        /// <summary><![CDATA[
        /// Does a post against the source.
        /// ]]></summary>
        POST,
        /// <summary><![CDATA[
        /// Does a put against the soruce
        /// ]]></summary>
        PUT,
        /// <summary><![CDATA[
        /// Does a patch against the soruce
        /// ]]></summary>
        PATCH,
        /// <summary><![CDATA[
        /// Does a delete against the soruce
        /// ]]></summary>
        DELETE
    }

    /// <summary><![CDATA[
    /// Types of request and response
    /// ]]></summary>
    public enum RequestFormatEnum
    {
        /// <summary><![CDATA[
        /// JSON
        /// ]]></summary>
        JSON,
        /// <summary><![CDATA[
        /// XML
        /// ]]></summary>
        XML,
        /// <summary><![CDATA[
        /// HTML
        /// ]]></summary>
        HTML
    }

    #endregion

    #region Security

    /// <summary><![CDATA[
    /// LogonSessionType for LogonUser method.
    /// ]]></summary>
    public enum LogonSessionType : int
    {
        /// <summary><![CDATA[
        /// Interactive authentication.
        /// ]]></summary>
        Interactive = 2,

        /// <summary><![CDATA[
        /// Network authentication.
        /// ]]></summary>
        Network,

        /// <summary><![CDATA[
        /// Batch authentication.
        /// ]]></summary>
        Batch,

        /// <summary><![CDATA[
        /// Service authentication.
        /// ]]></summary>
        Service,

        /// <summary><![CDATA[
        /// Network authentication using clear text.
        /// ]]></summary>
        NetworkCleartext = 8,

        /// <summary><![CDATA[
        /// New Credentials.
        /// ]]></summary>
        NewCredentials
    }

    /// <summary><![CDATA[
    /// Logon provider enum for LogonUser method.
    /// ]]></summary>
    public enum LogonProvider : int
    {
        /// <summary><![CDATA[
        /// Default platform.
        /// ]]></summary>
        Default = 0, // default for platform (use this!)

        /// <summary><![CDATA[
        /// Windows NT 3.5 style.
        /// ]]></summary>
        WinNT35,     // sends smoke signals to authority

        /// <summary><![CDATA[
        /// Windows NT 4.0 style.
        /// ]]></summary>
        WinNT40,     // uses NTLM

        /// <summary><![CDATA[
        /// Windows 2000 style using Kerberos or NTLM.
        /// ]]></summary>
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
        public static string DoNotIndex = @"
<meta name=""robots"" content=""noindex,nofollow"">
";
        /// <summary><![CDATA[
        /// Meta tag to prevent browser page caching
        /// ]]></summary>
        public static string DoNotCache = @"
<meta http-equiv=""CACHE-CONTROL"" content=""NO-CACHE"">
<meta http-equiv=""PRAGMA"" content=""NO-CACHE"">
";
    }

    #endregion
}
