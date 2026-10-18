.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->lambda$writeCpUtf8$5(Ljava/util/List;I)I

    move-result p1

    return p1
.end method
