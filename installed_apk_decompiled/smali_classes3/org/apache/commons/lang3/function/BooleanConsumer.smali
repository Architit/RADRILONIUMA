.class public interface abstract Lorg/apache/commons/lang3/function/BooleanConsumer;
.super Ljava/lang/Object;
.source "BooleanConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/BooleanConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/BooleanConsumer;->NOP:Lorg/apache/commons/lang3/function/BooleanConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/BooleanConsumer;Lorg/apache/commons/lang3/function/BooleanConsumer;Z)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/BooleanConsumer;

    .line 64
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/BooleanConsumer;->accept(Z)V

    .line 65
    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/BooleanConsumer;->accept(Z)V

    return-void
.end method

.method public static synthetic lambda$static$0(Z)V
    .locals 0

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/BooleanConsumer;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/commons/lang3/function/BooleanConsumer;->NOP:Lorg/apache/commons/lang3/function/BooleanConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Z)V
.end method

.method public andThen(Lorg/apache/commons/lang3/function/BooleanConsumer;)Lorg/apache/commons/lang3/function/BooleanConsumer;
    .locals 1

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/BooleanConsumer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/BooleanConsumer;Lorg/apache/commons/lang3/function/BooleanConsumer;)V

    return-object v0
.end method
