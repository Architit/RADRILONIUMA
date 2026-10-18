.class public final synthetic Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->lambda$initialize$0(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;)V

    return-void
.end method
