.class public final synthetic Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:B


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda16;->f$0:B

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-byte v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda16;->f$0:B

    invoke-static {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->lambda$append$82bc2f19$1(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
