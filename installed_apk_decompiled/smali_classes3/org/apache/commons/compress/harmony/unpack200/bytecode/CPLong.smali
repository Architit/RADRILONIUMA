.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstantNumber;
.source "CPLong.java"


# direct methods
.method public constructor <init>(Ljava/lang/Long;I)V
    .locals 1

    const/4 v0, 0x5

    .line 36
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstantNumber;-><init>(BLjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method
