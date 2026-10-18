.class final Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
.super Ljava/lang/Object;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackingFile"
.end annotation


# instance fields
.field private contents:[B

.field private final deflateHint:Z

.field private final isDirectory:Z

.field private final modtime:J

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[BJ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    .line 57
    iput-wide p3, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->modtime:J

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->deflateHint:Z

    .line 59
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory:Z

    return-void
.end method

.method constructor <init>([BLjava/util/jar/JarEntry;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    .line 49
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->modtime:J

    .line 50
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getMethod()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->deflateHint:Z

    .line 51
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)[B
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-object p0
.end method

.method static synthetic access$002(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;[B)[B
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-object p1
.end method


# virtual methods
.method public getContents()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-object v0
.end method

.method public getModtime()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->modtime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDefalteHint()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->deflateHint:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory:Z

    return v0
.end method

.method public setContents([B)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    return-object v0
.end method
