.class public final synthetic Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->lambda$setCharsetEncoder$1$org-apache-commons-io-input-CharSequenceInputStream$Builder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method
