.class public final synthetic Lorg/apache/commons/lang3/Strings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/ToBooleanBiFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Strings;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Strings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Strings$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/Strings;

    return-void
.end method


# virtual methods
.method public final applyAsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/lang3/Strings$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/Strings;

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/Strings;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
