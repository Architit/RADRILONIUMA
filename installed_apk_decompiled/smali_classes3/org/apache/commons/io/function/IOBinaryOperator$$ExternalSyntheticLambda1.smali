.class public final synthetic Lorg/apache/commons/io/function/IOBinaryOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOBinaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOComparator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOComparator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOBinaryOperator$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/function/IOComparator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOBinaryOperator$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/function/IOComparator;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOBinaryOperator;->lambda$maxBy$0(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
