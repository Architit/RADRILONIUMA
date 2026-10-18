.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reference"
.end annotation


# instance fields
.field private band:Ljava/lang/Object;

.field private final length:I

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V

    .line 319
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    .line 320
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->getLength(C)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    return-void
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 335
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 336
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 337
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 338
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    .line 339
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    .line 341
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 342
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 344
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 346
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 348
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->length:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "KS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPStringReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPClassReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 370
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 371
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 372
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPDescriptorReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto/16 :goto_0

    .line 374
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 375
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPFieldRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto :goto_0

    .line 376
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 377
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto :goto_0

    .line 378
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 379
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPInterfaceMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->tag:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 381
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->band:Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method
