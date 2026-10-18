.class public final synthetic Lorg/apache/commons/io/output/BrokenOutputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/output/BrokenOutputStream$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/io/output/BrokenOutputStream;->lambda$new$2(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method
