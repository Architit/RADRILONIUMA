.class public Lorg/apache/commons/io/input/CharacterFilterReader;
.super Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.source "CharacterFilterReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method static synthetic lambda$new$0(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
