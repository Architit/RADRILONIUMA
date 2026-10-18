.class final Lorg/apache/commons/compress/changes/Change;
.super Ljava/lang/Object;
.source "Change.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/changes/Change$ChangeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final inputStream:Ljava/io/InputStream;

.field private final replaceMode:Z

.field private final targetFileName:Ljava/lang/String;

.field private final type:Lorg/apache/commons/compress/changes/Change$ChangeType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/compress/changes/Change$ChangeType;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->targetFileName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/apache/commons/compress/changes/Change;->type:Lorg/apache/commons/compress/changes/Change$ChangeType;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->inputStream:Ljava/io/InputStream;

    .line 98
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/io/InputStream;",
            "Z)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "archiveEntry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/archivers/ArchiveEntry;

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 83
    const-string p1, "inputStream"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->inputStream:Ljava/io/InputStream;

    .line 84
    sget-object p1, Lorg/apache/commons/compress/changes/Change$ChangeType;->ADD:Lorg/apache/commons/compress/changes/Change$ChangeType;

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->type:Lorg/apache/commons/compress/changes/Change$ChangeType;

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->targetFileName:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return-void
.end method


# virtual methods
.method getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method getTargetFileName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFileName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lorg/apache/commons/compress/changes/Change$ChangeType;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->type:Lorg/apache/commons/compress/changes/Change$ChangeType;

    return-object v0
.end method

.method isReplaceMode()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return v0
.end method
