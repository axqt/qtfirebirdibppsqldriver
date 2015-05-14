**Qt SQL driver for Firebird with IBPP library**

**Note:**
> from version 0.14 default charset is "NONE"

> The format of the options string is a semicolon separated list of option=value pairs.<br>
</li></ul><blockquote>CHARSET - character set<br>
ROLE - role name<br>
<pre><code>    // QFIREBIRD connection<br>
	db.setConnectOptions("CHARSET=WIN1251;ROLE=ROOT");<br>
</code></pre></blockquote>

**Last changes:**

> Version 0.17.1<br>
<blockquote>- change conversions between Firebird and Qt<br>
<blockquote>"ASCII"       = "ISO 8859-1"<br>
"BIG_5"       = "Big5"<br>
"CYRL"        = "IBM 866"<br>
"DOS850"      = "IBM 850"<br>
"DOS866"      = "IBM 866"<br>
"KOI8-R"      = "KOI8-R"<br>
"KOI8-U"      = "KOI8-U"<br>
"EUCJ_0208"   = "JIS X 0208"<br>
"GB_2312"     = "GB18030-0"<br>
"ISO8859 (1-9, 13)"   = "ISO 8859-(1-9, 13)"<br>
"KSC_5601"    = "Big5-HKSCS"<br>
"SJIS_0208"   = "JIS X 0208"<br>
"UNICODE_FSS" = "UTF-8"<br>
"UTF8"        = "UTF-8"<br>
"WIN125(0-8)"     = "Windows-125(1-8)"<br>
</blockquote><blockquote>else use QTextCodec::codecForLocale()<br></blockquote></blockquote></li></ul>

<blockquote>Version 0.17<br>
<blockquote>+ "make install" will copy driver to <a href='QT_INSTALL_PLUGINS.md'>QT_INSTALL_PLUGINS</a>/sqldrivers<br>
- fixed: character sets exception (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=8'>Issue 8</a>)<br>
<blockquote>Conversions between Firebird and Qt<br>
<blockquote>"ASCII"       = "IBM 866"<br>
"BIG_5"       = "Big5"<br>
"CYRL"        = "KOI8-R"<br>
"DOS850"      = "IBM 850"<br>
"DOS866"      = "IBM 866"<br>
"EUCJ_0208"   = "JIS X 0208"<br>
"GB_2312"     = "GB18030-0"<br>
"ISO8859 (1-9, 13)"   = "ISO 8859-(1-9, 13)"<br>
"KSC_5601"    = "Big5-HKSCS"<br>
"SJIS_0208"   = "JIS X 0208"<br>
"UNICODE_FSS" = "UTF-32"<br>
"UTF8"        = "UTF-8"<br>
"WIN125(0-8)"     = "Windows-125(1-8)"<br>
</blockquote>else use QTextCodec::codecForLocale()<br></blockquote></blockquote></blockquote>

<blockquote>Version 0.16<br>
<blockquote>- fixed: NUMERIC and DECIMAL fields with small length return wrong value (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=7'>Issue 7</a>)<br></blockquote></blockquote>

<blockquote>Version 0.15<br>
<blockquote>- fixed: Produce different targets depengind on config (Debug Release) (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=6'>Issue 6</a>)<br>
+ license under LGPL version 2.1<br>
+ license under GPL version 3.0<br></blockquote></blockquote>

<blockquote>Version 0.14<br>
<blockquote>- fixed: ASSERTION in qsqlcachedresult when calling stored procedure (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=1'>Issue 1</a>)<br>
- fixed: bug when blob contains '\0' char (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=2'>Issue 2</a>)<br>
+ Add support of firebird ROLE (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=3'>Issue 3</a>)<br>
+ change in IbppDriver.pro for  support debug and release builds (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=4'>Issue 4</a>)<br>
- fixed bug when only "NONE" and "WIN1251" charset is set (<a href='https://code.google.com/p/qtfirebirdibppsqldriver/issues/detail?id=5'>Issue 5</a>)<br>
- compile warnings<br>