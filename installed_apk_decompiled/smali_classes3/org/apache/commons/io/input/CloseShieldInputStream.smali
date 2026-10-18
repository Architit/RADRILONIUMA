.class public Lorg/apache/commons/io/input/CloseShieldInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static systemIn(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .line 41
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/input/CloseShieldInputStream;->wrap(Ljava/io/InputStream;)Lorg/apache/commons/io/input/CloseShieldInputStream;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Ljava/io/InputStream;)Lorg/apache/commons/io/input/CloseShieldInputStream;
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/commons/io/input/CloseShieldInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/commons/io/input/ClosedInputStream;->INSTANCE:Lorg/apache/commons/io/input/ClosedInputStream;

    iput-object v0, p0, Lorg/apache/commons/io/input/CloseShieldInputStream;->in:Ljava/io/InputStream;

    return-void
.end method
