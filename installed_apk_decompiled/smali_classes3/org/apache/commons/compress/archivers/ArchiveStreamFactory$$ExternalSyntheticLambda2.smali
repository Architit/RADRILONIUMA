.class public final synthetic Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->lambda$findAvailableArchiveOutputStreamProviders$3()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
