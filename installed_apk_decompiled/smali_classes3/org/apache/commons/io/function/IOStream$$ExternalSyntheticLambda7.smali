.class public final synthetic Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOBiFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBiFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/io/function/IOBiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/io/function/IOBiFunction;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->lambda$reduce$21(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
