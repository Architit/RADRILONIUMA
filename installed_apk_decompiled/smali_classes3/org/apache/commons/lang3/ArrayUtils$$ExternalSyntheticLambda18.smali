.class public final synthetic Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Class;

    iput p2, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Class;

    iget v1, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;->f$1:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->lambda$add$0(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
