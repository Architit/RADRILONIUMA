.class public Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
.super Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;
.source "MessageDigestInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;)Ljava/security/MessageDigest;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

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

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->get()Lorg/apache/commons/io/input/MessageDigestInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/MessageDigestInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 108
    new-array v0, v0, [Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    new-instance v1, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;

    iget-object v2, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    invoke-direct {v1, v2}, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->setObservers(Ljava/util/List;)V

    .line 109
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/MessageDigestInputStream;-><init>(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;Lorg/apache/commons/io/input/MessageDigestInputStream$1;)V

    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 139
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method
