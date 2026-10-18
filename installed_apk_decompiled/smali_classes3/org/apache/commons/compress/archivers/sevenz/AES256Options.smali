.class final Lorg/apache/commons/compress/archivers/sevenz/AES256Options;
.super Ljava/lang/Object;
.source "AES256Options.java"


# static fields
.field static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final EMPTY_BYTE_ARRAY:[B

.field static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/NoPadding"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final iv:[B

.field private final numCyclesPower:I

.field private final salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>([C)V
    .locals 3

    .line 69
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->EMPTY_BYTE_ARRAY:[B

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->randomBytes(I)[B

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;-><init>([C[B[BI)V

    return-void
.end method

.method constructor <init>([C[B[BI)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->salt:[B

    .line 81
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->iv:[B

    .line 82
    iput p4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->numCyclesPower:I

    .line 85
    invoke-static {p1, p4, p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->sha256Password([CI[B)[B

    move-result-object p1

    .line 86
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->newSecretKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    .line 89
    :try_start_0
    const-string p2, "AES/CBC/NoPadding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->cipher:Ljavax/crypto/Cipher;

    .line 90
    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Encryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static newSecretKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2

    .line 45
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 2

    .line 49
    new-array p0, p0, [B

    .line 51
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No strong secure random available to generate strong AES key"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method getIv()[B
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->iv:[B

    return-object v0
.end method

.method getNumCyclesPower()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->numCyclesPower:I

    return v0
.end method

.method getSalt()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->salt:[B

    return-object v0
.end method
