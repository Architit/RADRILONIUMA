.class public Lorg/apache/commons/lang3/time/TimeZones;
.super Ljava/lang/Object;
.source "TimeZones.java"


# static fields
.field public static final GMT:Ljava/util/TimeZone;

.field public static final GMT_ID:Ljava/lang/String; = "GMT"


# direct methods
.method public static synthetic $r8$lambda$oqniJWQ17vthcW-_7ixdu539rks()Ljava/util/TimeZone;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/TimeZones;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toTimeZone(Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/lang3/time/TimeZones$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/TimeZones$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->getIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TimeZone;

    return-object p0
.end method
