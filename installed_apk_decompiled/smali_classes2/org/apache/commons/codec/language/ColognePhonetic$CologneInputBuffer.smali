.class final Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
.super Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CologneInputBuffer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method constructor <init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->this$0:Lorg/apache/commons/codec/language/ColognePhonetic;

    .line 225
    invoke-direct {p0, p2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;-><init>([C)V

    return-void
.end method


# virtual methods
.method protected copyData(II)[C
    .locals 4

    .line 230
    new-array v0, p2, [C

    .line 231
    iget-object v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    iget-object v2, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    const/4 p1, 0x0

    invoke-static {v1, v2, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getNextChar()C
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected getNextPos()I
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public removeNext()C
    .locals 2

    .line 244
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v0

    .line 245
    iget v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    return v0
.end method
