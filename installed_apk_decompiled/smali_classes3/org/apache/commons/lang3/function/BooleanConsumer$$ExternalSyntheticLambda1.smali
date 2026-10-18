.class public final synthetic Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/BooleanConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/BooleanConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/BooleanConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/BooleanConsumer;Lorg/apache/commons/lang3/function/BooleanConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/BooleanConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/BooleanConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/BooleanConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/BooleanConsumer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/BooleanConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/BooleanConsumer;Lorg/apache/commons/lang3/function/BooleanConsumer;Z)V

    return-void
.end method
