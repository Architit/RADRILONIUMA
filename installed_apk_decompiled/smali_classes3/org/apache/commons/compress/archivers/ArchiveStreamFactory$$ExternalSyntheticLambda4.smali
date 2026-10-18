.class public final synthetic Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/TreeMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda4;->f$0:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda4;->f$0:Ljava/util/TreeMap;

    check-cast p1, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->lambda$findAvailableArchiveOutputStreamProviders$2(Ljava/util/TreeMap;Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;)V

    return-void
.end method
