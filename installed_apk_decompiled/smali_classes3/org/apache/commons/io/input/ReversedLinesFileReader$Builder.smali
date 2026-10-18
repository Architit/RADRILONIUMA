.class public Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ReversedLinesFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ReversedLinesFileReader;",
        "Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 94
    invoke-static {}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 95
    invoke-static {}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

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

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;->get()Lorg/apache/commons/io/input/ReversedLinesFileReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ReversedLinesFileReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;Lorg/apache/commons/io/input/ReversedLinesFileReader$1;)V

    return-object v0
.end method
