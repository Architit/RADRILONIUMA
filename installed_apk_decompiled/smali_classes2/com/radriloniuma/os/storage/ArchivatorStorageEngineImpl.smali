.class public final Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;
.super Ljava/lang/Object;
.source "ArchivatorStorageEngineImpl.kt"

# interfaces
.implements Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArchivatorStorageEngineImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArchivatorStorageEngineImpl.kt\ncom/radriloniuma/os/storage/ArchivatorStorageEngineImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,226:1\n13309#2,2:227\n13309#2,2:229\n3792#2:231\n4307#2,2:232\n1549#3:234\n1620#3,3:235\n*S KotlinDebug\n*F\n+ 1 ArchivatorStorageEngineImpl.kt\ncom/radriloniuma/os/storage/ArchivatorStorageEngineImpl\n*L\n37#1:227,2\n176#1:229,2\n197#1:231\n197#1:232,2\n198#1:234\n198#1:235,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0019H\u0016J<\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00192\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u0019H\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;",
        "Lcom/radriloniuma/os/storage/ArchivatorStorageEngine;",
        "rootDir",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "agentsDir",
        "domainsDir",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "messagesDir",
        "getRootDir",
        "()Ljava/io/File;",
        "stagingDir",
        "deleteMessage",
        "",
        "id",
        "",
        "getMessage",
        "Lcom/radriloniuma/os/core/model/MessageQuantum;",
        "getMessageDirectory",
        "guessMimeType",
        "filename",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final agentsDir:Ljava/io/File;

.field private final domainsDir:Ljava/io/File;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final messagesDir:Ljava/io/File;

.field private final rootDir:Ljava/io/File;

.field private final stagingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const-string v0, "rootDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->rootDir:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, ".staging"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->stagingDir:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    const-string v1, "messages"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "domains"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->domainsDir:Ljava/io/File;

    .line 24
    new-instance v0, Ljava/io/File;

    const-string v1, "agents"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->agentsDir:Ljava/io/File;

    .line 26
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final guessMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 216
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    const-string p1, "application/json"

    goto :goto_1

    .line 216
    :sswitch_1
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_2
    const-string v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_3
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    const-string p1, "image/png"

    goto :goto_1

    .line 216
    :sswitch_4
    const-string v0, "pcm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    const-string p1, "audio/pcm"

    goto :goto_1

    .line 216
    :sswitch_5
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 218
    :cond_3
    const-string p1, "image/jpeg"

    goto :goto_1

    .line 216
    :sswitch_6
    const-string v0, "md"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 221
    :cond_4
    const-string p1, "text/plain"

    goto :goto_1

    .line 222
    :goto_0
    const-string p1, "application/octet-stream"

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xd97 -> :sswitch_6
        0x19be1 -> :sswitch_5
        0x1b0da -> :sswitch_4
        0x1b229 -> :sswitch_3
        0x1c270 -> :sswitch_2
        0x31e068 -> :sswitch_1
        0x31ece8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public deleteMessage(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sanitizeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 206
    :cond_0
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public getMessage(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/MessageQuantum;
    .locals 10

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sanitizeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 163
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v2, "metadata.json"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/io/File;

    const-string v3, "payload.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    new-instance v3, Ljava/io/File;

    const-string v4, "assets"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    sget-object v0, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->INSTANCE:Lcom/radriloniuma/os/storage/MessageJsonSerializer;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->deserializeMetadata(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/MessageMetadata;

    move-result-object p1

    .line 172
    sget-object v0, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->INSTANCE:Lcom/radriloniuma/os/storage/MessageJsonSerializer;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->deserializePayload(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/MessagePayload;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 175
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 229
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 177
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v6

    .line 179
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    new-instance v9, Lcom/radriloniuma/os/core/model/AssetAttachment;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v5, v7, v6}, Lcom/radriloniuma/os/core/model/AssetAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_3
    new-instance v2, Lcom/radriloniuma/os/core/model/MessageQuantum;

    invoke-direct {v2, p1, v0, v1}, Lcom/radriloniuma/os/core/model/MessageQuantum;-><init>(Lcom/radriloniuma/os/core/model/MessageMetadata;Lcom/radriloniuma/os/core/model/MessagePayload;Ljava/util/List;)V

    return-object v2

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getMessageDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sanitizeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getRootDir()Ljava/io/File;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->stagingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->stagingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->agentsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->agentsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_4
    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->stagingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 227
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 39
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_1

    .line 41
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public listAllMessageIds()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 232
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "msg_"

    const-string v6, "getName(...)"

    if-ge v4, v2, :cond_2

    aget-object v7, v0, v4

    .line 197
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static {v8, v5, v3, v6, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 231
    check-cast v1, Ljava/lang/Iterable;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 235
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 236
    check-cast v2, Ljava/io/File;

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 234
    check-cast v0, Ljava/lang/Iterable;

    .line 199
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public storeMessage(Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/MessagePayload;Ljava/util/List;Ljava/util/List;)Lcom/radriloniuma/os/core/model/MessageQuantum;
    .locals 29
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "getBytes(...)"

    const-string v5, "tmp_"

    const-string v6, "Message with id msg_"

    const-string v7, "id"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "authorAgentId"

    move-object/from16 v14, p2

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "payload"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "domainTags"

    move-object/from16 v15, p4

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "assets"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v8, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v8, v0}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sanitizeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 55
    new-instance v11, Ljava/io/File;

    iget-object v0, v1, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "msg_"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    iget-object v0, v1, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v28, v0

    check-cast v28, Ljava/util/concurrent/locks/Lock;

    invoke-interface/range {v28 .. v28}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 62
    new-instance v6, Ljava/io/File;

    iget-object v0, v1, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->stagingDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {v6}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 66
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 70
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 74
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 77
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v12, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/radriloniuma/os/core/model/AssetAttachment;

    .line 78
    sget-object v10, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v8}, Lcom/radriloniuma/os/core/model/AssetAttachment;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 80
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    move-object v0, v10

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 v17, v7

    .line 81
    invoke-virtual {v8}, Lcom/radriloniuma/os/core/model/AssetAttachment;->getData()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 80
    :try_start_3
    invoke-static {v10, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    sget-object v0, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v8}, Lcom/radriloniuma/os/core/model/AssetAttachment;->getData()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sha256([B)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v8}, Lcom/radriloniuma/os/core/model/AssetAttachment;->getData()[B

    move-result-object v0

    array-length v0, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    int-to-long v0, v0

    add-long/2addr v12, v0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v7, v17

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 80
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 90
    :cond_1
    sget-object v0, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->INSTANCE:Lcom/radriloniuma/os/storage/MessageJsonSerializer;

    invoke-virtual {v0, v2}, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->serializePayload(Lcom/radriloniuma/os/core/model/MessagePayload;)Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/io/File;

    const-string v7, "payload.json"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v7, Ljava/io/Closeable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    move-object v1, v7

    check-cast v1, Ljava/io/FileOutputStream;

    .line 94
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 96
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v1, 0x0

    .line 93
    :try_start_7
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    sget-object v7, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v7, v0}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sha256([B)Ljava/lang/String;

    move-result-object v7

    .line 100
    sget-object v8, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v8, v7, v5}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->computeCompositeChecksum(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v19

    .line 103
    new-instance v8, Lcom/radriloniuma/os/core/model/MessageMetadata;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 108
    const-string v18, "BROADCAST"

    .line 109
    const-string v20, "CORE_BUS"

    .line 110
    const-string v21, "AGENT_EVENT"

    .line 115
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v22

    .line 116
    array-length v0, v0

    int-to-long v1, v0

    add-long v23, v1, v12

    .line 117
    sget-object v25, Lcom/radriloniuma/os/core/model/SyncStatus;->PENDING:Lcom/radriloniuma/os/core/model/SyncStatus;

    const/16 v26, 0x8

    const/16 v27, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v13, 0x0

    move-object v1, v8

    move-object v2, v11

    move-wide/from16 v11, v16

    move-object/from16 v14, p2

    move-object/from16 v15, v18

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, p4

    move-object/from16 v20, v7

    move-object/from16 v21, v5

    .line 103
    invoke-direct/range {v8 .. v27}, Lcom/radriloniuma/os/core/model/MessageMetadata;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    sget-object v5, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->INSTANCE:Lcom/radriloniuma/os/storage/MessageJsonSerializer;

    invoke-virtual {v5, v1}, Lcom/radriloniuma/os/storage/MessageJsonSerializer;->serializeMetadata(Lcom/radriloniuma/os/core/model/MessageMetadata;)Ljava/lang/String;

    move-result-object v5

    .line 121
    new-instance v7, Ljava/io/File;

    const-string v8, "metadata.json"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v8, Ljava/io/Closeable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    move-object v7, v8

    check-cast v7, Ljava/io/FileOutputStream;

    .line 123
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 125
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 122
    :try_start_9
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 130
    :try_start_a
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    .line 132
    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 129
    invoke-static {v0, v4, v5}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_1

    :catch_0
    move-exception v0

    .line 136
    :try_start_b
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    :goto_1
    new-instance v0, Lcom/radriloniuma/os/core/model/MessageQuantum;

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/radriloniuma/os/core/model/MessageQuantum;-><init>(Lcom/radriloniuma/os/core/model/MessageMetadata;Lcom/radriloniuma/os/core/model/MessagePayload;Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    invoke-interface/range {v28 .. v28}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 137
    :cond_2
    :try_start_c
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to commit staging directory to canonical archive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 122
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 93
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catch_1
    move-exception v0

    .line 148
    :try_start_11
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-static {v6}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 151
    :cond_3
    throw v0

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists in canonical archive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    .line 151
    invoke-interface/range {v28 .. v28}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public verifyIntegrity(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/IntegrityResult;
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->INSTANCE:Lcom/radriloniuma/os/storage/StorageSecurityUtils;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/storage/StorageSecurityUtils;->sanitizeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/radriloniuma/os/storage/ArchivatorStorageEngineImpl;->messagesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/radriloniuma/os/storage/IntegrityChecker;->INSTANCE:Lcom/radriloniuma/os/storage/IntegrityChecker;

    invoke-virtual {v1, v0, p1}, Lcom/radriloniuma/os/storage/IntegrityChecker;->verify(Ljava/io/File;Ljava/lang/String;)Lcom/radriloniuma/os/core/model/IntegrityResult;

    move-result-object p1

    return-object p1
.end method
