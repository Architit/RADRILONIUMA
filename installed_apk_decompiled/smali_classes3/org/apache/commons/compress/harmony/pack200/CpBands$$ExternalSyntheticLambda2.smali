.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/BiFunction;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->lambda$addIndices$1(Ljava/util/Map;Ljava/util/function/BiFunction;Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;)V

    return-void
.end method
