.class public final synthetic Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/TriConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/TriConsumer;Lorg/apache/commons/lang3/function/TriConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/TriConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/TriConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/TriConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/TriConsumer;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/function/TriConsumer;->lambda$andThen$0(Lorg/apache/commons/lang3/function/TriConsumer;Lorg/apache/commons/lang3/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
