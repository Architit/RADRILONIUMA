.class public Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;
.super Lorg/objectweb/asm/AnnotationVisitor;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayVisitor"
.end annotation


# instance fields
.field private final caseArrayN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final indexInCaseArrayN:I

.field private final nameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 71
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    .line 73
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    .line 74
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->tags:Ljava/util/List;

    .line 75
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->nameRU:Ljava/util/List;

    .line 76
    iput-object p5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->values:Ljava/util/List;

    .line 77
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->indexInCaseArrayN:I

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->indexInCaseArrayN:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 83
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->indexInCaseArrayN:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->tags:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->values:Ljava/util/List;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->access$000(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 7

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->tags:Ljava/util/List;

    const-string v1, "["

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 99
    const-string p1, ""

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->nameRU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->tags:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->nameRU:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->values:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 114
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->caseArrayN:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->tags:Ljava/util/List;

    const-string v0, "e"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->values:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;->values:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
