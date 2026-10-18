.class public abstract Lorg/apache/commons/compress/java/util/jar/Pack200;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;,
        Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    }
.end annotation


# static fields
.field private static final SYSTEM_PROPERTY_PACKER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final SYSTEM_PROPERTY_UNPACKER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$newInstance$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 265
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 268
    :try_start_0
    const-class p1, Lorg/apache/commons/compress/java/util/jar/Pack200;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-nez p1, :cond_0

    .line 270
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "ClassLoader.getSystemClassLoader()"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    .line 272
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 274
    new-instance v0, Ljava/lang/Error;

    const-string v1, "archive.3E"

    invoke-static {v1, p0}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 264
    new-instance v0, Lorg/apache/commons/compress/java/util/jar/Pack200$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/java/util/jar/Pack200$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newPacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;
    .locals 2

    .line 289
    const-string v0, "java.util.jar.Pack200.Packer"

    const-string v1, "org.apache.commons.compress.harmony.pack200.Pack200PackerAdapter"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;

    return-object v0
.end method

.method public static newUnpacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    .locals 2

    .line 302
    const-string v0, "java.util.jar.Pack200.Unpacker"

    const-string v1, "org.apache.commons.compress.harmony.unpack200.Pack200UnpackerAdapter"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;

    return-object v0
.end method
