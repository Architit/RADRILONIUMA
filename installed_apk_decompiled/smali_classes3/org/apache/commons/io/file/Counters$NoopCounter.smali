.class final Lorg/apache/commons/io/file/Counters$NoopCounter;
.super Ljava/lang/Object;
.source "Counters.java"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopCounter"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/io/file/Counters$NoopCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 308
    new-instance v0, Lorg/apache/commons/io/file/Counters$NoopCounter;

    invoke-direct {v0}, Lorg/apache/commons/io/file/Counters$NoopCounter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/file/Counters$NoopCounter;->INSTANCE:Lorg/apache/commons/io/file/Counters$NoopCounter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 0

    return-void
.end method

.method public get()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 322
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 327
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public increment()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 343
    const-string v0, "0"

    return-object v0
.end method
