.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->lambda$cpLongValue$4$org-apache-commons-compress-harmony-unpack200-CpBands(ILjava/lang/Long;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object p1

    return-object p1
.end method
