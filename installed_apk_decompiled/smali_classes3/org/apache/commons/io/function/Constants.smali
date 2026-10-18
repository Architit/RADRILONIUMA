.class final Lorg/apache/commons/io/function/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final IO_BI_CONSUMER:Lorg/apache/commons/io/function/IOBiConsumer;

.field static final IO_BI_FUNCTION:Lorg/apache/commons/io/function/IOBiFunction;

.field static final IO_FUNCTION_ID:Lorg/apache/commons/io/function/IOFunction;

.field static final IO_PREDICATE_FALSE:Lorg/apache/commons/io/function/IOPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOPredicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final IO_PREDICATE_TRUE:Lorg/apache/commons/io/function/IOPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOPredicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final IO_RUNNABLE:Lorg/apache/commons/io/function/IORunnable;

.field static final IO_TRI_CONSUMER:Lorg/apache/commons/io/function/IOTriConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_BI_CONSUMER:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 36
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_RUNNABLE:Lorg/apache/commons/io/function/IORunnable;

    .line 44
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_BI_FUNCTION:Lorg/apache/commons/io/function/IOBiFunction;

    .line 50
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_FUNCTION_ID:Lorg/apache/commons/io/function/IOFunction;

    .line 55
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_PREDICATE_FALSE:Lorg/apache/commons/io/function/IOPredicate;

    .line 60
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_PREDICATE_TRUE:Lorg/apache/commons/io/function/IOPredicate;

    .line 66
    new-instance v0, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/commons/io/function/Constants$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_TRI_CONSUMER:Lorg/apache/commons/io/function/IOTriConsumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$static$1()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$static$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$static$4(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$5(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$static$6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
