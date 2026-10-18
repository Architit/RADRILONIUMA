.class public final Lorg/apache/commons/lang3/stream/LangCollectors;
.super Ljava/lang/Object;
.source "LangCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;
    }
.end annotation


# static fields
.field private static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9qn3NN9X9dxyoDq4Dykq_ahOit4(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H6Oy0BHoZhDAlEAplH3IpKO3xOc(Ljava/util/StringJoiner;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S6aA5w2fxS7Rb4LqItGBv8mBxPY(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V_uu1X1UKpbECUj-5gbjPr-ONSE()Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$bEK12JPJND67JDB1iFKO0s8n4NA(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dE4psNc2M_4Zgo3FI7XRZGtK84A(Ljava/util/StringJoiner;Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hXlGjjCEa8blGX6fSZBIUPgjRGY(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/stream/LangCollectors;->CH_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs collect(Ljava/util/stream/Collector;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;[TT;)TR;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 112
    invoke-static {p1}, Lorg/apache/commons/lang3/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static joining()Ljava/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v7, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;

    new-instance v1, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda3;-><init>()V

    sget-object v5, Lorg/apache/commons/lang3/stream/LangCollectors;->CH_NOID:Ljava/util/Set;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;Lorg/apache/commons/lang3/stream/LangCollectors$1;)V

    return-object v7
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    const-string v0, ""

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v7, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;

    new-instance v1, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda4;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v2, p3}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;)V

    new-instance v3, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda6;-><init>()V

    new-instance v4, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda7;-><init>()V

    sget-object v5, Lorg/apache/commons/lang3/stream/LangCollectors;->CH_NOID:Ljava/util/Set;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;Lorg/apache/commons/lang3/stream/LangCollectors$1;)V

    return-object v7
.end method

.method static synthetic lambda$joining$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1

    .line 210
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$joining$1(Ljava/util/function/Function;Ljava/util/StringJoiner;Ljava/lang/Object;)V
    .locals 0

    .line 210
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method
