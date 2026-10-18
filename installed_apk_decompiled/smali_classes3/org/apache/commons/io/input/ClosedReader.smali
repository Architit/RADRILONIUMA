.class public Lorg/apache/commons/io/input/ClosedReader;
.super Ljava/io/Reader;
.source "ClosedReader.java"


# static fields
.field public static final CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/commons/io/input/ClosedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/commons/io/input/ClosedReader;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedReader;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/ClosedReader;->INSTANCE:Lorg/apache/commons/io/input/ClosedReader;

    .line 50
    sput-object v0, Lorg/apache/commons/io/input/ClosedReader;->CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read([CII)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
