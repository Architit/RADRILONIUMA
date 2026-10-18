.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "SevenZFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final MEMORY_LIMIT_IN_KB:I = 0x7fffffff

.field static final TRY_TO_RECOVER_BROKEN_ARCHIVES:Z

.field static final USE_DEFAULTNAME_FOR_UNNAMED_ENTRIES:Z


# instance fields
.field private defaultName:Ljava/lang/String;

.field private maxMemoryLimitKiB:I

.field private password:[B

.field private seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

.field private tryToRecoverBrokenArchives:Z

.field private useDefaultNameForUnnamedEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 191
    const-string v0, "unknown archive"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 193
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKiB:I

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->useDefaultNameForUnnamedEntries:Z

    .line 195
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->tryToRecoverBrokenArchives:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->get()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 204
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    move-object v6, v3

    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/io/build/AbstractOrigin;->getByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    .line 207
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    new-array v0, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v0, v1

    .line 213
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    .line 214
    invoke-static {v3, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 215
    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 217
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v1

    .line 218
    :goto_2
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    iget v9, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKiB:I

    iget-boolean v10, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->useDefaultNameForUnnamedEntries:Z

    iget-boolean v11, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->tryToRecoverBrokenArchives:Z

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZLorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    return-object v0
.end method

.method public setDefaultName(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxMemoryLimitKb(I)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    .line 243
    div-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKiB:I

    return-object p0
.end method

.method public setMaxMemoryLimitKiB(I)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    .line 258
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKiB:I

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    return-object p0
.end method

.method public setPassword([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    return-object p0
.end method

.method public setPassword([C)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    return-object p0
.end method

.method public setSeekableByteChannel(Ljava/nio/channels/SeekableByteChannel;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    return-object p0
.end method

.method public setTryToRecoverBrokenArchives(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    .line 318
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->tryToRecoverBrokenArchives:Z

    return-object p0
.end method

.method public setUseDefaultNameForUnnamedEntries(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0

    .line 329
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->useDefaultNameForUnnamedEntries:Z

    return-object p0
.end method
