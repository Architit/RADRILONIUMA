.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Constructor;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->lambda$register$0(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method
