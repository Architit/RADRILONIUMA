.class public final synthetic Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Streams$ArrayCollector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Streams$ArrayCollector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/Streams$ArrayCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/Streams$ArrayCollector;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/Streams$ArrayCollector;->lambda$finisher$1$org-apache-commons-lang3-Streams$ArrayCollector(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
