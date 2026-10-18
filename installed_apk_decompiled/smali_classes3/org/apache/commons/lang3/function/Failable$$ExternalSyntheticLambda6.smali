.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda6;->f$0:Lorg/apache/commons/lang3/function/FailableSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda6;->f$0:Lorg/apache/commons/lang3/function/FailableSupplier;

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->lambda$asSupplier$16(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
