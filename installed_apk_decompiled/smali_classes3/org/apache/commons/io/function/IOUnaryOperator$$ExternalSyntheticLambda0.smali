.class public final synthetic Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOUnaryOperator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOUnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOUnaryOperator;

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOUnaryOperator;->lambda$asUnaryOperator$1(Lorg/apache/commons/io/function/IOUnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
