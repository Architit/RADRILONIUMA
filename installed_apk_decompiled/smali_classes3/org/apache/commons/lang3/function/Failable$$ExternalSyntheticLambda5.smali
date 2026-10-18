.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/lang3/function/FailableRunnable;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->lambda$tryWithResources$19(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    return-void
.end method
