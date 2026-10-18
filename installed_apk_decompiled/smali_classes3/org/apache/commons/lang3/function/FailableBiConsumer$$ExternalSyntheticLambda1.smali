.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
