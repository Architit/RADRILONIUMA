.class public final Lcom/radriloniuma/AppServer;
.super Ljava/lang/Object;
.source "AppServer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/radriloniuma/AppServer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppServer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppServer.kt\ncom/radriloniuma/AppServer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,425:1\n1747#2,3:426\n1747#2,3:429\n1855#2,2:433\n1#3:432\n*S KotlinDebug\n*F\n+ 1 AppServer.kt\ncom/radriloniuma/AppServer\n*L\n103#1:426,3\n104#1:429,3\n162#1:433,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 52\u00020\u0001:\u00015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010$\u001a\u00020\u0008J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0018\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0005H\u0002J\u0010\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020\u001dH\u0002J\u0006\u0010/\u001a\u00020&J\u0008\u00100\u001a\u00020&H\u0002J\u0006\u00101\u001a\u00020&J \u00102\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u00103\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u0008H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u001e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/radriloniuma/AppServer;",
        "",
        "context",
        "Landroid/content/Context;",
        "desiredPort",
        "",
        "(Landroid/content/Context;I)V",
        "apiToken",
        "",
        "getContext",
        "()Landroid/content/Context;",
        "installInProgress",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "installMessage",
        "installProgress",
        "installState",
        "isRunning",
        "",
        "()Z",
        "<set-?>",
        "localPort",
        "getLocalPort",
        "()I",
        "prootProcess",
        "Ljava/lang/Process;",
        "prootStdin",
        "Ljava/io/OutputStream;",
        "runningState",
        "serverSocket",
        "Ljava/net/ServerSocket;",
        "sseClients",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "ubuntuError",
        "ubuntuState",
        "workerThread",
        "Ljava/lang/Thread;",
        "getApiToken",
        "handleClient",
        "",
        "client",
        "Ljava/net/Socket;",
        "requestBody",
        "reader",
        "Ljava/io/BufferedReader;",
        "length",
        "runServerLoop",
        "socket",
        "start",
        "startUbuntuSession",
        "stop",
        "writeResponse",
        "status",
        "body",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/radriloniuma/AppServer$Companion;

.field public static final DEFAULT_PORT:I = 0x1f90

.field private static final STATE_ERROR:Ljava/lang/String; = "error"

.field private static final STATE_INVALID_ROOTFS:Ljava/lang/String; = "invalid_rootfs"

.field private static final STATE_NOT_INSTALLED:Ljava/lang/String; = "not_installed"

.field private static final STATE_RUNNING:Ljava/lang/String; = "running"

.field private static final STATE_STOPPED:Ljava/lang/String; = "stopped"

.field private static final TAG:Ljava/lang/String; = "AppServer"

.field private static volatile activeInstance:Lcom/radriloniuma/AppServer;

.field private static final startCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final stopCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final apiToken:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final desiredPort:I

.field private final installInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile installMessage:Ljava/lang/String;

.field private volatile installProgress:I

.field private volatile installState:Ljava/lang/String;

.field private volatile localPort:I

.field private prootProcess:Ljava/lang/Process;

.field private prootStdin:Ljava/io/OutputStream;

.field private final runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private serverSocket:Ljava/net/ServerSocket;

.field private final sseClients:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ubuntuError:Ljava/lang/String;

.field private volatile ubuntuState:Ljava/lang/String;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$Jr7oxCn6UxVKPe3I03ufDOth9p8(Lcom/radriloniuma/AppServer;Ljava/net/ServerSocket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/radriloniuma/AppServer;->start$lambda$0(Lcom/radriloniuma/AppServer;Ljava/net/ServerSocket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YrSESczpeL30RMyzF6PM0d7phxQ(Ljava/lang/Process;Lcom/radriloniuma/AppServer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/radriloniuma/AppServer;->startUbuntuSession$lambda$7(Ljava/lang/Process;Lcom/radriloniuma/AppServer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDTDiVE-7ra8PdyWd8-8VZWe-2Q(Lcom/radriloniuma/AppServer;)V
    .locals 0

    invoke-static {p0}, Lcom/radriloniuma/AppServer;->handleClient$lambda$14(Lcom/radriloniuma/AppServer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/radriloniuma/AppServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/radriloniuma/AppServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/radriloniuma/AppServer;->Companion:Lcom/radriloniuma/AppServer$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/radriloniuma/AppServer;->$stable:I

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/radriloniuma/AppServer;->startCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/radriloniuma/AppServer;->stopCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    iput p2, p0, Lcom/radriloniuma/AppServer;->desiredPort:I

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->sseClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    const-string p1, "not_installed"

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 37
    const-string p1, "available"

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    .line 39
    const-string p1, "Ubuntu Base 24.04.5 ARM64 is ready to install"

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->installInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/radriloniuma/AppServer;->apiToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x1f90

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/radriloniuma/AppServer;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static final synthetic access$getActiveInstance$cp()Lcom/radriloniuma/AppServer;
    .locals 1

    .line 24
    sget-object v0, Lcom/radriloniuma/AppServer;->activeInstance:Lcom/radriloniuma/AppServer;

    return-object v0
.end method

.method public static final synthetic access$getStartCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 24
    sget-object v0, Lcom/radriloniuma/AppServer;->startCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getStopCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 24
    sget-object v0, Lcom/radriloniuma/AppServer;->stopCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$setActiveInstance$cp(Lcom/radriloniuma/AppServer;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/radriloniuma/AppServer;->activeInstance:Lcom/radriloniuma/AppServer;

    return-void
.end method

.method public static final synthetic access$setInstallMessage$p(Lcom/radriloniuma/AppServer;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setInstallProgress$p(Lcom/radriloniuma/AppServer;I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/radriloniuma/AppServer;->installProgress:I

    return-void
.end method

.method public static final synthetic access$setInstallState$p(Lcom/radriloniuma/AppServer;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    return-void
.end method

.method private final handleClient(Ljava/net/Socket;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 233
    const-string v0, "POST"

    const-string v3, "GET"

    const-string v4, "/cmd"

    const-string v5, "substring(...)"

    const/16 v6, 0x2710

    .line 234
    :try_start_0
    invoke-virtual {v2, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 235
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v7, Ljava/io/Reader;

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 236
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 237
    :cond_0
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    new-array v9, v7, [C

    const/4 v14, 0x0

    const/16 v10, 0x20

    aput-char v10, v9, v14

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 238
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, ""

    if-ltz v9, :cond_1

    :try_start_1
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v10

    :goto_0
    check-cast v9, Ljava/lang/String;

    .line 239
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    if-gt v7, v11, :cond_2

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v10

    :goto_1
    check-cast v8, Ljava/lang/String;

    .line 240
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v11, Ljava/util/Map;

    .line 241
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_4

    .line 242
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 243
    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v16, 0x3a

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v13

    if-lez v13, :cond_3

    .line 244
    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "toLowerCase(...)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    .line 245
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 244
    invoke-interface {v11, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x1

    goto :goto_2

    .line 248
    :cond_4
    const-string v5, "content-length"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v14

    :goto_3
    if-ltz v5, :cond_19

    const v7, 0x10001

    if-ge v5, v7, :cond_19

    .line 254
    const-string v7, "OPTIONS"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v12, "getBytes(...)"

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    .line 255
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v0, v3

    check-cast v0, Ljava/io/OutputStream;

    .line 256
    const-string v4, "HTTP/1.1 204 No Content\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Methods: GET, POST, OPTIONS\r\nAccess-Control-Allow-Headers: Authorization, Content-Type\r\nAccess-Control-Max-Age: 600\r\nConnection: close\r\n\r\n"

    .line 260
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 261
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 262
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    :try_start_4
    invoke-static {v3, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_6
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    :cond_6
    const/4 v7, 0x2

    .line 266
    invoke-static {v8, v4, v14, v7, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v7, "/stream"

    move-object/from16 v18, v4

    const-string v4, "/install"

    if-nez v15, :cond_8

    const/4 v15, 0x2

    :try_start_7
    invoke-static {v8, v4, v14, v15, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-static {v8, v7, v14, v15, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    goto :goto_4

    :cond_7
    move v15, v14

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v15, 0x1

    .line 267
    :goto_5
    const-string v14, "authorization"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_9

    const-string v14, "Bearer "

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v11, v14}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_9
    move-object v11, v13

    .line 268
    :goto_6
    const-string v14, "?token="

    invoke-static {v8, v14, v10}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x26

    move/from16 v20, v5

    const/4 v5, 0x2

    invoke-static {v10, v14, v13, v5, v13}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v15, :cond_a

    .line 269
    iget-object v5, v1, Lcom/radriloniuma/AppServer;->apiToken:Ljava/lang/String;

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v1, Lcom/radriloniuma/AppServer;->apiToken:Ljava/lang/String;

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 270
    const-string v0, "403 Forbidden"

    const-string v3, "App session token required"

    invoke-direct {v1, v2, v0, v3}, Lcom/radriloniuma/AppServer;->writeResponse(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_a
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v10, "503 Service Unavailable"

    const-string v11, "running"

    if-eqz v5, :cond_c

    const/4 v5, 0x2

    const/4 v14, 0x0

    :try_start_8
    invoke-static {v8, v7, v14, v5, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 276
    iget-object v3, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 277
    const-string v0, "Ubuntu shell is not running"

    invoke-direct {v1, v2, v10, v0}, Lcom/radriloniuma/AppServer;->writeResponse(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_b
    const-string v3, "HTTP/1.1 200 OK\r\nAccess-Control-Allow-Origin: *\r\nContent-Type: text/event-stream\r\nCache-Control: no-cache\r\nConnection: keep-alive\r\n\r\n"

    .line 283
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 284
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 285
    iget-object v3, v1, Lcom/radriloniuma/AppServer;->sseClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 286
    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void

    .line 290
    :cond_c
    const-string v5, "OK"

    .line 291
    const-string v7, "text/plain; charset=UTF-8"

    .line 292
    const-string v13, "200 OK"

    .line 294
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "/status"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 295
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 296
    const-string v5, "server"

    iget-object v7, v1, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v7, v11

    goto :goto_7

    :cond_d
    const-string v7, "stopped"

    :goto_7
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 297
    const-string v5, "ubuntu"

    iget-object v7, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 298
    const-string v5, "installation"

    iget-object v7, v1, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 299
    const-string v5, "installProgress"

    iget v7, v1, Lcom/radriloniuma/AppServer;->installProgress:I

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 300
    const-string v5, "installMessage"

    iget-object v7, v1, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 301
    iget-object v5, v1, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    if-eqz v5, :cond_e

    const-string v7, "error"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    :cond_e
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "toString(...)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    const-string v7, "application/json; charset=UTF-8"

    .line 306
    :cond_f
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const-string v14, "400 Bad Request"

    if-eqz v3, :cond_13

    :try_start_9
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move/from16 v3, v20

    .line 307
    invoke-direct {v1, v6, v3}, Lcom/radriloniuma/AppServer;->requestBody(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_10

    .line 309
    const-string v5, "Install request does not accept a body"

    move-object v13, v14

    goto :goto_8

    .line 310
    :cond_10
    iget-object v4, v1, Lcom/radriloniuma/AppServer;->installInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const-string v13, "409 Conflict"

    if-nez v4, :cond_11

    .line 312
    :try_start_a
    const-string v5, "Ubuntu installation is already running"

    goto :goto_8

    .line 313
    :cond_11
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v15, "ubuntu-fs"

    invoke-direct {v4, v5, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 314
    iget-object v4, v1, Lcom/radriloniuma/AppServer;->installInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    const-string v4, "installed"

    iput-object v4, v1, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    .line 317
    const-string v5, "Ubuntu rootfs already exists and running"

    goto :goto_8

    .line 319
    :cond_12
    const-string v4, "downloading"

    iput-object v4, v1, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    const/4 v4, 0x0

    .line 320
    iput v4, v1, Lcom/radriloniuma/AppServer;->installProgress:I

    .line 321
    const-string v4, "Starting verified Ubuntu installation"

    iput-object v4, v1, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;

    .line 322
    new-instance v4, Ljava/lang/Thread;

    .line 343
    new-instance v5, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda0;-><init>(Lcom/radriloniuma/AppServer;)V

    .line 322
    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    const-string v5, "Ubuntu-Installer"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 344
    const-string v13, "202 Accepted"

    .line 345
    const-string v5, "Ubuntu installation started in the app-private data directory"

    goto :goto_8

    :cond_13
    move/from16 v3, v20

    .line 349
    :goto_8
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 350
    invoke-direct {v1, v6, v3}, Lcom/radriloniuma/AppServer;->requestBody(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v3, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v1, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    if-nez v3, :cond_14

    goto :goto_9

    .line 355
    :cond_14
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 357
    const-string v5, "Command is empty"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-object v10, v14

    goto :goto_b

    .line 360
    :cond_15
    :try_start_b
    iget-object v3, v1, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    if-eqz v3, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 361
    :cond_16
    iget-object v0, v1, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 364
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 354
    :cond_17
    :goto_9
    const-string v5, "Ubuntu rootfs is not installed or the shell is not running"

    goto :goto_b

    :cond_18
    :goto_a
    move-object v10, v13

    .line 372
    :goto_b
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\nAccess-Control-Allow-Origin: *\r\nContent-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\nContent-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 377
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 378
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V

    goto :goto_c

    .line 250
    :cond_19
    const-string v0, "413 Payload Too Large"

    const-string v3, "Request body is too large"

    invoke-direct {v1, v2, v0, v3}, Lcom/radriloniuma/AppServer;->writeResponse(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    return-void

    .line 381
    :catch_1
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    :goto_c
    return-void
.end method

.method private static final handleClient$lambda$14(Lcom/radriloniuma/AppServer;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 324
    :try_start_0
    sget-object v1, Lcom/radriloniuma/UbuntuInstaller;->INSTANCE:Lcom/radriloniuma/UbuntuInstaller;

    iget-object v2, p0, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    new-instance v3, Lcom/radriloniuma/AppServer$handleClient$3$1;

    invoke-direct {v3, p0}, Lcom/radriloniuma/AppServer$handleClient$3$1;-><init>(Lcom/radriloniuma/AppServer;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v2, v3}, Lcom/radriloniuma/UbuntuInstaller;->install(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V

    .line 329
    invoke-direct {p0}, Lcom/radriloniuma/AppServer;->startUbuntuSession()V

    .line 330
    iget-object v1, p0, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    const-string v2, "running"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Ubuntu shell did not start"

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_1
    const-string v1, "installed"

    iput-object v1, p0, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    const/16 v1, 0x64

    .line 332
    iput v1, p0, Lcom/radriloniuma/AppServer;->installProgress:I

    .line 333
    const-string v1, "Ubuntu and the command-line package foundation are ready"

    iput-object v1, p0, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 335
    :try_start_1
    const-string v2, "not_installed"

    iput-object v2, p0, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 336
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Ubuntu installation failed"

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    :try_start_2
    iput-object v2, p0, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    .line 337
    const-string v2, "failed"

    iput-object v2, p0, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    iput-object v2, p0, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;

    .line 339
    const-string v2, "AppServer"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :goto_0
    iget-object p0, p0, Lcom/radriloniuma/AppServer;->installInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/radriloniuma/AppServer;->installInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method private final requestBody(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .locals 4

    .line 386
    new-array v0, p2, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    sub-int v3, p2, v2

    .line 389
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 393
    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method private final runServerLoop(Ljava/net/ServerSocket;)V
    .locals 1

    .line 222
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/radriloniuma/AppServer;->handleClient(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private static final start$lambda$0(Lcom/radriloniuma/AppServer;Ljava/net/ServerSocket;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/radriloniuma/AppServer;->runServerLoop(Ljava/net/ServerSocket;)V

    return-void
.end method

.method private final startUbuntuSession()V
    .locals 28

    move-object/from16 v1, p0

    .line 88
    const-string v0, "\n"

    const-string v2, "/root"

    const-string v3, "root"

    const-string v4, "AppServer"

    const-string v5, "-b"

    .line 89
    :try_start_0
    sget-object v6, Lcom/radriloniuma/UbuntuInstaller;->INSTANCE:Lcom/radriloniuma/UbuntuInstaller;

    iget-object v7, v1, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/radriloniuma/UbuntuInstaller;->ensureProot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 91
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "ubuntu-fs"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    new-instance v8, Ljava/io/File;

    const-string v9, "etc/os-release"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    new-instance v9, Ljava/io/File;

    const-string v10, "bin/bash"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_c

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->canExecute()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v9, 0x1

    .line 102
    invoke-static {v8, v12, v9, v12}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 103
    move-object v11, v8

    check-cast v11, Ljava/lang/Iterable;

    .line 426
    instance-of v13, v11, Ljava/util/Collection;

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eqz v13, :cond_1

    move-object v13, v11

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 427
    :cond_1
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 103
    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v9, "ID=ubuntu"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 104
    :cond_3
    :goto_1
    check-cast v8, Ljava/lang/Iterable;

    .line 429
    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_6

    .line 430
    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 105
    const-string v11, "ID_LIKE="

    invoke-static {v9, v11, v14, v15, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x3d

    invoke-static {v9, v11, v12, v15, v12}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v11, v15, [C

    fill-array-data v11, :array_0

    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Ljava/lang/CharSequence;

    const/4 v9, 0x1

    new-array v11, v9, [C

    const/16 v9, 0x20

    aput-char v9, v11, v14

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v11

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "ubuntu"

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :goto_3
    const/16 v8, 0xa

    .line 115
    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v14

    .line 116
    const-string v6, "-0"

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const-string v6, "-r"

    aput-object v6, v8, v15

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v8, v7

    const/4 v6, 0x4

    .line 117
    aput-object v5, v8, v6

    const-string v9, "/dev"

    const/4 v11, 0x5

    aput-object v9, v8, v11

    const/4 v9, 0x6

    aput-object v5, v8, v9

    const-string v9, "/proc"

    const/4 v13, 0x7

    aput-object v9, v8, v13

    const/16 v9, 0x8

    aput-object v5, v8, v9

    const-string v9, "/proc"

    const/16 v13, 0x9

    aput-object v9, v8, v13

    .line 114
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 119
    iget-object v9, v1, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    const-class v13, Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 121
    invoke-virtual {v9, v13}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v12

    :goto_4
    if-nez v9, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 122
    :cond_6
    move-object v13, v9

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    const/16 v16, 0x1

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_7

    .line 123
    new-instance v13, Ljava/io/File;

    iget-object v6, v1, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "ubuntu-resolv.conf"

    invoke-direct {v13, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/Iterable;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/CharSequence;

    sget-object v0, Lcom/radriloniuma/AppServer$startUbuntuSession$1;->INSTANCE:Lcom/radriloniuma/AppServer$startUbuntuSession$1;

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function1;

    const/16 v26, 0x1a

    const/16 v27, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v27}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v12, v15, v12}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 125
    new-array v0, v15, [Ljava/lang/String;

    aput-object v5, v0, v14

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":/etc/resolv.conf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_7
    new-array v0, v11, [Ljava/lang/String;

    const-string v5, "-w"

    aput-object v5, v0, v14

    const/4 v5, 0x1

    aput-object v2, v0, v5

    const-string v5, "/bin/bash"

    aput-object v5, v0, v15

    const-string v5, "--login"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string v5, "-i"

    const/4 v6, 0x4

    aput-object v5, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, v8}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v5

    .line 130
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "proot-tmp"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    const-string v0, "Cannot create PRoot temporary directory"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_9
    :goto_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "PROOT_NO_SECCOMP"

    const-string v8, "0"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v7, "PROOT_TMP_DIR"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v6, "HOME"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "PATH"

    const-string v6, "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "USER"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "LOGNAME"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "TERM"

    const-string v3, "xterm-256color"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "LANG"

    const-string v3, "C.UTF-8"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v0, v10}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    const/4 v2, 0x1

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 144
    iput-object v0, v1, Lcom/radriloniuma/AppServer;->prootProcess:Ljava/lang/Process;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    .line 146
    const-string v2, "running"

    iput-object v2, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    const-string v2, "installed"

    iput-object v2, v1, Lcom/radriloniuma/AppServer;->installState:Ljava/lang/String;

    const/16 v2, 0x64

    iput v2, v1, Lcom/radriloniuma/AppServer;->installProgress:I

    const-string v2, "Ubuntu 24.04.5 LTS ARM64 substrate and package foundation 100% active"

    iput-object v2, v1, Lcom/radriloniuma/AppServer;->installMessage:Ljava/lang/String;

    .line 147
    iput-object v12, v1, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    .line 149
    new-instance v2, Ljava/lang/Thread;

    .line 186
    new-instance v3, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Process;Lcom/radriloniuma/AppServer;)V

    .line 149
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    const-string v0, "Ubuntu-Output-Stream"

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 188
    invoke-virtual {v2, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 189
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_8

    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 108
    :cond_b
    :goto_6
    const-string v0, "invalid_rootfs"

    iput-object v0, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 109
    const-string v0, "The installed rootfs does not identify itself as Ubuntu"

    iput-object v0, v1, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    .line 110
    iget-object v0, v1, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_c
    :goto_7
    const-string v0, "not_installed"

    iput-object v0, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 97
    iput-object v12, v1, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    .line 98
    const-string v0, "Ubuntu rootfs is not installed; refusing to start an Android shell as Ubuntu"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 192
    const-string v2, "error"

    iput-object v2, v1, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v2, "Failed to start Ubuntu runtime"

    :cond_d
    iput-object v2, v1, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    .line 194
    const-string v2, "Failed to start ubuntu session"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void

    :array_0
    .array-data 2
        0x22s
        0x27s
    .end array-data
.end method

.method private static final startUbuntuSession$lambda$7(Ljava/lang/Process;Lcom/radriloniuma/AppServer;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "stopped"

    const-string v0, "this$0"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v4, "getInputStream(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    instance-of v0, v5, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast v5, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v0, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    :goto_0
    const/16 v0, 0x400

    .line 152
    new-array v0, v0, [C

    .line 153
    :goto_1
    iget-object v4, v2, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-ltz v4, :cond_2

    .line 155
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    .line 156
    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    .line 157
    const-string v7, "\n"

    const-string v8, "\\n"

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\r"

    const-string v14, "\\r"

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v6, "getBytes(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 162
    iget-object v7, v2, Lcom/radriloniuma/AppServer;->sseClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v7, Ljava/lang/Iterable;

    .line 433
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :try_start_1
    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 165
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 167
    :catch_0
    :try_start_2
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_1
    iget-object v4, v2, Lcom/radriloniuma/AppServer;->sseClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 172
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 173
    iget-object v4, v2, Lcom/radriloniuma/AppServer;->prootProcess:Ljava/lang/Process;

    if-ne v4, v1, :cond_4

    .line 174
    iput-object v3, v2, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ubuntu shell exited with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    const/4 v0, 0x0

    .line 176
    iput-object v0, v2, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    .line 177
    iput-object v0, v2, Lcom/radriloniuma/AppServer;->prootProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 180
    const-string v4, "Error reading proot process output"

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const-string v6, "AppServer"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iget-object v4, v2, Lcom/radriloniuma/AppServer;->prootProcess:Ljava/lang/Process;

    if-ne v4, v1, :cond_4

    .line 182
    iput-object v3, v2, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Ubuntu process output failed"

    :cond_3
    iput-object v0, v2, Lcom/radriloniuma/AppServer;->ubuntuError:Ljava/lang/String;

    :cond_4
    :goto_3
    return-void
.end method

.method private final writeResponse(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 397
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "getBytes(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    array-length v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP/1.1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\r\nAccess-Control-Allow-Origin: *\r\nContent-Type: text/plain; charset=UTF-8\r\nContent-Length: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 401
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/io/OutputStream;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public final getApiToken()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->apiToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/radriloniuma/AppServer;->localPort:I

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized start()V
    .locals 6

    const-string v0, "AppServer started on port "

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 58
    :try_start_1
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/radriloniuma/AppServer;->desiredPort:I

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catch_0
    :try_start_2
    new-instance v3, Ljava/net/ServerSocket;

    const-string v4, "127.0.0.1"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 62
    :goto_0
    iput-object v3, p0, Lcom/radriloniuma/AppServer;->serverSocket:Ljava/net/ServerSocket;

    .line 63
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lcom/radriloniuma/AppServer;->localPort:I

    .line 64
    iget-object v1, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    new-instance v1, Ljava/lang/Thread;

    .line 68
    new-instance v5, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;-><init>(Lcom/radriloniuma/AppServer;Ljava/net/ServerSocket;)V

    const-string v3, "AppServer-Daemon"

    .line 66
    invoke-direct {v1, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 70
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 66
    iput-object v1, p0, Lcom/radriloniuma/AppServer;->workerThread:Ljava/lang/Thread;

    .line 73
    sput-object p0, Lcom/radriloniuma/AppServer;->activeInstance:Lcom/radriloniuma/AppServer;

    .line 74
    sget-object v1, Lcom/radriloniuma/AppServer;->startCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 75
    const-string v1, "AppServer"

    iget v3, p0, Lcom/radriloniuma/AppServer;->localPort:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/radriloniuma/AppServer;->startUbuntuSession()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 81
    :try_start_3
    const-string v1, "AppServer"

    const-string v3, "Failed to start AppServer daemon socket"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    iput v2, p0, Lcom/radriloniuma/AppServer;->localPort:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/radriloniuma/AppServer;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 202
    :try_start_2
    iget-object v2, p0, Lcom/radriloniuma/AppServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    :try_start_3
    iput-object v0, p0, Lcom/radriloniuma/AppServer;->serverSocket:Ljava/net/ServerSocket;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/radriloniuma/AppServer;->serverSocket:Ljava/net/ServerSocket;

    throw v1

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/radriloniuma/AppServer;->workerThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 204
    :cond_2
    iput-object v0, p0, Lcom/radriloniuma/AppServer;->workerThread:Ljava/lang/Thread;

    .line 205
    iput v1, p0, Lcom/radriloniuma/AppServer;->localPort:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    :try_start_4
    iget-object v1, p0, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/radriloniuma/AppServer;->prootProcess:Ljava/lang/Process;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    :catch_1
    :cond_4
    :try_start_5
    iput-object v0, p0, Lcom/radriloniuma/AppServer;->prootStdin:Ljava/io/OutputStream;

    .line 212
    iput-object v0, p0, Lcom/radriloniuma/AppServer;->prootProcess:Ljava/lang/Process;

    .line 213
    const-string v1, "stopped"

    iput-object v1, p0, Lcom/radriloniuma/AppServer;->ubuntuState:Ljava/lang/String;

    .line 215
    sget-object v1, Lcom/radriloniuma/AppServer;->activeInstance:Lcom/radriloniuma/AppServer;

    if-ne v1, p0, :cond_5

    .line 216
    sput-object v0, Lcom/radriloniuma/AppServer;->activeInstance:Lcom/radriloniuma/AppServer;

    .line 218
    :cond_5
    sget-object v0, Lcom/radriloniuma/AppServer;->stopCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
