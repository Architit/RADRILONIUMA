.class public final synthetic Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IORunnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$close$0$org-apache-commons-io-output-UncheckedFilterOutputStream()V

    return-void
.end method
