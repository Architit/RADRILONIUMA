.class public final synthetic Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

.field public final synthetic f$1:[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;->f$1:[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;->f$1:[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->lambda$parseMethodMetadataBands$2$org-apache-commons-compress-harmony-unpack200-ClassBands([Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I

    move-result p1

    return p1
.end method
