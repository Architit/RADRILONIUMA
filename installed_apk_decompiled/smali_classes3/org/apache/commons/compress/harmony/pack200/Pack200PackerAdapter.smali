.class public Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;
.super Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;
.source "Pack200PackerAdapter.java"

# interfaces
.implements Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;


# instance fields
.field private final options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    return-void
.end method


# virtual methods
.method protected firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p3, :cond_b

    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 41
    const-string v0, "pack.class.attribute."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addClassAttributeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :cond_0
    const-string v0, "pack.code.attribute."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p2, 0x14

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addCodeAttributeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_1
    const-string v0, "pack.deflate.hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->setDeflateHint(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_2
    const-string v0, "pack.effort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->setEffort(I)V

    goto/16 :goto_0

    .line 51
    :cond_3
    const-string v0, "pack.field.attribute."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addFieldAttributeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_4
    const-string v0, "pack.keep.file.order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->setKeepFileOrder(Z)V

    goto :goto_0

    .line 56
    :cond_5
    const-string v0, "pack.method.attribute."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p2, 0x16

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addMethodAttributeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_6
    const-string v0, "pack.modification.time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->setModificationTime(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_7
    const-string v0, "pack.pass.file."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    .line 62
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 63
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->removePassFile(Ljava/lang/String;)V

    .line 65
    :cond_8
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addPassFile(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_9
    const-string p2, "pack.segment.limit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 67
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseLongValue(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->setSegmentLimit(J)V

    goto :goto_0

    .line 68
    :cond_a
    const-string p2, "pack.unknown.attribute"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 69
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->setUnknownAttributeAction(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public pack(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->completed(D)V

    .line 81
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Archive;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/compress/harmony/pack200/Archive;-><init>(Ljava/util/jar/JarFile;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Archive;->pack()V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Pack200Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->completed(D)V

    return-void

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to pack Jar:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify both input and output streams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->completed(D)V

    .line 94
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;-><init>()V

    .line 97
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/Archive;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/commons/compress/harmony/pack200/Archive;-><init>(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Archive;->pack()V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Pack200Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 101
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200PackerAdapter;->completed(D)V

    .line 102
    invoke-virtual {p1}, Ljava/util/jar/JarInputStream;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to pack Jar:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify both input and output streams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
