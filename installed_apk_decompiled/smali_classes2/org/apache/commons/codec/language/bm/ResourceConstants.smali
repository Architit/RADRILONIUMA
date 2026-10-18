.class final Lorg/apache/commons/codec/language/bm/ResourceConstants;
.super Ljava/lang/Object;
.source "ResourceConstants.java"


# static fields
.field static final CMT:Ljava/lang/String; = "//"

.field static final ENCODING:Ljava/lang/String;

.field static final EXT_CMT_END:Ljava/lang/String; = "*/"

.field static final EXT_CMT_START:Ljava/lang/String; = "/*"

.field static final SPACES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/commons/codec/CharEncoding;->UTF_8:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/codec/language/bm/ResourceConstants;->ENCODING:Ljava/lang/String;

    .line 37
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/bm/ResourceConstants;->SPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
