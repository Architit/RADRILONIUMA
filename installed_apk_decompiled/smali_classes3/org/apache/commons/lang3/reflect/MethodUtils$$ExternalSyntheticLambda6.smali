.class public final synthetic Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Class;

    iput p2, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Class;

    iget v1, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->lambda$getVarArgs$9(Ljava/lang/Class;ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
