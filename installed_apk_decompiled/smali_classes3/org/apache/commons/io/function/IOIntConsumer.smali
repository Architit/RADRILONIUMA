.class public interface abstract Lorg/apache/commons/io/function/IOIntConsumer;
.super Ljava/lang/Object;
.source "IOIntConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOOP:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/IOIntConsumer;->NOOP:Lorg/apache/commons/io/function/IOIntConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;I)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOIntConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOIntConsumer;->accept(I)V

    .line 62
    invoke-interface {p1, p2}, Lorg/apache/commons/io/function/IOIntConsumer;->accept(I)V

    return-void
.end method

.method public static synthetic lambda$asConsumer$2(Lorg/apache/commons/io/function/IOIntConsumer;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOIntConsumer;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    return-void
.end method

.method public static synthetic lambda$asIntConsumer$3(Lorg/apache/commons/io/function/IOIntConsumer;I)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOIntConsumer;

    .line 81
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    return-void
.end method

.method public static synthetic lambda$static$0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public abstract accept(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;)V

    return-object v0
.end method

.method public asConsumer()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOIntConsumer;)V

    return-object v0
.end method

.method public asIntConsumer()Ljava/util/function/IntConsumer;
    .locals 1

    .line 81
    new-instance v0, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOIntConsumer$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/function/IOIntConsumer;)V

    return-object v0
.end method
