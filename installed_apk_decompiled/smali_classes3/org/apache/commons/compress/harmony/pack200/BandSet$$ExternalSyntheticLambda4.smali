.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->lambda$encodeWithPopulationCodec$1(Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
