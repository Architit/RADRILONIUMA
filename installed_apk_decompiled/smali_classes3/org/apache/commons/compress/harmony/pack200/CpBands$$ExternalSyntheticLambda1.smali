.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->lambda$addIndices$0(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
