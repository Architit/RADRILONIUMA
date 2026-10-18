.class public final synthetic Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    return-void
.end method


# virtual methods
.method public final applyAsLong(I)J
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->lambda$closeArchiveEntry$0$org-apache-commons-compress-archivers-sevenz-SevenZOutputFile(I)J

    move-result-wide v0

    return-wide v0
.end method
