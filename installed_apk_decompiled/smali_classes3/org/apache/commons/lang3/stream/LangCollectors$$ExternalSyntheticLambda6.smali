.class public final synthetic Lorg/apache/commons/lang3/stream/LangCollectors$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/StringJoiner;

    check-cast p2, Ljava/util/StringJoiner;

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/stream/LangCollectors;->$r8$lambda$dE4psNc2M_4Zgo3FI7XRZGtK84A(Ljava/util/StringJoiner;Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object p1

    return-object p1
.end method
