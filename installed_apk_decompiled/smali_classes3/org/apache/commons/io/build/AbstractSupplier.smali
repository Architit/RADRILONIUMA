.class public abstract Lorg/apache/commons/io/build/AbstractSupplier;
.super Ljava/lang/Object;
.source "AbstractSupplier.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractSupplier<",
        "TT;TB;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/io/function/IOSupplier<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected asThis()Lorg/apache/commons/io/build/AbstractSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method
