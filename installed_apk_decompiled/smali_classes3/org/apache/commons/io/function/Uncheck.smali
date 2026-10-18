.class public final Lorg/apache/commons/io/function/Uncheck;
.super Ljava/lang/Object;
.source "Uncheck.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "TT;TU;>;TT;TU;)V"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/function/IOBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 45
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 61
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V
    .locals 0

    .line 75
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->accept(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 77
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOTriConsumer<",
            "TT;TU;TV;>;TT;TU;TV;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/io/function/IOTriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 97
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/function/IOBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 117
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 135
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lorg/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOQuadFunction<",
            "TT;TU;TV;TW;TR;>;TT;TU;TV;TW;)TR;"
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/function/IOQuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 159
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOTriFunction<",
            "TT;TU;TV;TR;>;TT;TU;TV;)TR;"
        }
    .end annotation

    .line 179
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/io/function/IOTriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 181
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static compare(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOComparator<",
            "TT;>;TT;TT;)I"
        }
    .end annotation

    .line 197
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/function/IOComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 199
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 215
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static get(Lorg/apache/commons/io/function/IOSupplier;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 232
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsBoolean(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z
    .locals 0

    .line 246
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOBooleanSupplier;->getAsBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 248
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;)I
    .locals 0

    .line 262
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOIntSupplier;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 264
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;Ljava/util/function/Supplier;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOIntSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 279
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOIntSupplier;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 281
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsLong(Lorg/apache/commons/io/function/IOLongSupplier;)J
    .locals 2

    .line 295
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOLongSupplier;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 297
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsLong(Lorg/apache/commons/io/function/IOLongSupplier;Ljava/util/function/Supplier;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOLongSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 312
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOLongSupplier;->getAsLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 314
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static run(Lorg/apache/commons/io/function/IORunnable;)V
    .locals 0

    .line 326
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IORunnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 328
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static run(Lorg/apache/commons/io/function/IORunnable;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IORunnable;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IORunnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 344
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static test(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOPredicate<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 358
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 360
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method private static wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;
    .locals 1

    .line 371
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method

.method private static wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/IOException;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/UncheckedIOException;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method
