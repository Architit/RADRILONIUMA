.class public final synthetic Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/concurrent/Computable;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/concurrent/Computable;

    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/concurrent/Computable;

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->lambda$new$0(Lorg/apache/commons/lang3/concurrent/Computable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
