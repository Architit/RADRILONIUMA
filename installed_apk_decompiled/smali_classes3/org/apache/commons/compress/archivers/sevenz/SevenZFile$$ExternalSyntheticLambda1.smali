.class public final synthetic Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/archivers/sevenz/Archive;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->lambda$readFilesInfo$2(Lorg/apache/commons/compress/archivers/sevenz/Archive;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
