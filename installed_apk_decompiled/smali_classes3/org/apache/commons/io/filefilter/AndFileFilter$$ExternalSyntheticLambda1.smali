.class public final synthetic Lorg/apache/commons/io/filefilter/AndFileFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/filefilter/AndFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/AndFileFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/AndFileFilter$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/filefilter/AndFileFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/filefilter/AndFileFilter;

    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-void
.end method
