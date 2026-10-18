.class public final synthetic Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;

    check-cast p1, Ljava/lang/ThreadGroup;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;->test(Ljava/lang/ThreadGroup;)Z

    move-result p1

    return p1
.end method
