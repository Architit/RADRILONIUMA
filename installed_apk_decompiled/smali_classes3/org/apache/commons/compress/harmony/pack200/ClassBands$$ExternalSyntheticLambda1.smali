.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->lambda$currentClassReferencesInnerClass$1(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
