.class public final synthetic Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOBooleanSupplier;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/time/Instant;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/time/Instant;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda7;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda7;->f$1:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda7;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda7;->f$1:Ljava/time/Instant;

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->lambda$isFileOlder$6(Ljava/io/File;Ljava/time/Instant;)Z

    move-result v0

    return v0
.end method
