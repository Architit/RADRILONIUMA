.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;,
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 108
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const-string v1, "\""

    const-string v2, "\\\""

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v6, v8, v3

    invoke-direct {v0, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v6, v3, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 114
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v6, v9

    .line 113
    invoke-virtual {v0, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    new-array v6, v3, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    const/16 v8, 0x20

    const/16 v10, 0x7f

    .line 116
    invoke-static {v8, v10}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v11

    aput-object v11, v6, v9

    .line 115
    invoke-virtual {v0, v6}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 128
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v6, 0x3

    new-array v11, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const-string v13, "\'"

    const-string v14, "\\\'"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v16

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v8, "/"

    const-string v10, "\\/"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x4

    new-array v7, v6, [[Ljava/lang/String;

    aput-object v15, v7, v9

    aput-object v16, v7, v3

    const/4 v15, 0x2

    aput-object v17, v7, v15

    const/16 v16, 0x3

    aput-object v18, v7, v16

    invoke-direct {v12, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v9

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 137
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v7, v11, v3

    const/16 v7, 0x20

    const/16 v12, 0x7f

    .line 138
    invoke-static {v7, v12}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v16

    aput-object v16, v11, v15

    invoke-direct {v0, v11}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 150
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v7, 0x3

    new-array v11, v7, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v16

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    new-array v10, v7, [[Ljava/lang/String;

    aput-object v15, v10, v9

    aput-object v16, v10, v3

    const/4 v7, 0x2

    aput-object v8, v10, v7

    invoke-direct {v12, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v9

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 158
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v11, v3

    const/16 v8, 0x20

    const/16 v10, 0x7f

    .line 159
    invoke-static {v8, v10}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-direct {v0, v11}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 173
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v8, v7, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 175
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v7, v8, v9

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 176
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v7, v8, v3

    invoke-direct {v0, v8}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 188
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v7, 0x6

    new-array v8, v7, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 190
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v8, v9

    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 191
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v8, v3

    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const-string v11, "\u0000"

    const-string v12, ""

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "\u0001"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v6, "\u0002"

    filled-new-array {v6, v12}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "\u0003"

    filled-new-array {v3, v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "\u0004"

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v13

    const-string v13, "\u0005"

    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v14

    const-string v14, "\u0006"

    filled-new-array {v14, v12}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v1

    const-string v1, "\u0007"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v2

    const-string v2, "\u0008"

    filled-new-array {v2, v12}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v4

    const-string v4, "\u000b"

    filled-new-array {v4, v12}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v5

    const-string v5, "\u000c"

    filled-new-array {v5, v12}, [Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v5

    const-string v5, "\u000e"

    filled-new-array {v5, v12}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v4

    const-string v4, "\u000f"

    filled-new-array {v4, v12}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v11

    const-string v11, "\u0010"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    move-object/from16 v30, v0

    const-string v0, "\u0011"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v8

    const-string v8, "\u0012"

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    move-object/from16 v32, v10

    const-string v10, "\u0013"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v33, v10

    const-string v10, "\u0014"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v34, v10

    const-string v10, "\u0015"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v35, v10

    const-string v10, "\u0016"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v36, v10

    const-string v10, "\u0017"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v37, v10

    const-string v10, "\u0018"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v38, v10

    const-string v10, "\u0019"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v39, v10

    const-string v10, "\u001a"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v40, v10

    const-string v10, "\u001b"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v41, v10

    const-string v10, "\u001c"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v42, v10

    const-string v10, "\u001d"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v43, v10

    const-string v10, "\u001e"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v44, v10

    const-string v10, "\u001f"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v45, v10

    const-string v10, "\ufffe"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v46, v10

    const-string v10, "\uffff"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v47, v12

    const/16 v12, 0x1f

    new-array v12, v12, [[Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v15, v12, v18

    const/4 v15, 0x1

    aput-object v7, v12, v15

    const/4 v7, 0x2

    aput-object v6, v12, v7

    const/4 v6, 0x3

    aput-object v3, v12, v6

    const/4 v3, 0x4

    aput-object v9, v12, v3

    const/4 v3, 0x5

    aput-object v13, v12, v3

    const/4 v6, 0x6

    aput-object v14, v12, v6

    const/4 v6, 0x7

    aput-object v1, v12, v6

    const/16 v1, 0x8

    aput-object v2, v12, v1

    const/16 v2, 0x9

    aput-object v24, v12, v2

    const/16 v2, 0xa

    aput-object v26, v12, v2

    const/16 v2, 0xb

    aput-object v5, v12, v2

    const/16 v2, 0xc

    aput-object v4, v12, v2

    const/16 v2, 0xd

    aput-object v11, v12, v2

    const/16 v2, 0xe

    aput-object v0, v12, v2

    const/16 v0, 0xf

    aput-object v8, v12, v0

    const/16 v0, 0x10

    aput-object v33, v12, v0

    const/16 v0, 0x11

    aput-object v34, v12, v0

    const/16 v0, 0x12

    aput-object v35, v12, v0

    const/16 v0, 0x13

    aput-object v36, v12, v0

    const/16 v0, 0x14

    aput-object v37, v12, v0

    const/16 v0, 0x15

    aput-object v38, v12, v0

    const/16 v0, 0x16

    aput-object v39, v12, v0

    const/16 v0, 0x17

    aput-object v40, v12, v0

    const/16 v0, 0x18

    aput-object v41, v12, v0

    const/16 v0, 0x19

    aput-object v42, v12, v0

    const/16 v0, 0x1a

    aput-object v43, v12, v0

    const/16 v0, 0x1b

    aput-object v44, v12, v0

    const/16 v0, 0x1c

    aput-object v45, v12, v0

    const/16 v0, 0x1d

    aput-object v46, v12, v0

    const/16 v0, 0x1e

    aput-object v10, v12, v0

    move-object/from16 v0, v32

    invoke-direct {v0, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    aput-object v0, v31, v2

    const/16 v0, 0x84

    const/16 v2, 0x7f

    .line 226
    invoke-static {v2, v0}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v31, v2

    const/16 v0, 0x86

    const/16 v2, 0x9f

    .line 227
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v31, v2

    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v0, v31, v3

    move-object/from16 v0, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 240
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 242
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 243
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    move-object/from16 v5, v29

    move-object/from16 v6, v47

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "&#11;"

    move-object/from16 v8, v28

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "&#12;"

    move-object/from16 v9, v27

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "\ufffe"

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "\uffff"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v5, 0x1

    aput-object v7, v11, v5

    const/4 v7, 0x2

    aput-object v8, v11, v7

    const/4 v8, 0x3

    aput-object v9, v11, v8

    const/4 v9, 0x4

    aput-object v10, v11, v9

    invoke-direct {v4, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v2, v7

    .line 252
    invoke-static {v5, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v2, v8

    const/16 v1, 0xe

    const/16 v4, 0x1f

    .line 253
    invoke-static {v1, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v2, v9

    const/16 v1, 0x84

    const/16 v4, 0x7f

    .line 254
    invoke-static {v4, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v2, v3

    const/16 v1, 0x86

    const/16 v3, 0x9f

    .line 255
    invoke-static {v1, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 268
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 270
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 271
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 283
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 285
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 286
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 287
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 301
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>(Lorg/apache/commons/lang3/StringEscapeUtils$1;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 313
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x4

    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 317
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    new-array v9, v6, [[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v9, v6

    const/4 v5, 0x1

    aput-object v7, v9, v5

    aput-object v8, v9, v3

    const/4 v3, 0x3

    aput-object v4, v9, v3

    invoke-direct {v1, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 336
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 347
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 358
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v3, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 360
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 361
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v4, v3, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 374
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 376
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 377
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 378
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v4, v3, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 391
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v4, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 393
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 394
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v3, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 407
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>(Lorg/apache/commons/lang3/StringEscapeUtils$1;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 432
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 459
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 471
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 500
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 524
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 551
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 626
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 656
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 681
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 697
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 710
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 730
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 743
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 759
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 780
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
