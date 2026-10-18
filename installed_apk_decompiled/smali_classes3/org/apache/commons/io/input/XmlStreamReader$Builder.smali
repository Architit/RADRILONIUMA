.class public Lorg/apache/commons/io/input/XmlStreamReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "XmlStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/XmlStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/XmlStreamReader;",
        "Lorg/apache/commons/io/input/XmlStreamReader$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private httpContentType:Ljava/lang/String;

.field private lenient:Z

.field private nullCharset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 123
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->get()Lorg/apache/commons/io/input/XmlStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/XmlStreamReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_1
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 169
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    return-object p1
.end method

.method public setHttpContentType(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setLenient(Z)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    return-object p0
.end method
