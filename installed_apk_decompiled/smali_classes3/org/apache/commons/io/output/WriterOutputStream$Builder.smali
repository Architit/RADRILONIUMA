.class public Lorg/apache/commons/io/output/WriterOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "WriterOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/WriterOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/WriterOutputStream;",
        "Lorg/apache/commons/io/output/WriterOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private charsetDecoder:Ljava/nio/charset/CharsetDecoder;

.field private writeImmediately:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/output/WriterOutputStream$Builder;)Ljava/nio/charset/CharsetDecoder;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/output/WriterOutputStream$Builder;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->writeImmediately:Z

    return p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->get()Lorg/apache/commons/io/output/WriterOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/WriterOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/apache/commons/io/output/WriterOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/WriterOutputStream;-><init>(Lorg/apache/commons/io/output/WriterOutputStream$Builder;Lorg/apache/commons/io/output/WriterOutputStream$1;)V

    return-object v0
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

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;

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

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    .line 152
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    return-object p0
.end method

.method public setCharsetDecoder(Ljava/nio/charset/CharsetDecoder;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 165
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p0
.end method

.method public setWriteImmediately(Z)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0

    .line 180
    iput-boolean p1, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->writeImmediately:Z

    return-object p0
.end method
