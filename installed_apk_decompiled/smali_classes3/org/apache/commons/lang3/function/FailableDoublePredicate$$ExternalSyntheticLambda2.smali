.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$negate$3(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p1

    return p1
.end method
