.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Integral"
.end annotation


# instance fields
.field private band:[I

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

    .line 204
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V

    .line 205
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;)[I
    .locals 0

    .line 198
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->band:[I

    return-object p0
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 7

    .line 210
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->band:[I

    aget p1, v0, p1

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "SV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "SI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "SH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "SB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "FV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "FI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "FH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "FB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v6, v2

    goto :goto_0

    :sswitch_8
    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v6, v4

    goto :goto_0

    :sswitch_a
    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v6, v5

    goto :goto_0

    :sswitch_b
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v6, v3

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 236
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "PO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v3

    .line 238
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    .line 239
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addBCOffset(II)V

    goto/16 :goto_2

    .line 240
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 241
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v3

    .line 242
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    .line 243
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addBCIndex(II)V

    goto :goto_2

    .line 244
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "OS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 245
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v3

    .line 246
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    if-eq v0, v5, :cond_f

    if-eq v0, v4, :cond_e

    goto :goto_1

    :cond_e
    int-to-short p1, p1

    goto :goto_1

    :cond_f
    int-to-byte p1, p1

    .line 260
    :goto_1
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addBCLength(II)V

    goto :goto_2

    .line 261
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v3

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    .line 264
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addBCLength(II)V

    goto :goto_2

    :pswitch_0
    int-to-short p1, p1

    int-to-long v0, p1

    .line 224
    invoke-virtual {p2, v4, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addInteger(IJ)V

    goto :goto_2

    :pswitch_1
    int-to-byte p1, p1

    int-to-long v0, p1

    .line 217
    invoke-virtual {p2, v5, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addInteger(IJ)V

    goto :goto_2

    :pswitch_2
    int-to-long v0, p1

    .line 229
    invoke-virtual {p2, v2, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addInteger(IJ)V

    goto :goto_2

    :pswitch_3
    int-to-long v0, p1

    .line 221
    invoke-virtual {p2, v4, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addInteger(IJ)V

    goto :goto_2

    :pswitch_4
    int-to-long v0, p1

    .line 214
    invoke-virtual {p2, v5, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addInteger(IJ)V

    :cond_11
    :goto_2
    :pswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_b
        0x48 -> :sswitch_a
        0x49 -> :sswitch_9
        0x56 -> :sswitch_8
        0x8bc -> :sswitch_7
        0x8c2 -> :sswitch_6
        0x8c3 -> :sswitch_5
        0x8d0 -> :sswitch_4
        0xa4f -> :sswitch_3
        0xa55 -> :sswitch_2
        0xa56 -> :sswitch_1
        0xa63 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    return-object v0
.end method

.method getValue(I)I
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->band:[I

    aget p1, v0, p1

    return p1
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getCodec(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->band:[I

    return-void
.end method
