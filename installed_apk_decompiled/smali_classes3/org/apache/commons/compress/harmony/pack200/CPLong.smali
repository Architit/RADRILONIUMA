.class public Lorg/apache/commons/compress/harmony/pack200/CPLong;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPLong.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPLong;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 34
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->value:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPLong;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPLong;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPLong;)I
    .locals 4

    .line 39
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->value:J

    iget-wide v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public getLong()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
