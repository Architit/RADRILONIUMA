.class public Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;
.super Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;
.source "MessageDigestCalculatingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;-><init>()V

    .line 79
    :try_start_0
    invoke-static {}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->getDefaultMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;)Ljava/security/MessageDigest;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->get()Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 109
    new-array v0, v0, [Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    new-instance v1, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;

    iget-object v2, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    invoke-direct {v1, v2}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->setObservers(Ljava/util/List;)V

    .line 110
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$1;)V

    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 137
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method
