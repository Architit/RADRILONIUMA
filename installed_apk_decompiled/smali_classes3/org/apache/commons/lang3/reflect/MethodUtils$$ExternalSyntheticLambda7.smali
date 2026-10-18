.class public final synthetic Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Class;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/Class;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;->f$0:Z

    iput-object p2, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;->f$0:Z

    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->lambda$getMethodsListWithAnnotation$7(ZLjava/lang/Class;Ljava/util/List;Ljava/lang/Class;)V

    return-void
.end method
