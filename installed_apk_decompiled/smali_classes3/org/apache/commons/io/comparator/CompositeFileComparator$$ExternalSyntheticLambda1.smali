.class public final synthetic Lorg/apache/commons/io/comparator/CompositeFileComparator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->lambda$compare$1(Ljava/io/File;Ljava/io/File;Ljava/util/Comparator;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
