.class public Lorg/apache/commons/io/output/CloseShieldWriter;
.super Lorg/apache/commons/io/output/ProxyWriter;
.source "CloseShieldWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public static wrap(Ljava/io/Writer;)Lorg/apache/commons/io/output/CloseShieldWriter;
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/io/output/CloseShieldWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/CloseShieldWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    sget-object v0, Lorg/apache/commons/io/output/ClosedWriter;->INSTANCE:Lorg/apache/commons/io/output/ClosedWriter;

    iput-object v0, p0, Lorg/apache/commons/io/output/CloseShieldWriter;->out:Ljava/io/Writer;

    return-void
.end method
