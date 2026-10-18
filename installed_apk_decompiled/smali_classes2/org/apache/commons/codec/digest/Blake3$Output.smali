.class final Lorg/apache/commons/codec/digest/Blake3$Output;
.super Ljava/lang/Object;
.source "Blake3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/Blake3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Output"
.end annotation


# instance fields
.field private final blockLength:I

.field private final blockWords:[I

.field private final counter:J

.field private final flags:I

.field private final inputChainingValue:[I


# direct methods
.method private constructor <init>([I[IJII)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->inputChainingValue:[I

    .line 228
    iput-object p2, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->blockWords:[I

    .line 229
    iput-wide p3, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->counter:J

    .line 230
    iput p5, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->blockLength:I

    .line 231
    iput p6, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->flags:I

    return-void
.end method

.method synthetic constructor <init>([I[IJIILorg/apache/commons/codec/digest/Blake3$1;)V
    .locals 0

    .line 218
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/codec/digest/Blake3$Output;-><init>([I[IJII)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/commons/codec/digest/Blake3$Output;[BII)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$Output;->rootOutputBytes([BII)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/commons/codec/digest/Blake3$Output;)[I
    .locals 0

    .line 218
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/Blake3$Output;->chainingValue()[I

    move-result-object p0

    return-object p0
.end method

.method private chainingValue()[I
    .locals 6

    .line 235
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->inputChainingValue:[I

    iget-object v1, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->blockWords:[I

    iget v2, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->blockLength:I

    iget-wide v3, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->counter:J

    iget v5, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->flags:I

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/digest/Blake3;->access$200([I[IIJI)[I

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method private rootOutputBytes([BII)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez p3, :cond_1

    const/16 v2, 0x40

    .line 241
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p3, v2

    .line 243
    iget-object v3, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->inputChainingValue:[I

    iget-object v4, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->blockWords:[I

    iget v5, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->blockLength:I

    add-int/lit8 v9, v1, 0x1

    int-to-long v6, v1

    iget v1, p0, Lorg/apache/commons/codec/digest/Blake3$Output;->flags:I

    or-int/lit8 v8, v1, 0x8

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/digest/Blake3;->access$200([I[IIJI)[I

    move-result-object v1

    move v3, v0

    :goto_1
    if-lez v2, :cond_0

    const/4 v4, 0x4

    .line 246
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 247
    aget v3, v1, v3

    invoke-static {v3, p1, p2, v4}, Lorg/apache/commons/codec/digest/Blake3;->access$1200(I[BII)V

    add-int/2addr p2, v4

    sub-int/2addr v2, v4

    move v3, v5

    goto :goto_1

    :cond_0
    move v1, v9

    goto :goto_0

    :cond_1
    return-void
.end method
