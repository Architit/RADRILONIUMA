.class public final synthetic Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/ToIntFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget v0, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/ToIntFunction;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/EnumUtils;->lambda$getFirstEnum$1(ILjava/util/function/ToIntFunction;Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method
