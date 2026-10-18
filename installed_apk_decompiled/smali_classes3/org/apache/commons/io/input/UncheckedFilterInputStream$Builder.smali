.class public Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "UncheckedFilterInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/UncheckedFilterInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/UncheckedFilterInputStream;",
        "Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
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

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;->get()Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/UncheckedFilterInputStream;
    .locals 1

    .line 95
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    return-object v0
.end method

.method synthetic lambda$get$0$org-apache-commons-io-input-UncheckedFilterInputStream$Builder()Lorg/apache/commons/io/input/UncheckedFilterInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;Lorg/apache/commons/io/input/UncheckedFilterInputStream$1;)V

    return-object v0
.end method
