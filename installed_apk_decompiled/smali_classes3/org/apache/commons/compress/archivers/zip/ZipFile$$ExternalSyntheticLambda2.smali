.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/nio/file/Path;

.field public final synthetic f$2:Ljava/nio/file/Path;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$0:J

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$1:Ljava/nio/file/Path;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$2:Ljava/nio/file/Path;

    iput-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$0:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$1:Ljava/nio/file/Path;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$2:Ljava/nio/file/Path;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->lambda$openZipChannel$0(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;I)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
