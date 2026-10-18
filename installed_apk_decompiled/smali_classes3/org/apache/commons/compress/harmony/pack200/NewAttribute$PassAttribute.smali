.class public Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;
.super Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
.source "NewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassAttribute"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 51
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .locals 0

    .line 56
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;

    invoke-direct {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;-><init>()V

    throw p1
.end method
