.class public final synthetic Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda4;->f$0:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda4;->f$0:Ljava/io/IOException;

    check-cast p1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-static {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream;->lambda$noteError$2(Ljava/io/IOException;Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    return-void
.end method
