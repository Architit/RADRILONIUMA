.class public final synthetic Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Class;

.field public final synthetic f$1:Ljava/util/TreeMap;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Class;Ljava/util/TreeMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda14;->f$0:[Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda14;->f$1:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda14;->f$0:[Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/MethodUtils$$ExternalSyntheticLambda14;->f$1:Ljava/util/TreeMap;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->lambda$getMatchingMethod$5([Ljava/lang/Class;Ljava/util/TreeMap;Ljava/lang/reflect/Method;)V

    return-void
.end method
