.class public Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "CPUTF8.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->string:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUnderlyingString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->string:Ljava/lang/String;

    return-object v0
.end method
