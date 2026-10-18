.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda5;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda5;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->lambda$encodeWithPopulationCodec$2(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
