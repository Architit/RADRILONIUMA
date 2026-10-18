.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/String; = "H"

.field private static final HOURS_PER_DAY:I = 0x18

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/String; = "M"

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field static final S:Ljava/lang/String; = "S"

.field private static final SECONDS_PER_MINUTES:I = 0x3c

.field static final d:Ljava/lang/String; = "d"

.field static final m:Ljava/lang/String; = "m"

.field static final s:Ljava/lang/String; = "s"

.field static final y:Ljava/lang/String; = "y"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    .line 242
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    array-length v14, v0

    const/16 v16, 0x0

    move/from16 v12, v16

    move/from16 v17, v12

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v21, v20

    const/4 v11, -0x1

    const/16 v19, -0x1

    :goto_0
    if-ge v12, v14, :cond_20

    aget-object v22, v0, v12

    .line 250
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    move/from16 v23, v14

    .line 251
    instance-of v14, v0, Ljava/lang/StringBuilder;

    move/from16 v24, v12

    .line 252
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v12

    .line 253
    invoke-static/range {v22 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$000(Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;)I

    move-result v9

    if-eq v11, v9, :cond_1

    .line 254
    invoke-static/range {v22 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$000(Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;)I

    move-result v11

    const/4 v9, -0x1

    if-le v11, v9, :cond_0

    .line 257
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v18, v16

    move/from16 v20, v18

    move/from16 v9, v19

    const/16 v17, 0x1

    goto :goto_1

    :cond_0
    move/from16 v17, v16

    :cond_1
    move/from16 v9, v19

    :goto_1
    if-eqz v14, :cond_4

    if-eqz v17, :cond_2

    if-nez v18, :cond_3

    .line 268
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-wide/from16 v0, p13

    move-object v2, v13

    const/4 v13, 0x1

    goto/16 :goto_d

    .line 270
    :cond_4
    const-string v10, "y"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v25, 0x0

    if-eqz v10, :cond_8

    cmp-long v0, v1, v25

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move/from16 v0, v16

    :goto_2
    if-eqz v17, :cond_6

    if-nez v0, :cond_7

    .line 274
    :cond_6
    invoke-static {v1, v2, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    move/from16 v18, v0

    move-object v2, v13

    move/from16 v21, v16

    const/4 v13, 0x1

    :goto_4
    move-wide/from16 v0, p13

    goto/16 :goto_d

    .line 276
    :cond_8
    const-string v10, "M"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    cmp-long v0, v3, v25

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    move/from16 v0, v16

    :goto_5
    if-eqz v17, :cond_a

    if-nez v0, :cond_7

    .line 280
    :cond_a
    invoke-static {v3, v4, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 282
    :cond_b
    const-string v10, "d"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    cmp-long v0, v5, v25

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    move/from16 v0, v16

    :goto_6
    if-eqz v17, :cond_d

    if-nez v0, :cond_7

    .line 286
    :cond_d
    invoke-static {v5, v6, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 288
    :cond_e
    const-string v10, "H"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    cmp-long v0, v7, v25

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    move/from16 v0, v16

    :goto_7
    if-eqz v17, :cond_10

    if-nez v0, :cond_7

    .line 292
    :cond_10
    invoke-static {v7, v8, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 294
    :cond_11
    const-string v10, "m"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    move-wide/from16 v1, p9

    cmp-long v0, v1, v25

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_8

    :cond_12
    move/from16 v0, v16

    :goto_8
    if-eqz v17, :cond_13

    if-nez v0, :cond_7

    .line 298
    :cond_13
    invoke-static {v1, v2, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_14
    move-wide/from16 v1, p9

    .line 300
    const-string v10, "s"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move-wide/from16 v1, p11

    const/4 v10, -0x1

    cmp-long v0, v1, v25

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_9

    :cond_15
    move/from16 v0, v16

    :goto_9
    if-eqz v17, :cond_16

    if-nez v0, :cond_17

    .line 304
    :cond_16
    invoke-static {v1, v2, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    move/from16 v18, v0

    move-object v2, v13

    const/4 v13, 0x1

    const/16 v21, 0x1

    goto/16 :goto_4

    :cond_18
    move-wide/from16 v1, p11

    .line 306
    const-string v10, "S"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide/from16 v0, p13

    move-object v2, v13

    cmp-long v10, v0, v25

    if-nez v10, :cond_19

    const/4 v10, 0x1

    goto :goto_a

    :cond_19
    move/from16 v10, v16

    :goto_a
    if-eqz v17, :cond_1b

    if-nez v10, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v13, 0x1

    goto :goto_c

    :cond_1b
    :goto_b
    if-eqz v21, :cond_1d

    const/4 v13, 0x3

    if-eqz v15, :cond_1c

    .line 311
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_1c
    const/4 v12, 0x1

    .line 312
    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    goto :goto_c

    :cond_1d
    const/4 v13, 0x1

    .line 314
    invoke-static {v0, v1, v15, v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    move/from16 v18, v10

    move/from16 v21, v16

    :goto_d
    if-eqz v17, :cond_1f

    if-nez v14, :cond_1f

    if-nez v20, :cond_1f

    if-eqz v18, :cond_1e

    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1e
    move/from16 v20, v13

    :cond_1f
    add-int/lit8 v12, v24, 0x1

    move-object/from16 v0, p0

    move-object v13, v2

    move/from16 v19, v9

    move/from16 v14, v23

    move-wide/from16 v1, p1

    move-wide/from16 v9, p9

    goto/16 :goto_0

    :cond_20
    move-object v2, v13

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 342
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 23

    const-wide v2, 0x7fffffffffffffffL

    .line 359
    const-string v6, "durationMillis must not be negative"

    const-wide/16 v0, 0x0

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 361
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v7

    .line 369
    const-string v0, "d"

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/32 v3, 0x5265c00

    .line 370
    div-long v5, p0, v3

    mul-long/2addr v3, v5

    sub-long v3, p0, v3

    move-wide v12, v5

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p0

    move-wide v12, v1

    .line 373
    :goto_0
    const-string v0, "H"

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v5, 0x36ee80

    .line 374
    div-long v8, v3, v5

    mul-long/2addr v5, v8

    sub-long/2addr v3, v5

    move-wide v14, v8

    goto :goto_1

    :cond_1
    move-wide v14, v1

    .line 377
    :goto_1
    const-string v0, "m"

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/32 v5, 0xea60

    .line 378
    div-long v8, v3, v5

    mul-long/2addr v5, v8

    sub-long/2addr v3, v5

    move-wide/from16 v16, v8

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v1

    .line 381
    :goto_2
    const-string v0, "s"

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x3e8

    .line 382
    div-long v5, v3, v0

    mul-long/2addr v0, v5

    sub-long/2addr v3, v0

    move-wide/from16 v20, v3

    move-wide/from16 v18, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    :goto_3
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move/from16 v22, p3

    .line 386
    invoke-static/range {v7 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1

    .line 399
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2

    .line 415
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 6

    .line 438
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 439
    const-string p1, " 0 minutes"

    const-string v0, " 0 hours"

    const-string v1, " 0 days"

    const-string v2, " "

    const-string v3, ""

    if-eqz p2, :cond_2

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 443
    sget-object p2, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    invoke-virtual {p2, p0, v1, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 444
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 447
    sget-object p0, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    invoke-virtual {p0, p2, v0, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 451
    sget-object p2, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    invoke-virtual {p2, p0, p1, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 455
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 457
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-eqz p3, :cond_4

    .line 462
    sget-object p2, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    const-string p3, " 0 seconds"

    invoke-virtual {p2, p0, p3, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq p3, v4, :cond_4

    .line 466
    sget-object p0, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    invoke-virtual {p0, p2, p1, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p1, p3, :cond_3

    .line 470
    sget-object p1, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    invoke-virtual {p1, p0, v0, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p2, p3, :cond_4

    .line 473
    sget-object p0, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    invoke-virtual {p0, p1, v1, v3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, p2

    .line 479
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 481
    sget-object p1, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    const-string p2, " 1 seconds"

    const-string p3, " 1 second"

    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 483
    sget-object p1, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    const-string p2, " 1 minutes"

    const-string p3, " 1 minute"

    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 485
    sget-object p1, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    const-string p2, " 1 hours"

    const-string p3, " 1 hour"

    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 487
    sget-object p1, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    const-string p2, " 1 days"

    const-string p3, " 1 day"

    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/commons/lang3/Strings;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x1

    .line 502
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 25

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 531
    :goto_0
    const-string v7, "startMillis must not be greater than endMillis"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v9

    .line 543
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 544
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 545
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xe

    .line 549
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-long v1, v2

    const/16 v3, 0xd

    .line 550
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v7, v3

    const/16 v3, 0xc

    .line 551
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v8, v3

    const/16 v3, 0xb

    .line 552
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v10, v3

    const/4 v3, 0x5

    .line 553
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    .line 554
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v13, v14

    .line 555
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v15

    sub-int/2addr v14, v15

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v15, v1, v15

    const-wide/16 v16, 0x3e8

    if-gez v15, :cond_1

    add-long v1, v1, v16

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v7, :cond_2

    add-int/lit8 v7, v7, 0x3c

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gez v8, :cond_3

    add-int/lit8 v8, v8, 0x3c

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-gez v10, :cond_4

    add-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 575
    :cond_4
    const-string v15, "M"

    invoke-static {v9, v15}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v15

    const-string v5, "y"

    if-eqz v15, :cond_7

    :goto_5
    if-gez v11, :cond_5

    .line 577
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v11, v0

    add-int/lit8 v13, v13, -0x1

    .line 579
    invoke-virtual {v4, v12, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    :cond_5
    :goto_6
    if-gez v13, :cond_6

    add-int/lit8 v13, v13, 0xc

    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 587
    :cond_6
    invoke-static {v9, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v14, :cond_d

    :goto_7
    if-eqz v14, :cond_d

    mul-int/lit8 v14, v14, 0xc

    add-int/2addr v13, v14

    const/4 v14, 0x0

    goto :goto_7

    .line 596
    :cond_7
    invoke-static {v9, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 597
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-gez v13, :cond_8

    add-int/lit8 v5, v5, -0x1

    .line 603
    :cond_8
    :goto_8
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-eq v13, v5, :cond_a

    const/4 v13, 0x6

    .line 604
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v11, v14

    .line 607
    instance-of v14, v4, Ljava/util/GregorianCalendar;

    if-eqz v14, :cond_9

    .line 608
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v14, v6, :cond_9

    .line 609
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0x1d

    if-ne v14, v15, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 613
    :cond_9
    invoke-virtual {v4, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 615
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v11, v13

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    .line 621
    :cond_b
    :goto_9
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-eq v5, v13, :cond_c

    .line 622
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v11, v5

    .line 623
    invoke-virtual {v4, v12, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_a
    if-gez v11, :cond_d

    .line 629
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v11, v0

    add-int/lit8 v13, v13, -0x1

    .line 631
    invoke-virtual {v4, v12, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_a

    .line 640
    :cond_d
    const-string v0, "d"

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    mul-int/lit8 v11, v11, 0x18

    add-int/2addr v10, v11

    const/4 v11, 0x0

    .line 644
    :cond_e
    const-string v0, "H"

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v8, v10

    const/4 v10, 0x0

    .line 648
    :cond_f
    const-string v0, "m"

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 652
    :cond_10
    const-string v0, "s"

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    int-to-long v3, v7

    mul-long v3, v3, v16

    add-long/2addr v1, v3

    move-wide/from16 v22, v1

    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    move-wide/from16 v22, v1

    move v5, v7

    :goto_b
    int-to-long v0, v14

    int-to-long v12, v13

    int-to-long v14, v11

    int-to-long v2, v10

    int-to-long v6, v8

    int-to-long v4, v5

    move-wide v10, v0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v6

    move-wide/from16 v20, v4

    move/from16 v24, p5

    .line 657
    invoke-static/range {v9 .. v24}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    .line 671
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 12

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v1

    move v5, v4

    move v6, v5

    move-object v7, v2

    move-object v8, v7

    .line 690
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_11

    .line 691
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-eqz v5, :cond_0

    if-eq v9, v10, :cond_0

    .line 693
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    const/4 v11, 0x1

    if-eq v9, v10, :cond_d

    const/16 v10, 0x48

    if-eq v9, v10, :cond_c

    const/16 v10, 0x4d

    if-eq v9, v10, :cond_b

    const/16 v10, 0x53

    if-eq v9, v10, :cond_a

    const/16 v10, 0x5b

    if-eq v9, v10, :cond_8

    const/16 v10, 0x5d

    if-eq v9, v10, :cond_6

    const/16 v10, 0x64

    if-eq v9, v10, :cond_5

    const/16 v10, 0x6d

    if-eq v9, v10, :cond_4

    const/16 v10, 0x73

    if-eq v9, v10, :cond_3

    const/16 v10, 0x79

    if-eq v9, v10, :cond_2

    if-nez v7, :cond_1

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    new-instance v10, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v10, v7, v6, v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/CharSequence;ZI)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_1
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 724
    :cond_2
    const-string v9, "y"

    goto/16 :goto_2

    .line 739
    :cond_3
    const-string v9, "s"

    goto/16 :goto_2

    .line 736
    :cond_4
    const-string v9, "m"

    goto :goto_2

    .line 730
    :cond_5
    const-string v9, "d"

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    move v6, v1

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 708
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to close unopened optional block at index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    move-object v9, v2

    move v6, v11

    goto :goto_2

    .line 701
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nested optional block at index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_a
    const-string v9, "S"

    goto :goto_2

    .line 727
    :cond_b
    const-string v9, "M"

    goto :goto_2

    .line 733
    :cond_c
    const-string v9, "H"

    goto :goto_2

    :cond_d
    if-eqz v5, :cond_e

    move v5, v1

    move-object v7, v2

    move-object v9, v7

    goto :goto_2

    .line 717
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    new-instance v5, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v5, v7, v6, v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/CharSequence;ZI)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v2

    move v5, v11

    :goto_2
    if-eqz v9, :cond_10

    if-eqz v8, :cond_f

    .line 752
    invoke-virtual {v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 753
    invoke-virtual {v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    goto :goto_3

    .line 755
    :cond_f
    new-instance v7, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v7, v9, v6, v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/CharSequence;ZI)V

    .line 756
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v7

    :goto_3
    move-object v7, v2

    :cond_10
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_11
    if-nez v5, :cond_13

    if-nez v6, :cond_12

    .line 768
    invoke-static {}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$100()[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object p0

    .line 766
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched optional in format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched quote in format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .locals 0

    .line 781
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    const/16 p1, 0x30

    .line 782
    invoke-static {p0, p3, p1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
