.class public final synthetic Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOFunction;->lambda$andThen$0(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
