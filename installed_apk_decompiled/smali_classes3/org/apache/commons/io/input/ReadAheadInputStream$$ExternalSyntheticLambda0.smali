.class public final synthetic Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/input/ReadAheadInputStream;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/input/ReadAheadInputStream;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/input/ReadAheadInputStream;

    iput-object p2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/input/ReadAheadInputStream;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;->f$1:[B

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;->lambda$readAsync$1$org-apache-commons-io-input-ReadAheadInputStream([B)V

    return-void
.end method
