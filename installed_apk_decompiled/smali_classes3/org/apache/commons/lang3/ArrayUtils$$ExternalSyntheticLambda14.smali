.class public final synthetic Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[D


# direct methods
.method public synthetic constructor <init>([D)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda14;->f$0:[D

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda14;->f$0:[D

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->lambda$toObject$18([DI)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
