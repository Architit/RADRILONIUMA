.class final Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;
.super Ljava/lang/Object;
.source "SegmentHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Counter"
.end annotation


# instance fields
.field private final counts:[I

.field private length:I

.field private final objs:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 34
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->objs:[I

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->counts:[I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 40
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->length:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 41
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->objs:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 42
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->counts:[I

    aget v3, v2, v1

    add-int/2addr v3, v4

    aput v3, v2, v1

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 47
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->objs:[I

    aput p1, v1, v3

    .line 48
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->counts:[I

    aput v4, p1, v3

    add-int/2addr v3, v4

    .line 49
    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->length:I

    .line 50
    array-length p1, v1

    sub-int/2addr p1, v4

    if-le v3, p1, :cond_2

    .line 51
    array-length p1, v1

    add-int/lit8 p1, p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    .line 52
    invoke-static {v1, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public getMostCommon()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->length:I

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->counts:[I

    aget v3, v2, v0

    aget v2, v2, v1

    if-le v3, v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->objs:[I

    aget v0, v0, v1

    return v0
.end method
