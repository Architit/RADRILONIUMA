.class public final synthetic Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/codec/language/bm/PhoneticEngine;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$$ExternalSyntheticLambda3;->f$2:Ljava/util/Map;

    check-cast p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lambda$applyFinalRules$1$org-apache-commons-codec-language-bm-PhoneticEngine(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V

    return-void
.end method
