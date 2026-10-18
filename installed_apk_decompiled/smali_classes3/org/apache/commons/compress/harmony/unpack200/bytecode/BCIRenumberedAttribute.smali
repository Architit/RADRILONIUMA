.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
.source "BCIRenumberedAttribute.java"


# instance fields
.field protected renumbered:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    return-void
.end method

.method static synthetic lambda$renumber$0(Ljava/util/List;[II)I
    .locals 0

    .line 80
    aget p1, p1, p2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract getLength()I
.end method

.method protected abstract getStartPCs()[I
.end method

.method public hasBCIRenumbering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumbered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumbered:Z

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->getStartPCs()[I

    move-result-object v0

    .line 80
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;[I)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Trying to renumber a line number table that has already been renumbered"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method protected abstract writeBody(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
