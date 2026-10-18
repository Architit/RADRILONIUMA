.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/pack200/IntList;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/IntList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda6;->f$0:Lorg/apache/commons/compress/harmony/pack200/IntList;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda6;->f$0:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method
