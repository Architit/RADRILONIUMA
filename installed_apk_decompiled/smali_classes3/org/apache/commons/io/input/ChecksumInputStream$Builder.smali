.class public Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "ChecksumInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ChecksumInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/ChecksumInputStream;",
        "Lorg/apache/commons/io/input/ChecksumInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private checksum:Ljava/util/zip/Checksum;

.field private countThreshold:J

.field private expectedChecksumValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    const-wide/16 v0, -0x1

    .line 114
    iput-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->countThreshold:J

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)Ljava/util/zip/Checksum;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->checksum:Ljava/util/zip/Checksum;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->countThreshold:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->expectedChecksumValue:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ChecksumInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/apache/commons/io/input/ChecksumInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ChecksumInputStream;-><init>(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;Lorg/apache/commons/io/input/ChecksumInputStream$1;)V

    return-object v0
.end method

.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 99
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

    .line 99
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->checksum:Ljava/util/zip/Checksum;

    return-object p0
.end method

.method public setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0

    .line 178
    iput-wide p1, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->countThreshold:J

    return-object p0
.end method

.method public setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0

    .line 189
    iput-wide p1, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->expectedChecksumValue:J

    return-object p0
.end method
