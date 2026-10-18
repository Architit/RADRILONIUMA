.class public final synthetic Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->isInitialized()Z

    move-result p1

    return p1
.end method
