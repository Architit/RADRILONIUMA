.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;-><init>()V

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0
.end method
