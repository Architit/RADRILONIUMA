.class public final synthetic Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[J

.field public final synthetic f$1:Ljava/util/EnumSet;


# direct methods
.method public synthetic constructor <init>([JLjava/util/EnumSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;->f$0:[J

    iput-object p2, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;->f$0:[J

    iget-object v1, p0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/EnumSet;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/EnumUtils;->lambda$processBitVectors$3([JLjava/util/EnumSet;Ljava/lang/Enum;)V

    return-void
.end method
