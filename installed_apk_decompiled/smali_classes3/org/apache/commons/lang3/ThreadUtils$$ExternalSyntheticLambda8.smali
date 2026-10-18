.class public final synthetic Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/ThreadUtils;->lambda$namePredicate$2(Ljava/util/function/Function;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
