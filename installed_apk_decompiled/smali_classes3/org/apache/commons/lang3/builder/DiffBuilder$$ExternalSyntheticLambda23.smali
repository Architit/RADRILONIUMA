.class public final synthetic Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda23;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda23;->f$0:I

    invoke-static {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->lambda$append$9e621e92$1(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
