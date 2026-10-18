.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/PackingUtils$$ExternalSyntheticLambda0;
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
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->lambda$reorderPackingFiles$0(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)I

    move-result p1

    return p1
.end method
