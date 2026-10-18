.class public final synthetic Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOFunction;->lambda$compose$5(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
