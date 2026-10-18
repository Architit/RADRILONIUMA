.class public Lorg/apache/commons/io/input/BOMInputStream$Builder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "BOMInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/BOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/BOMInputStream;",
        "Lorg/apache/commons/io/input/BOMInputStream$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;


# instance fields
.field private byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

.field private include:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    sget-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    filled-new-array {v0}, [Lorg/apache/commons/io/ByteOrderMark;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    .line 143
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/BOMInputStream$Builder;)[Lorg/apache/commons/io/ByteOrderMark;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/BOMInputStream$Builder;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->include:Z

    return p0
.end method

.method static synthetic access$300()[Lorg/apache/commons/io/ByteOrderMark;
    .locals 1

    .line 130
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    return-object v0
.end method

.method static getDefaultByteOrderMark()Lorg/apache/commons/io/ByteOrderMark;
    .locals 2

    .line 140
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream$Builder;->get()Lorg/apache/commons/io/input/BOMInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/BOMInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Lorg/apache/commons/io/input/BOMInputStream$Builder;Lorg/apache/commons/io/input/BOMInputStream$1;)V

    return-object v0
.end method

.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 130
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setByteOrderMarks([Lorg/apache/commons/io/ByteOrderMark;)Lorg/apache/commons/io/input/BOMInputStream$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, [Lorg/apache/commons/io/ByteOrderMark;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/io/ByteOrderMark;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

    return-object p0
.end method

.method public setInclude(Z)Lorg/apache/commons/io/input/BOMInputStream$Builder;
    .locals 0

    .line 207
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->include:Z

    return-object p0
.end method
