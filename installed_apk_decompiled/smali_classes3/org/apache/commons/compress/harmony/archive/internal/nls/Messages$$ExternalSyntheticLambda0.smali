.class public final synthetic Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Locale;

.field public final synthetic f$2:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;->f$1:Ljava/util/Locale;

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;->f$2:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;->f$1:Ljava/util/Locale;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticLambda0;->f$2:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages;->lambda$setLocale$1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
