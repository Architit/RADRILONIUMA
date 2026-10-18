.class Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;
.super Ljava/lang/Object;
.source "IterableStringTokenizer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/util/IterableStringTokenizer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/util/IterableStringTokenizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/util/IterableStringTokenizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;->this$0:Lorg/apache/commons/lang3/util/IterableStringTokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;->this$0:Lorg/apache/commons/lang3/util/IterableStringTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/util/IterableStringTokenizer;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;->this$0:Lorg/apache/commons/lang3/util/IterableStringTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/util/IterableStringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
