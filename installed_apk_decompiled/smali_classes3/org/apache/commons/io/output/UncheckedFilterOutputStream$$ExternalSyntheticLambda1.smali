.class public final synthetic Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$write$2$org-apache-commons-io-output-UncheckedFilterOutputStream([B)V

    return-void
.end method
