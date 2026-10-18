.class public final synthetic Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda2;
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
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->$r8$lambda$6BnAbYJmibGRfb4s1pNJoOP-kGs(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
