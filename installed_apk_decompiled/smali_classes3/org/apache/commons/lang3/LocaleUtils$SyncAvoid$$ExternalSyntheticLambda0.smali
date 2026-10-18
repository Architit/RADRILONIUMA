.class public final synthetic Lorg/apache/commons/lang3/LocaleUtils$SyncAvoid$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/Locale;

    invoke-static {p1}, Lorg/apache/commons/lang3/LocaleUtils$SyncAvoid;->$r8$lambda$DS80wmQCU0qOl9Dh5jFFN2fZ0Ag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
