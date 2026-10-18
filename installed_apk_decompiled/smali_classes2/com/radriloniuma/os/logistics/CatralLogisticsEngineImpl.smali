.class public final Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;
.super Ljava/lang/Object;
.source "CatralLogisticsEngineImpl.kt"

# interfaces
.implements Lcom/radriloniuma/os/logistics/CatralLogisticsEngine;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J*\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00130\u00192\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;",
        "Lcom/radriloniuma/os/logistics/CatralLogisticsEngine;",
        "storageRoot",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "domainsDir",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "messagesDir",
        "getDomainsForMessage",
        "",
        "",
        "msgId",
        "getMessagesInDomain",
        "domainTag",
        "getStorageRoot",
        "initialize",
        "",
        "isZeroCopyLink",
        "",
        "resolveDomainMessageDir",
        "sweepBrokenLinks",
        "",
        "tagMessage",
        "tagMessageMulti",
        "",
        "domainTags",
        "untagMessage",
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
.field private final domainsDir:Ljava/io/File;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final messagesDir:Ljava/io/File;

.field private final storageRoot:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$UaAACaL-8QyPpIdI8Fmvrr6F-b0(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->sweepBrokenLinks$lambda$5$lambda$4(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$awovumo4FLrN69sjwT53W4QkKoA(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->getDomainsForMessage$lambda$3(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const-string v0, "storageRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->storageRoot:Ljava/io/File;

    .line 14
    new-instance v0, Ljava/io/File;

    const-string v1, "messages"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->messagesDir:Ljava/io/File;

    .line 15
    new-instance v0, Ljava/io/File;

    const-string v1, "domains"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    .line 16
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private static final getDomainsForMessage$lambda$3(Ljava/io/File;)Z
    .locals 0

    .line 121
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method private static final sweepBrokenLinks$lambda$5$lambda$4(Ljava/io/File;)Z
    .locals 0

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getDomainsForMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "msgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeMsgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->formatMsgDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    new-instance v1, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 122
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 124
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 125
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    .line 127
    invoke-static {v6}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-array v7, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesInDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "domainTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v0, p1, v1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeDomainTag(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 103
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    .line 106
    new-array v6, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "msg_"

    invoke-static {v4, v7, v2, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v4, v7}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 97
    :cond_5
    :goto_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getStorageRoot()Ljava/io/File;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->storageRoot:Ljava/io/File;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->storageRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->storageRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->messagesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->messagesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public isZeroCopyLink(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, ".."

    const-string v1, "domainTag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msgId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 159
    :try_start_0
    sget-object v2, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v2, p2}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeMsgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    sget-object v2, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    iget-object v3, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v2, p1, v3}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeDomainTag(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 161
    sget-object v2, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v2, p2}, Lcom/radriloniuma/os/logistics/PathSanitizer;->formatMsgDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    .line 164
    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 166
    :cond_0
    invoke-static {p1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x3

    .line 167
    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    const-string v4, "messages"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 168
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move v1, v5

    :catch_0
    :cond_1
    return v1
.end method

.method public resolveDomainMessageDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "domainTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v0, p2}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeMsgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v0, p1, v1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeDomainTag(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v0, p2}, Lcom/radriloniuma/os/logistics/PathSanitizer;->formatMsgDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public sweepBrokenLinks()I
    .locals 11

    .line 135
    iget-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    .line 139
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    new-instance v3, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_1
    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v6, v1, v4

    .line 142
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 144
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    .line 146
    invoke-static {v9}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-array v10, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 147
    sget-object v10, Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;->INSTANCE:Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v9}, Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;->deleteSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public tagMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ".."

    const-string v1, "msgId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domainTag"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v1, p1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeMsgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    sget-object v1, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    iget-object v2, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v1, p2, v2}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeDomainTag(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 29
    sget-object v1, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v1, p1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->formatMsgDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 33
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->messagesDir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 p2, 0x3

    .line 45
    new-array p2, p2, [Ljava/lang/String;

    aput-object v0, p2, v4

    const-string v3, "messages"

    const/4 v4, 0x1

    aput-object v3, p2, v4

    const/4 v3, 0x2

    aput-object p1, p2, v3

    invoke-static {v0, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;->INSTANCE:Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 35
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    .line 50
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public tagMessageMulti(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "msgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainTags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->tagMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public untagMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "msgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeMsgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    iget-object v1, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-virtual {v0, p2, v1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->sanitizeDomainTag(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 69
    sget-object v0, Lcom/radriloniuma/os/logistics/PathSanitizer;->INSTANCE:Lcom/radriloniuma/os/logistics/PathSanitizer;

    invoke-virtual {v0, p1}, Lcom/radriloniuma/os/logistics/PathSanitizer;->formatMsgDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->domainsDir:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    .line 76
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    .line 81
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object p1, Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;->INSTANCE:Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/radriloniuma/os/logistics/PosixSymlinkHelper;->deleteSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 85
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/radriloniuma/os/logistics/CatralLogisticsEngineImpl;->messagesDir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 86
    invoke-static {p2}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 88
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
