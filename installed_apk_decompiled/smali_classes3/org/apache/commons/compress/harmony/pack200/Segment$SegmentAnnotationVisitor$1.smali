.class Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;
.super Lorg/objectweb/asm/AnnotationVisitor;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;ILorg/objectweb/asm/AnnotationVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(ILorg/objectweb/asm/AnnotationVisitor;)V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 191
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$200(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$300(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$400(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->access$000(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 0

    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 204
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$300(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$200(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$400(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;->this$1:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->access$400(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
