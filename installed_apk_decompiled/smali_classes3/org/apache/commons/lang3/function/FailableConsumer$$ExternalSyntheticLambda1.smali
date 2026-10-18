.class public final synthetic Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->lambda$andThen$0(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
