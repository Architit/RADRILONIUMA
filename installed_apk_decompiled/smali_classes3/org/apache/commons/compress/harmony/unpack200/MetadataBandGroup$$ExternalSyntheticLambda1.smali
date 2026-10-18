.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

.field public final synthetic f$1:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$1:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$2:[I

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$3:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$1:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$2:[I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;->f$3:Ljava/util/Iterator;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->lambda$getAttribute$0$org-apache-commons-compress-harmony-unpack200-MetadataBandGroup([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p1

    return-object p1
.end method
