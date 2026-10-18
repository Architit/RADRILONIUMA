.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/pack200/CpBands;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->lambda$removeSignaturesFromCpUTF8$3$org-apache-commons-compress-harmony-pack200-CpBands(Lorg/apache/commons/compress/harmony/pack200/CPSignature;)V

    return-void
.end method
