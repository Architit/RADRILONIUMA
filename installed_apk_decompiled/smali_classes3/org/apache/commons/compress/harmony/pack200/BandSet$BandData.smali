.class public Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;
.super Ljava/lang/Object;
.source "BandSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/BandSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BandData"
.end annotation


# instance fields
.field private averageAbsoluteDelta:D

.field private averageAbsoluteValue:D

.field private final band:[I

.field private deltaIsAscending:I

.field private distinctValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private largest:I

.field private largestDelta:I

.field private smallDeltaCount:I

.field private smallest:I

.field private smallestDelta:I

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/BandSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/BandSet;[I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->this$0:Lorg/apache/commons/compress/harmony/pack200/BandSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 73
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    const/high16 v0, -0x80000000

    .line 74
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    .line 92
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 94
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_a

    .line 95
    aget v4, p2, v3

    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    if-ge v4, v5, :cond_0

    .line 96
    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    .line 98
    :cond_0
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    if-le v4, v5, :cond_1

    .line 99
    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    :cond_1
    if-eqz v3, :cond_5

    add-int/lit8 v5, v3, -0x1

    .line 102
    aget v5, p2, v5

    sub-int/2addr v4, v5

    .line 103
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    if-ge v4, v5, :cond_2

    .line 104
    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    .line 106
    :cond_2
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    if-le v4, v5, :cond_3

    .line 107
    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    :cond_3
    if-ltz v4, :cond_4

    .line 110
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->deltaIsAscending:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->deltaIsAscending:I

    .line 112
    :cond_4
    iget-wide v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteDelta:D

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    array-length v9, p2

    sub-int/2addr v9, v0

    int-to-double v9, v9

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteDelta:D

    .line 113
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x100

    if-ge v4, v5, :cond_6

    .line 114
    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallDeltaCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallDeltaCount:I

    goto :goto_1

    .line 117
    :cond_5
    aget v4, p2, v2

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    .line 118
    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    .line 120
    :cond_6
    :goto_1
    iget-wide v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteValue:D

    aget v6, p2, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    array-length v8, p2

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteValue:D

    .line 121
    iget v4, p1, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    .line 122
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    if-nez v4, :cond_7

    .line 123
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    .line 125
    :cond_7
    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 126
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_8

    move-object v5, v1

    goto :goto_2

    .line 130
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 132
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)Ljava/util/Map;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    return p0
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    return p0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    return p0
.end method


# virtual methods
.method public anyNegatives()Z
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mainlyPositiveDeltas()Z
    .locals 2

    .line 153
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->deltaIsAscending:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mainlySmallDeltas()Z
    .locals 2

    .line 163
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallDeltaCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public numDistinctValues()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    array-length v0, v0

    return v0

    .line 175
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public wellCorrelated()Z
    .locals 4

    .line 185
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteDelta:D

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
