.class public final Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
.super Lorg/apache/commons/io/build/AbstractOriginSupplier;
.source "FileAlterationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/monitor/FileAlterationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOriginSupplier<",
        "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
        "Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fileFilter:Ljava/io/FileFilter;

.field private ioCase:Lorg/apache/commons/io/IOCase;

.field private rootEntry:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/monitor/FileAlterationObserver$1;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Ljava/io/File;
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->checkOriginFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Ljava/io/FileFilter;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->fileFilter:Ljava/io/FileFilter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Lorg/apache/commons/io/IOCase;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    return-object p0
.end method

.method private checkOriginFile()Ljava/io/File;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object v0

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

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->get()Lorg/apache/commons/io/monitor/FileAlterationObserver;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/monitor/FileAlterationObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;Lorg/apache/commons/io/monitor/FileAlterationObserver$1;)V

    return-object v0
.end method

.method public setFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->fileFilter:Ljava/io/FileFilter;

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;

    return-object p1
.end method

.method public setIOCase(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;

    return-object p1
.end method

.method public setRootEntry(Lorg/apache/commons/io/monitor/FileEntry;)Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;

    return-object p1
.end method
