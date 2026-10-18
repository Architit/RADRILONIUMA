.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda2;->f$0:[J

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda2;->f$0:[J

    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->lambda$encodeFlags$0([JI)I

    move-result p1

    return p1
.end method
