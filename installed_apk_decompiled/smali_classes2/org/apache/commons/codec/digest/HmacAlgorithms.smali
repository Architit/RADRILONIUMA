.class public final enum Lorg/apache/commons/codec/digest/HmacAlgorithms;
.super Ljava/lang/Enum;
.source "HmacAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/codec/digest/HmacAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_224:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 6

    .line 39
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v2, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_224:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v3, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v4, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v5, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/commons/codec/digest/HmacAlgorithms;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x0

    const-string v2, "HmacMD5"

    const-string v3, "HMAC_MD5"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 55
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x1

    const-string v2, "HmacSHA1"

    const-string v3, "HMAC_SHA_1"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 64
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x2

    const-string v2, "HmacSHA224"

    const-string v3, "HMAC_SHA_224"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_224:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 72
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x3

    const-string v2, "HmacSHA256"

    const-string v3, "HMAC_SHA_256"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 80
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x4

    const-string v2, "HmacSHA384"

    const-string v3, "HMAC_SHA_384"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 88
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x5

    const-string v2, "HmacSHA512"

    const-string v3, "HMAC_SHA_512"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 39
    invoke-static {}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$values()[Lorg/apache/commons/codec/digest/HmacAlgorithms;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    const-class v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-virtual {v0}, [Lorg/apache/commons/codec/digest/HmacAlgorithms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->name:Ljava/lang/String;

    return-object v0
.end method
