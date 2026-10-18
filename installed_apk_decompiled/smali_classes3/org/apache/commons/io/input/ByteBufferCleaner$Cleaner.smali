.class interface abstract Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;
.super Ljava/lang/Object;
.source "ByteBufferCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ByteBufferCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Cleaner"
.end annotation


# virtual methods
.method public abstract clean(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation
.end method
