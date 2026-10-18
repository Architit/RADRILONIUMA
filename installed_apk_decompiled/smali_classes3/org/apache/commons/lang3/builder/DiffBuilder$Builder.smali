.class public final Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
.super Ljava/lang/Object;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;
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
.field private left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private style:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private testObjectsEquals:Z

.field private toStringFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->testObjectsEquals:Z

    .line 89
    const-string v0, "%s differs from %s"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->toStringFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/lang3/builder/DiffBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 104
    new-instance v7, Lorg/apache/commons/lang3/builder/DiffBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->left:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->right:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-boolean v4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->testObjectsEquals:Z

    iget-object v5, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->toStringFormat:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang3/builder/DiffBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/String;Lorg/apache/commons/lang3/builder/DiffBuilder$1;)V

    return-object v7
.end method

.method public setLeft(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->left:Ljava/lang/Object;

    return-object p0
.end method

.method public setRight(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->right:Ljava/lang/Object;

    return-object p0
.end method

.method public setStyle(Lorg/apache/commons/lang3/builder/ToStringStyle;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    sget-object p1, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object p0
.end method

.method public setTestObjectsEquals(Z)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 151
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->testObjectsEquals:Z

    return-object p0
.end method

.method public setToStringFormat(Ljava/lang/String;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    const-string p1, "%s differs from %s"

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->toStringFormat:Ljava/lang/String;

    return-object p0
.end method
