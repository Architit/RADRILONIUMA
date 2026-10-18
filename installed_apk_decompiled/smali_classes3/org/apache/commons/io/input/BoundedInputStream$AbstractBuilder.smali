.class abstract Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "BoundedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/BoundedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<",
        "TT;>;>",
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/BoundedInputStream;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private count:J

.field private maxCount:J

.field private onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private propagateClose:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    const-wide/16 v0, -0x1

    .line 102
    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->maxCount:J

    .line 104
    invoke-static {}, Lorg/apache/commons/io/function/IOBiConsumer;->noop()Lorg/apache/commons/io/function/IOBiConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->propagateClose:Z

    return-void
.end method


# virtual methods
.method getCount()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->count:J

    return-wide v0
.end method

.method getMaxCount()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->maxCount:J

    return-wide v0
.end method

.method getOnMaxCount()Lorg/apache/commons/io/function/IOBiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;

    return-object v0
.end method

.method isPropagateClose()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->propagateClose:Z

    return v0
.end method

.method public setCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 138
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->count:J

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object p1
.end method

.method public setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 152
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->maxCount:J

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object p1
.end method

.method public setOnMaxCount(Lorg/apache/commons/io/function/IOBiConsumer;)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/function/IOBiConsumer;->noop()Lorg/apache/commons/io/function/IOBiConsumer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object p1
.end method

.method public setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 186
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->propagateClose:Z

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object p1
.end method
