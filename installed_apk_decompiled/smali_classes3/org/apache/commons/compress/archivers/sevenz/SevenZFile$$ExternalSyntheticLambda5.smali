.class public final synthetic Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->lambda$checkEntryIsInitialized$0(Ljava/lang/Integer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object p1

    return-object p1
.end method
