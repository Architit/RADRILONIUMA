.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "FileEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

.field private static final serialVersionUID:J = -0x22c5e8fed07c1d41L


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lorg/apache/commons/io/monitor/SerializableFileTime;->EPOCH:Lorg/apache/commons/io/monitor/SerializableFileTime;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 100
    const-string v0, "file"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 101
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 102
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    :goto_0
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/SerializableFileTime;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/SerializableFileTime;->unwrap()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return v0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 211
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .locals 10

    .line 232
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 233
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 234
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 235
    iget-wide v3, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 238
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 242
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v5, :cond_1

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->lastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    :goto_1
    invoke-virtual {p0, v5}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 244
    :catch_0
    sget-object v5, Lorg/apache/commons/io/monitor/SerializableFileTime;->EPOCH:Lorg/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {p0, v5}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Lorg/apache/commons/io/monitor/SerializableFileTime;)V

    .line 246
    :goto_2
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    const-wide/16 v8, 0x0

    :goto_3
    iput-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 249
    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {p1, v1}, Lorg/apache/commons/io/monitor/SerializableFileTime;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne p1, v2, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_4

    :cond_3
    move v6, v7

    :cond_4
    return v6
.end method

.method public varargs setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return-void
.end method

.method public setExists(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 298
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public setLastModified(Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    .line 288
    new-instance v0, Lorg/apache/commons/io/monitor/SerializableFileTime;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/SerializableFileTime;-><init>(Ljava/nio/file/attribute/FileTime;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Lorg/apache/commons/io/monitor/SerializableFileTime;)V

    return-void
.end method

.method setLastModified(Lorg/apache/commons/io/monitor/SerializableFileTime;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 311
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method
