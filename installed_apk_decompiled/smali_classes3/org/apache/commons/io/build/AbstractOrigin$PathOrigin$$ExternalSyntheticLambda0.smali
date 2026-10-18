.class public final synthetic Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;->f$0:J

    iput p3, p0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;->f$0:J

    iget v2, p0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->lambda$getByteArray$0(JILjava/io/RandomAccessFile;)[B

    move-result-object p1

    return-object p1
.end method
