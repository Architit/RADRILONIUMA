.class public final synthetic Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/TimeZone;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$0:Ljava/util/TimeZone;

    iput-boolean p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$3:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$0:Ljava/util/TimeZone;

    iget-boolean v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$$ExternalSyntheticLambda0;->f$3:Ljava/util/Locale;

    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->lambda$getTimeZoneDisplay$0(Ljava/util/TimeZone;ZILjava/util/Locale;Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
