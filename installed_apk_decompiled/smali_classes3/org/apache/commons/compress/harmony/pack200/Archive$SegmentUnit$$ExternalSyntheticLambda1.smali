.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->lambda$new$1(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)I

    move-result p1

    return p1
.end method
