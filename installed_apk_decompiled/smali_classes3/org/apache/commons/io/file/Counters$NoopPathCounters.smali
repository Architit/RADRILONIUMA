.class final Lorg/apache/commons/io/file/Counters$NoopPathCounters;
.super Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
.source "Counters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopPathCounters"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/io/file/Counters$NoopPathCounters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 353
    new-instance v0, Lorg/apache/commons/io/file/Counters$NoopPathCounters;

    invoke-direct {v0}, Lorg/apache/commons/io/file/Counters$NoopPathCounters;-><init>()V

    sput-object v0, Lorg/apache/commons/io/file/Counters$NoopPathCounters;->INSTANCE:Lorg/apache/commons/io/file/Counters$NoopPathCounters;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 359
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v1

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;-><init>(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V

    return-void
.end method
