.class public final synthetic Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:S


# direct methods
.method public synthetic constructor <init>(S)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda35;->f$0:S

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-short v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda35;->f$0:S

    invoke-static {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->lambda$append$a14c714e$1(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
