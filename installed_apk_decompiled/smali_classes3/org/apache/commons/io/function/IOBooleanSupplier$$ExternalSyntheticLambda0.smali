.class public final synthetic Lorg/apache/commons/io/function/IOBooleanSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOBooleanSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBooleanSupplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOBooleanSupplier$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOBooleanSupplier;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOBooleanSupplier$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOBooleanSupplier;

    invoke-static {v0}, Lorg/apache/commons/io/function/IOBooleanSupplier;->lambda$asBooleanSupplier$0(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z

    move-result v0

    return v0
.end method
