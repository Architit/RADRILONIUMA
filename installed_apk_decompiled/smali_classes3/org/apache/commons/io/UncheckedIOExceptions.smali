.class final Lorg/apache/commons/io/UncheckedIOExceptions;
.super Ljava/lang/Object;
.source "UncheckedIOExceptions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Ljava/io/UncheckedIOException;
    .locals 2

    .line 41
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method

.method public static wrap(Ljava/io/IOException;Ljava/lang/Object;)Ljava/io/UncheckedIOException;
    .locals 1

    .line 55
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method
