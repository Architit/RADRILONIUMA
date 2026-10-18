.class public final synthetic Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOConsumer;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Ljava/util/function/BiFunction;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$0:Lorg/apache/commons/io/function/IOConsumer;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$2:Ljava/util/function/BiFunction;

    iput-object p4, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$0:Lorg/apache/commons/io/function/IOConsumer;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$2:Ljava/util/function/BiFunction;

    iget-object v3, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/commons/io/function/IOStream;->lambda$forAll$11(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V

    return-void
.end method
