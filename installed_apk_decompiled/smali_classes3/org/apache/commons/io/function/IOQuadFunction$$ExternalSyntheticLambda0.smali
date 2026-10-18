.class public final synthetic Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOQuadFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOQuadFunction;

.field public final synthetic f$1:Lorg/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOQuadFunction;Lorg/apache/commons/io/function/IOFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOQuadFunction;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/io/function/IOFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOQuadFunction;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/io/function/IOFunction;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/function/IOQuadFunction;->lambda$andThen$0(Lorg/apache/commons/io/function/IOQuadFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
