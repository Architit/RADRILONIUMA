.class public final synthetic Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/codec/language/bm/PhoneticEngine;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda1;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda1;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lambda$encode$3$org-apache-commons-codec-language-bm-PhoneticEngine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
