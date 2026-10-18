.class public final synthetic Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableRunnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableRunnable;

    check-cast p1, Ljava/time/Instant;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DurationUtils;->lambda$of$0(Lorg/apache/commons/lang3/function/FailableRunnable;Ljava/time/Instant;)V

    return-void
.end method
