.class public Lorg/apache/commons/compress/archivers/ArchiveException;
.super Lorg/apache/commons/compress/CompressException;
.source "ArchiveException.java"


# static fields
.field private static final serialVersionUID:J = 0x267a938239b6b01cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/compress/CompressException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/CompressException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 44
    const-class v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/compress/CompressException;->requireNonNull(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
