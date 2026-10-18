.class public Lorg/apache/commons/io/input/ObservableInputStream$Builder;
.super Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;
.source "ObservableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ObservableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/ObservableInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;-><init>()V

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

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream$Builder;->get()Lorg/apache/commons/io/input/ObservableInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ObservableInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/apache/commons/io/input/ObservableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;)V

    return-object v0
.end method
