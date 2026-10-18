.class public final Lcom/radriloniuma/os/storage/ArchivatorStorageEngine$DefaultImpls;
.super Ljava/lang/Object;
.source "ArchivatorStorageEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic storeMessage$default(Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/MessagePayload;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/radriloniuma/os/core/model/MessageQuantum;
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 20
    invoke-interface/range {v0 .. v5}, Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;->storeMessage(Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/MessagePayload;Ljava/util/List;Ljava/util/List;)Lcom/radriloniuma/os/core/model/MessageQuantum;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: storeMessage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
