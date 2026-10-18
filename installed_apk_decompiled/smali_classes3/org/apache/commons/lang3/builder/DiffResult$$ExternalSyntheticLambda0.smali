.class public final synthetic Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/builder/ToStringBuilder;

.field public final synthetic f$1:Lorg/apache/commons/lang3/builder/ToStringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/builder/ToStringBuilder;Lorg/apache/commons/lang3/builder/ToStringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iput-object p2, p0, Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/builder/ToStringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/builder/ToStringBuilder;

    check-cast p1, Lorg/apache/commons/lang3/builder/Diff;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/builder/DiffResult;->lambda$toString$0(Lorg/apache/commons/lang3/builder/ToStringBuilder;Lorg/apache/commons/lang3/builder/ToStringBuilder;Lorg/apache/commons/lang3/builder/Diff;)V

    return-void
.end method
