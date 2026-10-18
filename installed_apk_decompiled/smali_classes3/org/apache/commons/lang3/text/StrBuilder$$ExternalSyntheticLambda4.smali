.class public final synthetic Lorg/apache/commons/lang3/text/StrBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$$ExternalSyntheticLambda4;->f$0:I

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lambda$ensureCapacity$0(I)[C

    move-result-object v0

    return-object v0
.end method
