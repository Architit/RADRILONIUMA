.class public final synthetic Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOComparator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOComparator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/io/function/IOComparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/io/function/IOComparator;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->lambda$sorted$23(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
