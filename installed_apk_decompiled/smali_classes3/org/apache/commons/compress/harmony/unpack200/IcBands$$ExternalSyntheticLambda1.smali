.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/IcBands$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->lambda$getRelevantIcTuples$0(Lorg/apache/commons/compress/harmony/unpack200/IcTuple;Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)I

    move-result p1

    return p1
.end method
