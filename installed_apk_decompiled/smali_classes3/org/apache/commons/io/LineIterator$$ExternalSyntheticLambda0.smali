.class public final synthetic Lorg/apache/commons/io/LineIterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/LineIterator$$ExternalSyntheticLambda0;->f$0:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator$$ExternalSyntheticLambda0;->f$0:Ljava/io/IOException;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p1}, Lorg/apache/commons/io/LineIterator;->$r8$lambda$cNOlB3PKiEwW5EeiRsYh3aij9gY(Ljava/io/IOException;Ljava/lang/Throwable;)V

    return-void
.end method
