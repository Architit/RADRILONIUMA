.class final Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;
.super Ljava/lang/Object;
.source "ByteBufferCleaner.java"

# interfaces
.implements Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ByteBufferCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Java9Cleaner"
.end annotation


# instance fields
.field private final invokeCleaner:Ljava/lang/reflect/Method;

.field private final theUnsafe:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "sun.misc.Unsafe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->theUnsafe:Ljava/lang/Object;

    .line 70
    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "invokeCleaner"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->invokeCleaner:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public clean(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->invokeCleaner:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->theUnsafe:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
