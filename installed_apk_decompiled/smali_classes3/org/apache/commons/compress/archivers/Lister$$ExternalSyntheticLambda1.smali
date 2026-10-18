.class public final synthetic Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/archivers/Lister;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/Lister;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/Lister;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/Lister;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/Lister;->$r8$lambda$OyQ-p50LyalEpdMqaMP9Qfrezuc(Lorg/apache/commons/compress/archivers/Lister;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method
