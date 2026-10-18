.class public Lorg/apache/commons/lang3/Strings$Builder;
.super Lorg/apache/commons/lang3/builder/AbstractSupplier;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/AbstractSupplier<",
        "Lorg/apache/commons/lang3/Strings;",
        "Lorg/apache/commons/lang3/Strings$Builder;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field private ignoreCase:Z

.field private nullIsLess:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/AbstractSupplier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/Strings$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/commons/lang3/Strings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Strings$Builder;->get()Lorg/apache/commons/lang3/Strings;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/Strings;
    .locals 3

    .line 61
    iget-boolean v0, p0, Lorg/apache/commons/lang3/Strings$Builder;->ignoreCase:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/lang3/Strings$CiStrings;

    iget-boolean v2, p0, Lorg/apache/commons/lang3/Strings$Builder;->nullIsLess:Z

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang3/Strings$CiStrings;-><init>(ZLorg/apache/commons/lang3/Strings$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/Strings$CsStrings;

    iget-boolean v2, p0, Lorg/apache/commons/lang3/Strings$Builder;->nullIsLess:Z

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang3/Strings$CsStrings;-><init>(ZLorg/apache/commons/lang3/Strings$1;)V

    :goto_0
    return-object v0
.end method

.method public setIgnoreCase(Z)Lorg/apache/commons/lang3/Strings$Builder;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/apache/commons/lang3/Strings$Builder;->ignoreCase:Z

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Strings$Builder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/Strings$Builder;

    return-object p1
.end method

.method public setNullIsLess(Z)Lorg/apache/commons/lang3/Strings$Builder;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lorg/apache/commons/lang3/Strings$Builder;->nullIsLess:Z

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Strings$Builder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/Strings$Builder;

    return-object p1
.end method
