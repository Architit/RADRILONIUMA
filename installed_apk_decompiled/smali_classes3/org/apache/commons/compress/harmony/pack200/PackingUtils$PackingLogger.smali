.class final Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;
.super Ljava/util/logging/Logger;
.source "PackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/PackingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackingLogger"
.end annotation


# instance fields
.field private verbose:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->setVerbose(Z)V

    return-void
.end method

.method private setVerbose(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->verbose:Z

    return-void
.end method


# virtual methods
.method public log(Ljava/util/logging/LogRecord;)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->verbose:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    :cond_0
    return-void
.end method
