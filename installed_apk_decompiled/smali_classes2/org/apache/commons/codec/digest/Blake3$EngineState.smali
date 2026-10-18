.class final Lorg/apache/commons/codec/digest/Blake3$EngineState;
.super Ljava/lang/Object;
.source "Blake3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/Blake3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EngineState"
.end annotation


# instance fields
.field private final cvStack:[[I

.field private final flags:I

.field private final key:[I

.field private stackLen:I

.field private state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;


# direct methods
.method private constructor <init>([II)V
    .locals 7

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x36

    .line 138
    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->cvStack:[[I

    .line 143
    iput-object p1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->key:[I

    .line 144
    iput p2, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->flags:I

    .line 145
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;-><init>([IJILorg/apache/commons/codec/digest/Blake3$1;)V

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    return-void
.end method

.method synthetic constructor <init>([IILorg/apache/commons/codec/digest/Blake3$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/digest/Blake3$EngineState;-><init>([II)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->inputData([BII)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->outputHash([BII)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/commons/codec/digest/Blake3$EngineState;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->reset()V

    return-void
.end method

.method private addChunkCV([IJ)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->popCV()[I

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->key:[I

    iget v2, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->flags:I

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/codec/digest/Blake3;->access$400([I[I[II)[I

    move-result-object p1

    const/4 v0, 0x1

    shr-long/2addr p2, v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->pushCV([I)V

    return-void
.end method

.method private inputData([BII)V
    .locals 12

    :goto_0
    if-lez p3, :cond_1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->access$500(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->access$600(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$Output;->access$700(Lorg/apache/commons/codec/digest/Blake3$Output;)[I

    move-result-object v0

    .line 172
    iget-object v2, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    invoke-static {v2}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->access$800(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v8, v2, v4

    .line 173
    invoke-direct {p0, v0, v8, v9}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->addChunkCV([IJ)V

    .line 174
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    iget-object v7, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->key:[I

    iget v10, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->flags:I

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;-><init>([IJILorg/apache/commons/codec/digest/Blake3$1;)V

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->access$500(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 179
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    iget-object v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    invoke-static {v1, p1, p2, v0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->access$900(Lorg/apache/commons/codec/digest/Blake3$ChunkState;[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private outputHash([BII)V
    .locals 5

    .line 190
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;->access$600(Lorg/apache/commons/codec/digest/Blake3$ChunkState;)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object v0

    .line 191
    iget v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->stackLen:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 193
    iget-object v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->cvStack:[[I

    aget-object v1, v1, v2

    .line 194
    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$Output;->access$700(Lorg/apache/commons/codec/digest/Blake3$Output;)[I

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->key:[I

    iget v4, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->flags:I

    invoke-static {v1, v0, v3, v4}, Lorg/apache/commons/codec/digest/Blake3;->access$1000([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object v0

    move v1, v2

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$Output;->access$1100(Lorg/apache/commons/codec/digest/Blake3$Output;[BII)V

    return-void
.end method

.method private popCV()[I
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->cvStack:[[I

    iget v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->stackLen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->stackLen:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private pushCV([I)V
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->cvStack:[[I

    iget v1, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->stackLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->stackLen:I

    aput-object p1, v0, v1

    return-void
.end method

.method private reset()V
    .locals 8

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->stackLen:I

    .line 209
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->cvStack:[[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    iget-object v3, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->key:[I

    iget v6, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->flags:I

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/codec/digest/Blake3$ChunkState;-><init>([IJILorg/apache/commons/codec/digest/Blake3$1;)V

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$EngineState;->state:Lorg/apache/commons/codec/digest/Blake3$ChunkState;

    return-void
.end method
