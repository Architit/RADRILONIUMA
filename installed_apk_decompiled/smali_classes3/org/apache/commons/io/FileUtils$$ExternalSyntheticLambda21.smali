.class public final synthetic Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/io/FilenameFilter;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Ljava/io/FilenameFilter;Ljava/io/File;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$0:Z

    iput-object p2, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$2:Ljava/io/FilenameFilter;

    iput-object p4, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$3:Ljava/io/File;

    iput-object p5, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-boolean v0, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$0:Z

    iget-object v1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$2:Ljava/io/FilenameFilter;

    iget-object v3, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$3:Ljava/io/File;

    iget-object v4, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda21;->f$4:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Ljava/io/File;

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/FileUtils;->lambda$listFiles$11(ZLjava/util/List;Ljava/io/FilenameFilter;Ljava/io/File;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method
