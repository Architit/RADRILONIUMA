.class public Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ValidatingObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;",
        "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-direct {v0}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->get()Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;-><init>(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$1;)V

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object v0
.end method

.method public reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public setPredicate(Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance p1, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-direct {p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method
