.class public final synthetic Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages;->lambda$format$0([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
