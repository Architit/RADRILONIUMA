.class public final synthetic Lorg/apache/commons/io/function/IOPredicate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOPredicate;

.field public final synthetic f$1:Lorg/apache/commons/io/function/IOPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOPredicate;Lorg/apache/commons/io/function/IOPredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOPredicate$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/io/function/IOPredicate;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOPredicate$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/io/function/IOPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOPredicate$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/io/function/IOPredicate;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOPredicate$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/io/function/IOPredicate;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOPredicate;->lambda$or$4(Lorg/apache/commons/io/function/IOPredicate;Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
