.class public final synthetic Lorg/apache/commons/io/filefilter/WildcardFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter$$ExternalSyntheticLambda2;->f$0:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter$$ExternalSyntheticLambda2;->f$0:Ljava/nio/file/Path;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/WildcardFilter;->lambda$accept$2(Ljava/nio/file/Path;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
