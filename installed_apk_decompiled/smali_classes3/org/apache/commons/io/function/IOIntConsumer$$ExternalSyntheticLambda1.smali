.class public final synthetic Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOIntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOIntConsumer;

.field public final synthetic f$1:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/function/IOIntConsumer;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/io/function/IOIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/function/IOIntConsumer;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/io/function/IOIntConsumer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->lambda$andThen$1(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;I)V

    return-void
.end method
