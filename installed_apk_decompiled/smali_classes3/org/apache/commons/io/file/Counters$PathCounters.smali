.class public interface abstract Lorg/apache/commons/io/file/Counters$PathCounters;
.super Ljava/lang/Object;
.source "Counters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathCounters"
.end annotation


# virtual methods
.method public abstract getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;
.end method

.method public abstract getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;
.end method

.method public abstract getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;
.end method

.method public reset()V
    .locals 0

    return-void
.end method
