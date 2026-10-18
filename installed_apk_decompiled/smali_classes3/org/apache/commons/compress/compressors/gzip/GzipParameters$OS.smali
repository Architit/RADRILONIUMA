.class public final enum Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
.super Ljava/lang/Enum;
.source "GzipParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum ACORN_RISCOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum AMIGA:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum ATARI_TOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum CPM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum FAT:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum HPFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum MACINTOSH:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum NTFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum QDOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum TOPS_20:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum UNIX:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum VMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum VM_CMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field public static final enum Z_SYSTEM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
    .locals 15

    .line 65
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->ACORN_RISCOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->AMIGA:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v2, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->ATARI_TOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v3, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->CPM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v4, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->FAT:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v5, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->HPFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v6, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->MACINTOSH:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v7, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->NTFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v8, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->QDOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v9, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->TOPS_20:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v10, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNIX:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v11, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v12, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->VM_CMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v13, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->VMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    sget-object v14, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->Z_SYSTEM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    filled-new-array/range {v0 .. v14}, [Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 70
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "ACORN_RISCOS"

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->ACORN_RISCOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 75
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "AMIGA"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->AMIGA:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 80
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "ATARI_TOS"

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->ATARI_TOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 85
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "CPM"

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->CPM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 91
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "FAT"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->FAT:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 96
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "HPFS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->HPFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 101
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "MACINTOSH"

    const/4 v5, 0x7

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->MACINTOSH:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 106
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "NTFS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->NTFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 111
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "QDOS"

    const/16 v5, 0x8

    const/16 v9, 0xc

    invoke-direct {v0, v1, v5, v9}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->QDOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 116
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "TOPS_20"

    const/16 v10, 0xa

    invoke-direct {v0, v1, v7, v10}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->TOPS_20:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 121
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "UNIX"

    invoke-direct {v0, v1, v10, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNIX:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 126
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "UNKNOWN"

    const/16 v6, 0xff

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 131
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "VM_CMS"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->VM_CMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 136
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "VMS"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->VMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 141
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    const-string v1, "Z_SYSTEM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->Z_SYSTEM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    .line 65
    invoke-static {}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->$values()[Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->$VALUES:[Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput p3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->type:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;)I
    .locals 0

    .line 65
    iget p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->type:I

    return p0
.end method

.method public static from(I)Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
    .locals 1

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 183
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 153
    :pswitch_0
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->ACORN_RISCOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 169
    :pswitch_1
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->QDOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 167
    :pswitch_2
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->NTFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 171
    :pswitch_3
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->TOPS_20:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 159
    :pswitch_4
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->CPM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 181
    :pswitch_5
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->Z_SYSTEM:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 165
    :pswitch_6
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->MACINTOSH:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 163
    :pswitch_7
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->HPFS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 157
    :pswitch_8
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->ATARI_TOS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 177
    :pswitch_9
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->VM_CMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 173
    :pswitch_a
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNIX:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 179
    :pswitch_b
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->VMS:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 155
    :pswitch_c
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->AMIGA:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 161
    :pswitch_d
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->FAT:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    .line 175
    :cond_0
    sget-object p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 65
    const-class v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->$VALUES:[Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object v0
.end method


# virtual methods
.method public type()I
    .locals 1

    .line 204
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->type:I

    return v0
.end method
