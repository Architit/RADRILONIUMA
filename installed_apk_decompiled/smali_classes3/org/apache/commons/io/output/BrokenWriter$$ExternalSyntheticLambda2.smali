.class public final synthetic Lorg/apache/commons/io/output/BrokenWriter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/output/BrokenWriter$$ExternalSyntheticLambda2;->f$0:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenWriter$$ExternalSyntheticLambda2;->f$0:Ljava/io/IOException;

    invoke-static {v0}, Lorg/apache/commons/io/output/BrokenWriter;->lambda$new$1(Ljava/io/IOException;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
