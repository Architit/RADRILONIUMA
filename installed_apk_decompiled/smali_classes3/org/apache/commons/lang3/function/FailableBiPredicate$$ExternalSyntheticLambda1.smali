.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
