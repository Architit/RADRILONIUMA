.class public final synthetic Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/io/FilenameFilter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/io/FilenameFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda22;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda22;->f$1:Ljava/io/FilenameFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda22;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda22;->f$1:Ljava/io/FilenameFilter;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/FileUtils;->lambda$listFiles$12(Ljava/util/List;Ljava/io/FilenameFilter;Ljava/io/File;)V

    return-void
.end method
