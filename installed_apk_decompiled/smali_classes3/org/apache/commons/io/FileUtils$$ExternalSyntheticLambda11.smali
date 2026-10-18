.class public final synthetic Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOLongSupplier;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda11;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda11;->f$0:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->lambda$sizeOf$15(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
