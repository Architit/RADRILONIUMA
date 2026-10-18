.class public final synthetic Lorg/apache/commons/io/filefilter/MagicNumberFileFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->lambda$accept$0$org-apache-commons-io-filefilter-MagicNumberFileFilter(Ljava/io/RandomAccessFile;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
