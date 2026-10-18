.class public final synthetic Lorg/apache/commons/io/function/IOIntSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOIntSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOIntSupplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOIntSupplier$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOIntSupplier;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOIntSupplier$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOIntSupplier;

    invoke-static {v0}, Lorg/apache/commons/io/function/IOIntSupplier;->lambda$asIntSupplier$0(Lorg/apache/commons/io/function/IOIntSupplier;)I

    move-result v0

    return v0
.end method
