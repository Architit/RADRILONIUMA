.class public final synthetic Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/time/FastDateParser;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser;ILjava/util/Calendar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/time/FastDateParser;

    iput p2, p0, Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;->f$2:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/time/FastDateParser;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$$ExternalSyntheticLambda0;->f$2:Ljava/util/Calendar;

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->lambda$getLocaleSpecificStrategy$2$org-apache-commons-lang3-time-FastDateParser(ILjava/util/Calendar;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p1

    return-object p1
.end method
