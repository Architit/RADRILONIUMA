.class public Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "SegmentHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;
    }
.end annotation


# static fields
.field private static final archive_majver:I = 0x96

.field private static final archive_minver:I = 0x7

.field private static final magic:[I


# instance fields
.field private archive_modtime:I

.field private archive_next_count:I

.field private archive_options:I

.field private archive_size_hi:I

.field private archive_size_lo:I

.field private attribute_definition_count:I

.field private final band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private class_count:I

.field private cp_Class_count:I

.field private cp_Descr_count:I

.field private cp_Double_count:I

.field private cp_Field_count:I

.field private cp_Float_count:I

.field private cp_Imethod_count:I

.field private cp_Int_count:I

.field private cp_Long_count:I

.field private cp_Method_count:I

.field private cp_Signature_count:I

.field private cp_String_count:I

.field private cp_Utf8_count:I

.field private deflate_hint:Z

.field private file_count:I

.field private have_all_code_flags:Z

.field private have_class_flags_hi:Z

.field private have_code_flags_hi:Z

.field private have_field_flags_hi:Z

.field private final have_file_modtime:Z

.field private final have_file_options:Z

.field private have_file_size_hi:Z

.field private have_method_flags_hi:Z

.field private ic_count:I

.field private final majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd0

    const/16 v1, 0xd

    const/16 v2, 0xca

    const/16 v3, 0xfe

    .line 68
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->magic:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 88
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 90
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    .line 99
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_modtime:Z

    .line 100
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_options:Z

    .line 109
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    return-void
.end method

.method private calculateArchiveOptions()V
    .locals 2

    .line 128
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->attribute_definition_count:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 131
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Int_count:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Float_count:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Long_count:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Double_count:I

    if-lez v0, :cond_3

    .line 132
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 134
    :cond_3
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    if-eqz v0, :cond_4

    .line 135
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 137
    :cond_4
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->file_count:I

    if-lez v0, :cond_5

    .line 138
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 140
    :cond_5
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->deflate_hint:Z

    if-eqz v0, :cond_6

    .line 141
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 144
    :cond_6
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v1, v0, 0xc0

    .line 147
    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 149
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_size_hi:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x1c0

    .line 150
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 152
    :cond_7
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi:Z

    if-eqz v0, :cond_8

    .line 153
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 155
    :cond_8
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi:Z

    if-eqz v0, :cond_9

    .line 156
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 158
    :cond_9
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi:Z

    if-eqz v0, :cond_a

    .line 159
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 161
    :cond_a
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi:Z

    if-eqz v0, :cond_b

    .line 162
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    :cond_b
    return-void
.end method

.method private writeArchiveFileCounts(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 314
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 315
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_size_hi:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 316
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_size_lo:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 317
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_next_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 318
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_modtime:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 319
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->file_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method private writeArchiveSpecialCounts(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 324
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 326
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->attribute_definition_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method private writeClassCounts(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->getMostCommon()I

    move-result v0

    .line 333
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->ic_count:I

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    .line 334
    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 335
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 336
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->class_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeCpCounts(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 340
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Utf8_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 342
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Int_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 343
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Float_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 344
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Long_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 345
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Double_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 347
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_String_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 348
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Class_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 349
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Signature_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 350
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Descr_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 351
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Field_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 352
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Method_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 353
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Imethod_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public addMajorVersion(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->add(I)V

    return-void
.end method

.method public appendBandCodingSpecifier(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public getArchive_modtime()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_modtime:I

    return v0
.end method

.method public getDefaultMajorVersion()I
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->getMostCommon()I

    move-result v0

    return v0
.end method

.method public have_all_code_flags()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    return v0
.end method

.method public have_class_flags_hi()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi:Z

    return v0
.end method

.method public have_code_flags_hi()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi:Z

    return v0
.end method

.method public have_field_flags_hi()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi:Z

    return v0
.end method

.method public have_file_modtime()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public have_file_options()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public have_file_size_hi()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_size_hi:Z

    return v0
.end method

.method public have_method_flags_hi()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi:Z

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 211
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->magic:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x7

    .line 212
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x96

    .line 213
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->calculateArchiveOptions()V

    .line 215
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 216
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeArchiveFileCounts(Ljava/io/OutputStream;)V

    .line 217
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeArchiveSpecialCounts(Ljava/io/OutputStream;)V

    .line 218
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeCpCounts(Ljava/io/OutputStream;)V

    .line 219
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeClassCounts(Ljava/io/OutputStream;)V

    .line 220
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public setAttribute_definition_count(I)V
    .locals 0

    .line 226
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->attribute_definition_count:I

    return-void
.end method

.method public setClass_count(I)V
    .locals 0

    .line 230
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->class_count:I

    return-void
.end method

.method public setCp_Class_count(I)V
    .locals 0

    .line 234
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Class_count:I

    return-void
.end method

.method public setCp_Descr_count(I)V
    .locals 0

    .line 238
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Descr_count:I

    return-void
.end method

.method public setCp_Double_count(I)V
    .locals 0

    .line 242
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Double_count:I

    return-void
.end method

.method public setCp_Field_count(I)V
    .locals 0

    .line 246
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Field_count:I

    return-void
.end method

.method public setCp_Float_count(I)V
    .locals 0

    .line 250
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Float_count:I

    return-void
.end method

.method public setCp_Imethod_count(I)V
    .locals 0

    .line 254
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Imethod_count:I

    return-void
.end method

.method public setCp_Int_count(I)V
    .locals 0

    .line 258
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Int_count:I

    return-void
.end method

.method public setCp_Long_count(I)V
    .locals 0

    .line 262
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Long_count:I

    return-void
.end method

.method public setCp_Method_count(I)V
    .locals 0

    .line 266
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Method_count:I

    return-void
.end method

.method public setCp_Signature_count(I)V
    .locals 0

    .line 270
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Signature_count:I

    return-void
.end method

.method public setCp_String_count(I)V
    .locals 0

    .line 274
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_String_count:I

    return-void
.end method

.method public setCp_Utf8_count(I)V
    .locals 0

    .line 278
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Utf8_count:I

    return-void
.end method

.method public setDeflate_hint(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->deflate_hint:Z

    return-void
.end method

.method public setFile_count(I)V
    .locals 0

    .line 286
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->file_count:I

    return-void
.end method

.method public setHave_all_code_flags(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    return-void
.end method

.method public setHave_class_flags_hi(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi:Z

    return-void
.end method

.method public setHave_code_flags_hi(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi:Z

    return-void
.end method

.method public setHave_field_flags_hi(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi:Z

    return-void
.end method

.method public setHave_method_flags_hi(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi:Z

    return-void
.end method

.method public setIc_count(I)V
    .locals 0

    .line 310
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->ic_count:I

    return-void
.end method
