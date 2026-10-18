.class Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1073
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompressedCount()J
    .locals 2

    .line 1076
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    .line 1081
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v0

    return-wide v0
.end method
