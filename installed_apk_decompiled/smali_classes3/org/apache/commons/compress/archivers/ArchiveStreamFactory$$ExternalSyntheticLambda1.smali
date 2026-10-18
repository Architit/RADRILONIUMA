.class public final synthetic Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/TreeMap;

.field public final synthetic f$1:Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TreeMap;Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda1;->f$0:Ljava/util/TreeMap;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda1;->f$0:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->lambda$putAll$5(Ljava/util/TreeMap;Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;Ljava/lang/String;)V

    return-void
.end method
