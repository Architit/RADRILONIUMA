.class public Lorg/apache/commons/compress/MemoryLimitException;
.super Lorg/apache/commons/compress/CompressException;
.source "MemoryLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final memoryLimitKiB:I

.field private final memoryNeededKiB:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .line 47
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/String;)V

    .line 48
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededKiB:J

    .line 49
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitKiB:I

    return-void
.end method

.method public constructor <init>(JILjava/lang/Exception;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededKiB:J

    .line 65
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitKiB:I

    return-void
.end method

.method public constructor <init>(JILjava/lang/Throwable;)V
    .locals 1

    .line 77
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededKiB:J

    .line 79
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitKiB:I

    return-void
.end method

.method private static buildMessage(JI)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 32
    const-string p1, "%,d KiB of memory would be needed; limit was %,d KiB. If the file is not corrupt, consider increasing the memory limit."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMemoryLimitInKb()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitKiB:I

    return v0
.end method

.method public getMemoryNeededInKb()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededKiB:J

    return-wide v0
.end method
