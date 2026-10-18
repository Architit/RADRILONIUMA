.class public final synthetic Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/concurrent/Computable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/Computable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/Computable;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->lambda$new$1(Lorg/apache/commons/lang3/concurrent/Computable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
