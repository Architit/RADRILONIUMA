.class public Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0014_X509Certificates.java"


# static fields
.field static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method
