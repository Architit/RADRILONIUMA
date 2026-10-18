.class public final Lorg/apache/commons/io/input/UncheckedBufferedReader;
.super Ljava/io/BufferedReader;
.source "UncheckedBufferedReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;->getBufferSize()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;Lorg/apache/commons/io/input/UncheckedBufferedReader$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
    .locals 1

    .line 115
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method synthetic lambda$close$0$org-apache-commons-io-input-UncheckedBufferedReader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-super {p0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method synthetic lambda$mark$1$org-apache-commons-io-input-UncheckedBufferedReader(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    return-void
.end method

.method synthetic lambda$read$2$org-apache-commons-io-input-UncheckedBufferedReader()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    return v0
.end method

.method synthetic lambda$read$3$org-apache-commons-io-input-UncheckedBufferedReader([C)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$read$4$org-apache-commons-io-input-UncheckedBufferedReader([CII)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$read$5$org-apache-commons-io-input-UncheckedBufferedReader(Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$readLine$6$org-apache-commons-io-input-UncheckedBufferedReader()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$ready$7$org-apache-commons-io-input-UncheckedBufferedReader()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-super {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$reset$8$org-apache-commons-io-input-UncheckedBufferedReader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    return-void
.end method

.method synthetic lambda$skip$9$org-apache-commons-io-input-UncheckedBufferedReader(J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-super {p0, p1, p2}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public read([C)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 167
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->getAsBoolean(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 199
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
