.class public final Lorg/apache/commons/lang3/AppendableJoiner;
.super Ljava/lang/Object;
.source "AppendableJoiner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private final delimiter:Ljava/lang/CharSequence;

.field private final prefix:Ljava/lang/CharSequence;

.field private final suffix:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {p1}, Lorg/apache/commons/lang3/AppendableJoiner;->nonNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->prefix:Ljava/lang/CharSequence;

    .line 260
    invoke-static {p2}, Lorg/apache/commons/lang3/AppendableJoiner;->nonNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->suffix:Ljava/lang/CharSequence;

    .line 261
    invoke-static {p3}, Lorg/apache/commons/lang3/AppendableJoiner;->nonNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->delimiter:Ljava/lang/CharSequence;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance p4, Lorg/apache/commons/lang3/AppendableJoiner$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lorg/apache/commons/lang3/AppendableJoiner$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    iput-object p4, p0, Lorg/apache/commons/lang3/AppendableJoiner;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/AppendableJoiner$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/AppendableJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/AppendableJoiner$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/AppendableJoiner$Builder;-><init>()V

    return-object v0
.end method

.method static varargs joinA(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            "T:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;[TT;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 180
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinArray(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method private static joinArray(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            "T:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;[TT;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-eqz p5, :cond_1

    .line 187
    array-length p1, p5

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 188
    aget-object p1, p5, p1

    invoke-interface {p4, p0, p1}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 190
    :goto_0
    array-length v0, p5

    if-ge p1, v0, :cond_1

    .line 191
    invoke-interface {p0, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 192
    aget-object v0, p5, p1

    invoke-interface {p4, p0, v0}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0
.end method

.method static joinI(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 203
    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinIterable(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 206
    new-instance p1, Lorg/apache/commons/lang3/exception/UncheckedException;

    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/exception/UncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static joinIterable(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            "T:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/Iterable<",
            "TT;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-eqz p5, :cond_1

    .line 214
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p4, p0, p5}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 219
    invoke-interface {p0, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 220
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p4, p0, p5}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0
.end method

.method static varargs joinSB(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;[TT;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 232
    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinArray(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 235
    new-instance p1, Lorg/apache/commons/lang3/exception/UncheckedException;

    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/exception/UncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$new$0(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method private static nonNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public join(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 273
    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->prefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner;->suffix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner;->delimiter:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/apache/commons/lang3/AppendableJoiner;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinI(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs join(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[TT;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 284
    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->prefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner;->suffix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner;->delimiter:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/apache/commons/lang3/AppendableJoiner;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinSB(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public joinA(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Iterable<",
            "TT;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->prefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner;->suffix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner;->delimiter:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/apache/commons/lang3/AppendableJoiner;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinIterable(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public varargs joinA(Ljava/lang/Appendable;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;[TT;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->prefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner;->suffix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner;->delimiter:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/apache/commons/lang3/AppendableJoiner;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/AppendableJoiner;->joinA(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;[Ljava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method
