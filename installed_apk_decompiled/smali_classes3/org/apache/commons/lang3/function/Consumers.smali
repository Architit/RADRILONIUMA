.class public Lorg/apache/commons/lang3/function/Consumers;
.super Ljava/lang/Object;
.source "Consumers.java"


# static fields
.field private static final NOP:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/lang3/function/Consumers$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/function/Consumers$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;)V

    sput-object v1, Lorg/apache/commons/lang3/function/Consumers;->NOP:Ljava/util/function/Consumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static nop()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/apache/commons/lang3/function/Consumers;->NOP:Ljava/util/function/Consumer;

    return-object v0
.end method
