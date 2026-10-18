.class public interface abstract Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;
.super Ljava/lang/Object;
.source "ArchivatorStorageEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/radriloniuma/os/storage/ArchivatorStorageEngine$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\n\u001a\u00020\u000bH&J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rH&J@\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r2\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\rH&J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;",
        "",
        "deleteMessage",
        "",
        "id",
        "",
        "getMessage",
        "Lcom/radriloniuma/os/core/model/MessageQuantum;",
        "getMessageDirectory",
        "Ljava/io/File;",
        "initialize",
        "",
        "listAllMessageIds",
        "",
        "storeMessage",
        "authorAgentId",
        "payload",
        "Lcom/radriloniuma/os/core/model/MessagePayload;",
        "domainTags",
        "assets",
        "Lcom/radriloniuma/os/core/model/AssetAttachment;",
        "verifyIntegrity",
        "Lcom/radriloniuma/os/core/model/IntegrityResult;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract deleteMessage(Ljava/lang/String;)Z
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/MessageQuantum;
.end method

.method public abstract getMessageDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract initialize()V
.end method

.method public abstract listAllMessageIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract storeMessage(Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/MessagePayload;Ljava/util/List;Ljava/util/List;)Lcom/radriloniuma/os/core/model/MessageQuantum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/radriloniuma/os/core/model/MessagePayload;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/radriloniuma/os/core/model/AssetAttachment;",
            ">;)",
            "Lcom/radriloniuma/os/core/model/MessageQuantum;"
        }
    .end annotation
.end method

.method public abstract verifyIntegrity(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/IntegrityResult;
.end method
