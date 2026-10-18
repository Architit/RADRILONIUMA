.class public Lorg/apache/commons/io/input/Tailer$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "Tailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/Tailer;",
        "Lorg/apache/commons/io/input/Tailer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_DURATION:Ljava/time/Duration;


# instance fields
.field private delayDuration:Ljava/time/Duration;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private ignoreTouch:Z

.field private reOpen:Z

.field private startThread:Z

.field private tailFromEnd:Z

.field private tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

.field private tailerListener:Lorg/apache/commons/io/input/TailerListener;


# direct methods
.method public static synthetic $r8$lambda$CurvmOD3ezs9AmkMzRx1dwR90vU(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 168
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 184
    sget-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z

    .line 189
    new-instance v0, Lorg/apache/commons/io/input/Tailer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/input/Tailer$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/io/input/Tailer$Builder;)Lorg/apache/commons/io/input/Tailer$Tailable;
    .locals 0

    .line 166
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/io/input/Tailer$Builder;)Lorg/apache/commons/io/input/TailerListener;
    .locals 0

    .line 166
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/io/input/Tailer$Builder;)Ljava/time/Duration;
    .locals 0

    .line 166
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/io/input/Tailer$Builder;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z

    return p0
.end method

.method static synthetic access$700(Lorg/apache/commons/io/input/Tailer$Builder;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z

    return p0
.end method

.method static synthetic access$800(Lorg/apache/commons/io/input/Tailer$Builder;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z

    return p0
.end method

.method private static newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-tailer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/Tailer;
    .locals 2

    .line 219
    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Builder;Lorg/apache/commons/io/input/Tailer$1;)V

    .line 220
    iget-boolean v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-object v0
.end method

.method public setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    sget-object p1, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1

    .line 244
    const-string v0, "executorService"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setIgnoreTouch(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0

    .line 260
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z

    return-object p0
.end method

.method protected bridge synthetic setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;)",
            "Lorg/apache/commons/io/input/Tailer$Builder;"
        }
    .end annotation

    .line 271
    new-instance v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailable(Lorg/apache/commons/io/input/Tailer$Tailable;)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 272
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/Tailer$Builder;

    return-object p1
.end method

.method public setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0

    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z

    return-object p0
.end method

.method public setStartThread(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0

    .line 293
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    return-object p0
.end method

.method public setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0

    .line 326
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z

    return-object p0
.end method

.method public setTailable(Lorg/apache/commons/io/input/Tailer$Tailable;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1

    .line 304
    const-string v0, "tailable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/Tailer$Tailable;

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    return-object p0
.end method

.method public setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1

    .line 315
    const-string v0, "tailerListener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/TailerListener;

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;

    return-object p0
.end method
