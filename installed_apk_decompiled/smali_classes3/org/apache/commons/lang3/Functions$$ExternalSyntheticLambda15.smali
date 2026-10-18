.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:[Lorg/apache/commons/lang3/Functions$FailableRunnable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([Lorg/apache/commons/lang3/Functions$FailableRunnable;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;->f$0:[Lorg/apache/commons/lang3/Functions$FailableRunnable;

    iput p2, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;->f$0:[Lorg/apache/commons/lang3/Functions$FailableRunnable;

    iget v1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;->f$1:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Functions;->lambda$tryWithResources$15([Lorg/apache/commons/lang3/Functions$FailableRunnable;I)V

    return-void
.end method
