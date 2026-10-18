.class public final synthetic Lorg/apache/commons/io/function/IOBinaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOBinaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBinaryOperator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOBinaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOBinaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOBinaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOBinaryOperator;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOBinaryOperator;->lambda$asBinaryOperator$2(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
