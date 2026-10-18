.class public final synthetic Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:[Ljava/lang/Object;

.field public final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->lambda$addAll$1(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
