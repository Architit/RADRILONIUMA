.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda3;->f$0:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda3;->f$0:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->lambda$buildFromLastSplitSegment$1(Ljava/util/regex/Pattern;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
