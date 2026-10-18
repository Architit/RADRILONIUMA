.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableLongConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    return-void
.end method
