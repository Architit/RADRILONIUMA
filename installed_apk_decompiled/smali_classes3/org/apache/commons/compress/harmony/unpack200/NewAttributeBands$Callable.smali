.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;
.super Ljava/lang/Object;
.source "NewAttributeBands.java"

# interfaces
.implements Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callable"
.end annotation


# instance fields
.field private final body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private index:I

.field private isBackwardsCallable:Z

.field private isFirstCallable:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->body:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)Ljava/util/List;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->body:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addCount(I)V
    .locals 1

    .line 140
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->count:I

    return-void
.end method

.method public addNextToAttribute(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 150
    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_0

    .line 152
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->index:I

    return-void
.end method

.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 2

    .line 157
    iget-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isFirstCallable:Z

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->body:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 160
    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->index:I

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_0

    .line 162
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->index:I

    :cond_1
    return-void
.end method

.method public getBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->body:Ljava/util/List;

    return-object v0
.end method

.method public isBackwardsCallable()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isBackwardsCallable:Z

    return v0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isFirstCallable:Z

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->count:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 179
    :cond_0
    iget p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->count:I

    .line 181
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 182
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->readBands(Ljava/io/InputStream;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setBackwardsCallable()V
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isBackwardsCallable:Z

    return-void
.end method

.method public setFirstCallable(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isFirstCallable:Z

    return-void
.end method
