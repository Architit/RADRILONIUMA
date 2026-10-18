.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->lambda$cpClassValue$0$org-apache-commons-compress-harmony-unpack200-CpBands(IILjava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object p1

    return-object p1
.end method
