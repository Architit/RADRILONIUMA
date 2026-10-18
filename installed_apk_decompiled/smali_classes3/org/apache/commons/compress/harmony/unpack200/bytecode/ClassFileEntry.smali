.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
.super Ljava/lang/Object;
.source "ClassFileEntry.java"


# static fields
.field protected static final NONE:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;


# instance fields
.field private resolved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->NONE:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doWrite(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->NONE:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method protected objectHashCode()I
    .locals 1

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 0

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolved:Z

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolved:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->doWrite(Ljava/io/DataOutputStream;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has not been resolved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
