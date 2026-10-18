.class public final Lorg/apache/commons/io/charset/CharsetEncoders;
.super Ljava/lang/Object;
.source "CharsetEncoders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toCharsetEncoder$0()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 41
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method

.method public static toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/io/charset/CharsetEncoders$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/charset/CharsetEncoders$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/charset/CharsetEncoders;->toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;Ljava/util/function/Supplier;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;Ljava/util/function/Supplier;)Ljava/nio/charset/CharsetEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/CharsetEncoder;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;)",
            "Ljava/nio/charset/CharsetEncoder;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/CharsetEncoder;

    :goto_0
    return-object p0
.end method
