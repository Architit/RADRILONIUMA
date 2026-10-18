.class public Lorg/apache/commons/lang3/exception/ContextedException;
.super Ljava/lang/Exception;
.source "ContextedException.java"

# interfaces
.implements Lorg/apache/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 99
    new-instance v0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance p1, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {p1}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    new-instance p1, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {p1}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/ExceptionContext;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p3, :cond_0

    .line 137
    new-instance p3, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {p3}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    .line 139
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 151
    new-instance p1, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {p1}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    move-result-object p1

    return-object p1
.end method

.method public getContextEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 221
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/exception/ContextedException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .locals 1

    .line 232
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    move-result-object p1

    return-object p1
.end method
