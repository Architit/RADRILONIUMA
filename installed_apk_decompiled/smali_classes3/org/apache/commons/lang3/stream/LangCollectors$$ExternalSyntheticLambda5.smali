.class public final synthetic Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    check-cast p1, Ljava/util/StringJoiner;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/stream/LangCollectors;->lambda$joining$1(Ljava/util/function/Function;Ljava/util/StringJoiner;Ljava/lang/Object;)V

    return-void
.end method
