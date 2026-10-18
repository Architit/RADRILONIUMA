.class final Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SDiff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/builder/Diff<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final leftSupplier:Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final rightSupplier:Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier<",
            "TT;>;",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p4}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 175
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->leftSupplier:Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;

    .line 176
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->rightSupplier:Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/DiffBuilder$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;-><init>(Ljava/lang/String;Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->leftSupplier:Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;

    invoke-interface {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->rightSupplier:Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;

    invoke-interface {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder$SerializableSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
