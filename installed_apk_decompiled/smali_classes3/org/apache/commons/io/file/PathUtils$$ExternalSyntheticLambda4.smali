.class public final synthetic Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


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
    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->$r8$lambda$h_ckTsCBCTLAFMWfD5KYCOFUQ8E(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
