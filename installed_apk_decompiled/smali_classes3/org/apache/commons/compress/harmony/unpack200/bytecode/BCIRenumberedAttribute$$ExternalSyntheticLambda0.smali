.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;->f$1:[I

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;->f$1:[I

    invoke-static {v0, v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->lambda$renumber$0(Ljava/util/List;[II)I

    move-result p1

    return p1
.end method
