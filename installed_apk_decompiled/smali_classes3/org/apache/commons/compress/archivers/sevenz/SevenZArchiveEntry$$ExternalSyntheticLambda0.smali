.class public final synthetic Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry$$ExternalSyntheticLambda0;->f$0:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry$$ExternalSyntheticLambda0;->f$0:Ljava/util/LinkedList;

    check-cast p1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->$r8$lambda$8IPxU7dsJw6N4YzMNXp1SEHo4BQ(Ljava/util/LinkedList;Ljava/lang/Object;)V

    return-void
.end method
