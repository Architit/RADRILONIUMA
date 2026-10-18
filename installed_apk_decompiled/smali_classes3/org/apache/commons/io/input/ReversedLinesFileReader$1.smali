.class Lorg/apache/commons/io/input/ReversedLinesFileReader$1;
.super Ljava/lang/Object;
.source "ReversedLinesFileReader.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/io/input/ReversedLinesFileReader;->iterator()Lorg/apache/commons/io/function/IOIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/io/function/IOIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;


# direct methods
.method constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    const/4 v1, 0x0

    .line 497
    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$1;->next:Ljava/lang/String;

    return-object v0
.end method

.method public unwrap()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
