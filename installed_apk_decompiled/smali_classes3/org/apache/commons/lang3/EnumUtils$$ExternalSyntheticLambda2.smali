.class public final synthetic Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Function;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/EnumUtils;->lambda$getFirstEnumIgnoreCase$2(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method
