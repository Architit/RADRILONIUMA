.class public Lorg/apache/commons/lang3/time/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/commons/lang3/time/CalendarUtils;->getInstance()Lorg/apache/commons/lang3/time/CalendarUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/CalendarUtils;->INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Calendar;Ljava/util/Locale;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "calendar"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    .line 124
    const-string p1, "locale"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/lang3/time/CalendarUtils;
    .locals 2

    .line 53
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method static getInstance(Ljava/util/Locale;)Lorg/apache/commons/lang3/time/CalendarUtils;
    .locals 2

    .line 64
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$getMonthDisplayNames$0([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 168
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-object p1, p0, p2

    return-void
.end method

.method public static toLocalDateTime(Ljava/util/Calendar;)Ljava/time/LocalDateTime;
    .locals 1

    .line 75
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toZoneId(Ljava/util/Calendar;)Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static toOffsetDateTime(Ljava/util/Calendar;)Ljava/time/OffsetDateTime;
    .locals 1

    .line 86
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toZoneId(Ljava/util/Calendar;)Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method private static toZoneId(Ljava/util/Calendar;)Ljava/time/ZoneId;
    .locals 0

    .line 101
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static toZonedDateTime(Ljava/util/Calendar;)Ljava/time/ZonedDateTime;
    .locals 1

    .line 97
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toZoneId(Ljava/util/Calendar;)Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getMonthDisplayNames(I)[Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, p1, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 168
    new-instance v1, Lorg/apache/commons/lang3/time/CalendarUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/time/CalendarUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method getStandaloneLongMonthNames()[Ljava/lang/String;
    .locals 1

    const v0, 0x8002

    .line 177
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->getMonthDisplayNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStandaloneShortMonthNames()[Ljava/lang/String;
    .locals 1

    const v0, 0x8001

    .line 185
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->getMonthDisplayNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    invoke-static {v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toLocalDateTime(Ljava/util/Calendar;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    invoke-static {v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toOffsetDateTime(Ljava/util/Calendar;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    invoke-static {v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->toZonedDateTime(Ljava/util/Calendar;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
