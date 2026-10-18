.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda8;->f$0:[J

    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda8;->f$0:[J

    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->lambda$parseCpDouble$8([JI)D

    move-result-wide v0

    return-wide v0
.end method
