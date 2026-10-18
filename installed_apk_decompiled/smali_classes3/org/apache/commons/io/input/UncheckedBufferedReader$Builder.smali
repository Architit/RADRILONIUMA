.class public Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "UncheckedBufferedReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/UncheckedBufferedReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/UncheckedBufferedReader;",
        "Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

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

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;->get()Lorg/apache/commons/io/input/UncheckedBufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/UncheckedBufferedReader;
    .locals 1

    .line 104
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/UncheckedBufferedReader;

    return-object v0
.end method

.method synthetic lambda$get$0$org-apache-commons-io-input-UncheckedBufferedReader$Builder()Lorg/apache/commons/io/input/UncheckedBufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;Lorg/apache/commons/io/input/UncheckedBufferedReader$1;)V

    return-object v0
.end method
