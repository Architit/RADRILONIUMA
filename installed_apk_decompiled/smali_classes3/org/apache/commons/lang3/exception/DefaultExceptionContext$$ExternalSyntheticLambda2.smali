.class public final synthetic Lorg/apache/commons/lang3/exception/DefaultExceptionContext$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang3/tuple/Pair;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->lambda$setContextValue$2(Ljava/lang/String;Lorg/apache/commons/lang3/tuple/Pair;)Z

    move-result p1

    return p1
.end method
