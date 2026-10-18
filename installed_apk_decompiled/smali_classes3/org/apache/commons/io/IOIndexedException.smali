.class public Lorg/apache/commons/io/IOIndexedException;
.super Ljava/io/IOException;
.source "IOIndexedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 57
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOIndexedException;->toMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iput p1, p0, Lorg/apache/commons/io/IOIndexedException;->index:I

    return-void
.end method

.method protected static toMessage(ILjava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 40
    const-string v0, "Null"

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s #%,d: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/commons/io/IOIndexedException;->index:I

    return v0
.end method
