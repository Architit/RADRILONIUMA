.class public final synthetic Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->appendBandCodingSpecifier(I)V

    return-void
.end method
