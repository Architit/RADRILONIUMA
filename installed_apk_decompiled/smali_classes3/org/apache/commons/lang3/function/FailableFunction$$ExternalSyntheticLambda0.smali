.class public final synthetic Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableFunction;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableFunction;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableFunction;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
