.class public final synthetic Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->lambda$static$1()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
