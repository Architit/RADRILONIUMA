.class public final synthetic Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda3;->f$0:J

    check-cast p1, Ljava/lang/Thread;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/ThreadUtils;->lambda$findThreadById$0(JLjava/lang/Thread;)Z

    move-result p1

    return p1
.end method
