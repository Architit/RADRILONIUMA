.class public final synthetic Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct([BII)Ljava/io/InputStream;
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->lambda$toInputStream$1([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p1

    return-object p1
.end method
