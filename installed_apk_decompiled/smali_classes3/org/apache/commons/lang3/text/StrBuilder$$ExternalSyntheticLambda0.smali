.class public final synthetic Lorg/apache/commons/lang3/text/StrBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/text/StrBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lambda$minimizeCapacity$1$org-apache-commons-lang3-text-StrBuilder()[C

    move-result-object v0

    return-object v0
.end method
