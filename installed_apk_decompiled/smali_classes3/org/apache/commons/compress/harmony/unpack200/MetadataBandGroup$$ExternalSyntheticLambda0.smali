.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[ILjava/util/Iterator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;->f$2:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;->f$1:[I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;->f$2:Ljava/util/Iterator;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->lambda$getParameterAttribute$1$org-apache-commons-compress-harmony-unpack200-MetadataBandGroup([ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p1

    return-object p1
.end method
