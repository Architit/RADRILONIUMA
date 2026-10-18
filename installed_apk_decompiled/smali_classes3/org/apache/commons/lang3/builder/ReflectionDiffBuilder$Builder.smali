.class public final Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
.super Ljava/lang/Object;
.source "ReflectionDiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private excludeFieldNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;->excludeFieldNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;->excludeFieldNames:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$1;)V

    return-object v0
.end method

.method public setDiffBuilder(Lorg/apache/commons/lang3/builder/DiffBuilder;)Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;)",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    return-object p0
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 124
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->access$100([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;->excludeFieldNames:[Ljava/lang/String;

    return-object p0
.end method
