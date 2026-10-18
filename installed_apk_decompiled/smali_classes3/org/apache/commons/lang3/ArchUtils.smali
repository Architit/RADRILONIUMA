.class public Lorg/apache/commons/lang3/ArchUtils;
.super Ljava/lang/Object;
.source "ArchUtils.java"


# static fields
.field private static final ARCH_TO_PROCESSOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/arch/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    .line 39
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V
    .locals 2

    .line 50
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " already exists in processor map"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static varargs addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-static {p1}, Lorg/apache/commons/lang3/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/arch/Processor;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getProcessor()Lorg/apache/commons/lang3/arch/Processor;
    .locals 1

    .line 77
    invoke-static {}, Lorg/apache/commons/lang3/SystemProperties;->getOsArch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ArchUtils;->getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;
    .locals 1

    .line 88
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor;

    return-object p0
.end method

.method private static init()V
    .locals 0

    .line 92
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_32Bit()V

    .line 93
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_64Bit()V

    .line 94
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_32Bit()V

    .line 95
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_64Bit()V

    .line 96
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_32Bit()V

    .line 97
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_64Bit()V

    .line 98
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_Aarch_64Bit()V

    .line 99
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_RISCV_32Bit()V

    .line 100
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_RISCV_64Bit()V

    return-void
.end method

.method private static init_Aarch_64Bit()V
    .locals 3

    .line 104
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->AARCH_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "aarch64"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_IA64_32Bit()V
    .locals 3

    .line 108
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "ia64_32"

    const-string v2, "ia64n"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_IA64_64Bit()V
    .locals 3

    .line 112
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "ia64"

    const-string v2, "ia64w"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_PPC_32Bit()V
    .locals 6

    .line 116
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "power_pc"

    const-string v2, "power_rs"

    const-string v3, "ppc"

    const-string v4, "power"

    const-string v5, "powerpc"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_PPC_64Bit()V
    .locals 6

    .line 120
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "power_pc64"

    const-string v2, "power_rs64"

    const-string v3, "ppc64"

    const-string v4, "power64"

    const-string v5, "powerpc64"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_RISCV_32Bit()V
    .locals 3

    .line 124
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->RISC_V:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "riscv32"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_RISCV_64Bit()V
    .locals 3

    .line 128
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->RISC_V:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "riscv64"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_X86_32Bit()V
    .locals 9

    .line 132
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v7, "i686"

    const-string v8, "pentium"

    const-string v3, "x86"

    const-string v4, "i386"

    const-string v5, "i486"

    const-string v6, "i586"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_X86_64Bit()V
    .locals 5

    .line 136
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "em64t"

    const-string v2, "universal"

    const-string v3, "x86_64"

    const-string v4, "amd64"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addProcessors$0(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1, p0}, Lorg/apache/commons/lang3/ArchUtils;->addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V

    return-void
.end method
