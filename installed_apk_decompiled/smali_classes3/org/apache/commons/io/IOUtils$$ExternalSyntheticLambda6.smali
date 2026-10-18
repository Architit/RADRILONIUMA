.class public final synthetic Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lorg/apache/commons/io/output/ThresholdingOutputStream;

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->lambda$toByteArray$0(Lorg/apache/commons/io/output/ThresholdingOutputStream;)V

    return-void
.end method
