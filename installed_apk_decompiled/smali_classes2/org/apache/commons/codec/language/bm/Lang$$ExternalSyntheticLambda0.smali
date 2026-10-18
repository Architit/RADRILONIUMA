.class public final synthetic Lorg/apache/commons/codec/language/bm/Lang$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Lang$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/Lang$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Lang$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Lang$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Lorg/apache/commons/codec/language/bm/Lang$LangRule;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/codec/language/bm/Lang;->lambda$guessLanguages$0(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/codec/language/bm/Lang$LangRule;)V

    return-void
.end method
