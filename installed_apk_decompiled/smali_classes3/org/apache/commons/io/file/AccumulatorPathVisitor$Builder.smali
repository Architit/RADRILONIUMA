.class public Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;
.super Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
.source "AccumulatorPathVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/AccumulatorPathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
        "Lorg/apache/commons/io/file/AccumulatorPathVisitor;",
        "Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;-><init>()V

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

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 79
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;Lorg/apache/commons/io/file/AccumulatorPathVisitor$1;)V

    return-object v0
.end method
