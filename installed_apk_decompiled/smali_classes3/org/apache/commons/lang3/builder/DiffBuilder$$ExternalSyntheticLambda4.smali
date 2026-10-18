.class public final synthetic Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda4;->f$0:[J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$$ExternalSyntheticLambda4;->f$0:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->lambda$append$f1271372$1([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
