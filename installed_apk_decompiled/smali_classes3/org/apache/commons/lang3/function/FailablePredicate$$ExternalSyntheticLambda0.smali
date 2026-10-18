.class public final synthetic Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailablePredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailablePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailablePredicate;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
