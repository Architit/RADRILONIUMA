.class public final enum Lorg/apache/commons/lang3/arch/Processor$Type;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/arch/Processor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum AARCH_64:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum RISC_V:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum X86:Lorg/apache/commons/lang3/arch/Processor$Type;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 6

    .line 86
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->AARCH_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    sget-object v3, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    sget-object v4, Lorg/apache/commons/lang3/arch/Processor$Type;->RISC_V:Lorg/apache/commons/lang3/arch/Processor$Type;

    sget-object v5, Lorg/apache/commons/lang3/arch/Processor$Type;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/commons/lang3/arch/Processor$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 93
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v1, 0x0

    const-string v2, "AArch64"

    const-string v3, "AARCH_64"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->AARCH_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 98
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v1, 0x1

    const-string v2, "x86"

    const-string v3, "X86"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 103
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v1, 0x2

    const-string v2, "IA-64"

    const-string v3, "IA_64"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 108
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const-string v1, "PPC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 115
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v1, 0x4

    const-string v2, "RISC-V"

    const-string v3, "RISC_V"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->RISC_V:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 120
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v1, 0x5

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 86
    invoke-static {}, Lorg/apache/commons/lang3/arch/Processor$Type;->$values()[Lorg/apache/commons/lang3/arch/Processor$Type;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput-object p3, p0, Lorg/apache/commons/lang3/arch/Processor$Type;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 86
    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 86
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor$Type;->label:Ljava/lang/String;

    return-object v0
.end method
