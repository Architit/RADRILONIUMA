.class public final synthetic Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/codec/language/bm/NameType;

.field public final synthetic f$1:Lorg/apache/commons/codec/language/bm/RuleType;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/codec/language/bm/NameType;

    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/codec/language/bm/RuleType;

    iput-object p3, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/codec/language/bm/NameType;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/codec/language/bm/RuleType;

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/codec/language/bm/Rule;->lambda$static$1(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
