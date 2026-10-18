.class public final synthetic Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/monitor/FileAlterationObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda6;->f$0:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda6;->f$0:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->lambda$checkAndNotify$0$org-apache-commons-io-monitor-FileAlterationObserver(Lorg/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method
