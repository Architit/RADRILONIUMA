.class public final enum Lorg/apache/commons/io/FileSystem;
.super Ljava/lang/Enum;
.source "FileSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/FileSystem;

.field private static final CURRENT:Lorg/apache/commons/io/FileSystem;

.field public static final enum GENERIC:Lorg/apache/commons/io/FileSystem;

.field private static final IS_OS_LINUX:Z

.field private static final IS_OS_MAC:Z

.field private static final IS_OS_WINDOWS:Z

.field public static final enum LINUX:Lorg/apache/commons/io/FileSystem;

.field public static final enum MAC_OSX:Lorg/apache/commons/io/FileSystem;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final enum WINDOWS:Lorg/apache/commons/io/FileSystem;


# instance fields
.field private final blockSize:I

.field private final casePreserving:Z

.field private final caseSensitive:Z

.field private final illegalFileNameChars:[I

.field private final maxFileNameLength:I

.field private final maxPathLength:I

.field private final nameSeparator:C

.field private final nameSeparatorOther:C

.field private final reservedFileNames:[Ljava/lang/String;

.field private final reservedFileNamesExtensions:Z

.field private final supportsDriveLetter:Z


# direct methods
.method public static synthetic $r8$lambda$kbJ6R4FYGPrxzqRzzr4AXRsbN0M(Lorg/apache/commons/io/FileSystem;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lorg/apache/commons/io/FileSystem;
    .locals 4

    .line 34
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    sget-object v1, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    sget-object v2, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    sget-object v3, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 41

    .line 39
    new-instance v13, Lorg/apache/commons/io/FileSystem;

    const/4 v14, 0x0

    filled-new-array {v14}, [I

    move-result-object v8

    new-array v9, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x2f

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v13, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 44
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/16 v1, 0x2f

    filled-new-array {v14, v1}, [I

    move-result-object v23

    new-array v2, v14, [Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x2f

    const-string v16, "LINUX"

    const/16 v17, 0x1

    const/16 v18, 0x2000

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0xff

    const/16 v22, 0x1000

    const/16 v25, 0x0

    move-object v15, v0

    move-object/from16 v24, v2

    invoke-direct/range {v15 .. v27}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 56
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/16 v2, 0x3a

    filled-new-array {v14, v1, v2}, [I

    move-result-object v36

    new-array v1, v14, [Ljava/lang/String;

    const/16 v39, 0x0

    const/16 v40, 0x2f

    const-string v29, "MAC_OSX"

    const/16 v30, 0x2

    const/16 v31, 0x1000

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0xff

    const/16 v35, 0x400

    const/16 v38, 0x0

    move-object/from16 v28, v0

    move-object/from16 v37, v1

    invoke-direct/range {v28 .. v40}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 80
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/16 v1, 0x29

    new-array v10, v1, [I

    fill-array-data v10, :array_0

    const-string v39, "NUL"

    const-string v40, "PRN"

    const-string v11, "AUX"

    const-string v12, "COM1"

    const-string v13, "COM2"

    const-string v14, "COM3"

    const-string v15, "COM4"

    const-string v16, "COM5"

    const-string v17, "COM6"

    const-string v18, "COM7"

    const-string v19, "COM8"

    const-string v20, "COM9"

    const-string v21, "COM\u00b2"

    const-string v22, "COM\u00b3"

    const-string v23, "COM\u00b9"

    const-string v24, "CON"

    const-string v25, "CONIN$"

    const-string v26, "CONOUT$"

    const-string v27, "LPT1"

    const-string v28, "LPT2"

    const-string v29, "LPT3"

    const-string v30, "LPT4"

    const-string v31, "LPT5"

    const-string v32, "LPT6"

    const-string v33, "LPT7"

    const-string v34, "LPT8"

    const-string v35, "LPT9"

    const-string v36, "LPT\u00b2"

    const-string v37, "LPT\u00b3"

    const-string v38, "LPT\u00b9"

    filled-new-array/range {v11 .. v40}, [Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    const/16 v14, 0x5c

    const-string v3, "WINDOWS"

    const/4 v4, 0x3

    const/16 v5, 0x1000

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xff

    const/16 v9, 0x7d00

    const/4 v12, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 34
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->$values()[Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    .line 109
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    .line 119
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    .line 134
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    .line 139
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->current()Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileSystem;->CURRENT:Lorg/apache/commons/io/FileSystem;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x22
        0x2a
        0x2f
        0x3a
        0x3c
        0x3e
        0x3f
        0x5c
        0x7c
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZII[I[",
            "Ljava/lang/String;",
            "ZZC)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lorg/apache/commons/io/FileSystem;->blockSize:I

    .line 337
    iput p6, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    .line 338
    iput p7, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    .line 339
    const-string p1, "illegalFileNameChars"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 340
    const-string p1, "reservedFileNames"

    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 342
    iput-boolean p10, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNamesExtensions:Z

    .line 343
    iput-boolean p4, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    .line 344
    iput-boolean p5, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    .line 345
    iput-boolean p11, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    .line 346
    iput-char p12, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    .line 347
    invoke-static {p12}, Lorg/apache/commons/io/FilenameUtils;->flipSeparator(C)C

    move-result p1

    iput-char p1, p0, Lorg/apache/commons/io/FileSystem;->nameSeparatorOther:C

    return-void
.end method

.method private static current()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 147
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 150
    :cond_0
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 153
    :cond_1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_2

    .line 154
    sget-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 156
    :cond_2
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method public static getCurrent()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 165
    sget-object v0, Lorg/apache/commons/io/FileSystem;->CURRENT:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method private static getOsMatchesName(Ljava/lang/String;)Z
    .locals 1

    .line 176
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/FileSystem;->isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 194
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 197
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'; the SystemUtils property value will default to null."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static indexOf(Ljava/lang/CharSequence;II)I
    .locals 8

    .line 247
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 248
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 250
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_1

    move p2, v1

    :cond_1
    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-ge p1, v2, :cond_4

    :goto_0
    if-ge p2, v0, :cond_3

    .line 256
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_6

    .line 264
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    :goto_1
    const/4 v2, 0x1

    add-int/lit8 v4, v0, -0x1

    if-ge p2, v4, :cond_6

    .line 266
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v5, p2, 0x1

    .line 267
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 268
    aget-char v7, p1, v1

    if-ne v4, v7, :cond_5

    aget-char v2, p1, v2

    if-ne v6, v2, :cond_5

    return p2

    :cond_5
    move p2, v5

    goto :goto_1

    :cond_6
    return v3
.end method

.method private isIllegalFileNameChar(I)Z
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 292
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    const-class v0, Lorg/apache/commons/io/FileSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/FileSystem;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 356
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->blockSize:I

    return v0
.end method

.method public getIllegalFileNameChars()[C
    .locals 4

    .line 365
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    array-length v0, v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 366
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 367
    aget v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIllegalFileNameCodePoints()[I
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMaxFileNameLength()I
    .locals 1

    .line 388
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    return v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 397
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    return v0
.end method

.method public getNameSeparator()C
    .locals 1

    .line 407
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    return v0
.end method

.method public getReservedFileNames()[Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isCasePreserving()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    return v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    return v0
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->isReservedFileName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 464
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/FileSystem;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isReservedFileName(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNamesExtensions:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$toLegalFileName$0$org-apache-commons-io-FileSystem(CI)I
    .locals 1

    .line 525
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method public normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 487
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->nameSeparatorOther:C

    iget-char v1, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->replace(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportsDriveLetter()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    return v0
.end method

.method public toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3

    .line 519
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 521
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 522
    const-string p2, "\\0"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :goto_0
    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/io/FileSystem;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 521
    const-string p2, "The replacement character \'%s\' cannot be one of the %s illegal characters: %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    if-le v0, v2, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 525
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/FileSystem;C)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 526
    new-instance p2, Ljava/lang/String;

    array-length v0, p1

    invoke-direct {p2, p1, v1, v0}, Ljava/lang/String;-><init>([III)V

    return-object p2
.end method

.method trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0x2e

    const/4 v1, 0x0

    .line 530
    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method
