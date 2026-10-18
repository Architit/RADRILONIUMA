.class public Lorg/apache/commons/compress/harmony/pack200/CPSignature;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "CPSignature.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final formStartsWithBracket:Z

.field private final signature:Ljava/lang/String;

.field private final signatureForm:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signatureForm:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 36
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    .line 37
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->formStartsWithBracket:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->formStartsWithBracket:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->formStartsWithBracket:Z

    if-nez v2, :cond_1

    return v1

    .line 48
    :cond_1
    iget-boolean v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->formStartsWithBracket:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 51
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 54
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 56
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 57
    iget-object v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 58
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 64
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->classes:Ljava/util/List;

    return-object v0
.end method

.method public getIndexInCpUtf8()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signatureForm:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v0

    return v0
.end method

.method public getSignatureForm()Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signatureForm:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    return-object v0
.end method

.method public getUnderlyingString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->signature:Ljava/lang/String;

    return-object v0
.end method
