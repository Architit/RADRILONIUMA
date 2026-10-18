.class public Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;
.super Ljava/lang/Object;
.source "SegmentConstantPoolArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;
    }
.end annotation


# instance fields
.field protected knownArrays:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "[",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;",
            ">;"
        }
    .end annotation
.end field

.field protected lastArray:[Ljava/lang/String;

.field protected lastIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lastKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->knownArrays:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method protected arrayIsCached([Ljava/lang/String;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->knownArrays:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;->lastKnownSize()I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected cacheArray([Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->arrayIsCached([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->knownArrays:Ljava/util/IdentityHashMap;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;-><init>(Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastArray:[Ljava/lang/String;

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to cache an array that already exists"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexesForArrayKey([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->arrayIsCached([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->cacheArray([Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastArray:[Ljava/lang/String;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastKey:Ljava/lang/String;

    if-ne v0, p2, :cond_1

    .line 137
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastIndexes:Ljava/util/List;

    return-object p1

    .line 141
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastArray:[Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastKey:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->knownArrays:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache$CachedArray;->indexesForKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPoolArrayCache;->lastIndexes:Ljava/util/List;

    return-object p1
.end method
