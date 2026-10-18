.class public final synthetic Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/apache/commons/io/input/CharacterSetFilterReader;->lambda$toIntPredicate$0(Ljava/util/Set;I)Z

    move-result p1

    return p1
.end method
