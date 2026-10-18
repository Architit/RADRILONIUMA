.class public final synthetic Lorg/apache/commons/io/function/UncheckedIOBaseStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IORunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/UncheckedIOBaseStream$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOBaseStream$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/apache/commons/io/function/UncheckedIOBaseStream;->lambda$onClose$0(Ljava/lang/Runnable;)V

    return-void
.end method
