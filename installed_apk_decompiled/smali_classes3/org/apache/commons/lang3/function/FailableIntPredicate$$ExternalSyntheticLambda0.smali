.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z

    move-result p1

    return p1
.end method
