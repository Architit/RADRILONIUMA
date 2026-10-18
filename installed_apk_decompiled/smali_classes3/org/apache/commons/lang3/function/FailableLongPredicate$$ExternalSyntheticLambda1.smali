.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableLongPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongPredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->lambda$negate$3(Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z

    move-result p1

    return p1
.end method
