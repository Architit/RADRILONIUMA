.class public final synthetic Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/FileSystem;

.field public final synthetic f$1:C


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/FileSystem;C)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/FileSystem;

    iput-char p2, p0, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;->f$1:C

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/FileSystem;

    iget-char v1, p0, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;->f$1:C

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/io/FileSystem;->lambda$toLegalFileName$0$org-apache-commons-io-FileSystem(CI)I

    move-result p1

    return p1
.end method
