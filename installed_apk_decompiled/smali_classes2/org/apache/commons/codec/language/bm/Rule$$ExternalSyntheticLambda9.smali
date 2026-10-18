.class public final synthetic Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/codec/language/bm/Rule$RPattern;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final isMatch(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/commons/codec/language/bm/Rule$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, v1, p1}, Lorg/apache/commons/codec/language/bm/Rule;->lambda$pattern$11(Ljava/lang/String;ZLjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
