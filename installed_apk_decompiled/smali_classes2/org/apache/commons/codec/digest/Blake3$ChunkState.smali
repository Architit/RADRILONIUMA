.class final Lorg/apache/commons/codec/digest/Blake3$ChunkState;
.super Ljava/lang/Object;
.source "Blake3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/Blake3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkState"
.end annotation


# instance fields
.field private final block:[B

.field private blockLength:I

.field private blocksCompressed:I

.field private chainingValue:[I

.field private final chunkCounter:J

.field private final flags:I


# direct methods
.method private constructor <init>([IJI)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 84
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->block:[B

    .line 89
    iput-object p1, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chainingValue:[I

    .line 90
    iput-wide p2, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chunkCounter:J

    .line 91
    iput p4, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->flags:I

    return-void
.end method

.method synthetic constructor <init>([IJILorg/apache/commons/codec/digest/Blake3$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;-><init>([IJI)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)I
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->length()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)Lorg/apache/commons/codec/digest/Blake3$Output;
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->output()Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)J
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chunkCounter:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/apache/commons/codec/digest/Blake3$ChunkState;[BII)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->update([BII)V

    return-void
.end method

.method private length()I
    .locals 2

    .line 95
    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blocksCompressed:I

    mul-int/lit8 v0, v0, 0x40

    iget v1, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method private output()Lorg/apache/commons/codec/digest/Blake3$Output;
    .locals 10

    .line 99
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->block:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->access$000([BI)[I

    move-result-object v4

    .line 100
    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->flags:I

    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->startFlag()I

    move-result v1

    or-int/2addr v0, v1

    or-int/lit8 v8, v0, 0x2

    .line 101
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$Output;

    iget-object v3, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chainingValue:[I

    iget-wide v5, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chunkCounter:J

    iget v7, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/codec/digest/Blake3$Output;-><init>([I[IJIILorg/apache/commons/codec/digest/Blake3$1;)V

    return-object v0
.end method

.method private startFlag()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blocksCompressed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private update([BII)V
    .locals 9

    :goto_0
    if-lez p3, :cond_1

    .line 110
    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->block:[B

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/apache/commons/codec/digest/Blake3;->access$000([BI)[I

    move-result-object v4

    .line 114
    iget-object v3, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chainingValue:[I

    iget-wide v6, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chunkCounter:J

    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->flags:I

    .line 115
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->startFlag()I

    move-result v2

    or-int v8, v0, v2

    const/16 v5, 0x40

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/digest/Blake3;->access$200([I[IIJI)[I

    move-result-object v0

    const/16 v2, 0x8

    .line 114
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->chainingValue:[I

    .line 117
    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blocksCompressed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blocksCompressed:I

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    .line 119
    iget-object v2, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->block:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 122
    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    sub-int/2addr v1, v0

    .line 123
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    iget-object v1, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->block:[B

    iget v2, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v1, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->blockLength:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
