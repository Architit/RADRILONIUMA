.class public Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;
.super Lorg/objectweb/asm/AnnotationVisitor;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentAnnotationVisitor"
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

.field private context:I

.field private desc:Ljava/lang/String;

.field private final nameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nestNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nestPairN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nestTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parameter:I

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

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 150
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    .line 137
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->parameter:I

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    .line 151
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IILjava/lang/String;Z)V
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

    .line 154
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 155
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    .line 137
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->parameter:I

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    .line 156
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    .line 157
    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->parameter:I

    .line 158
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->desc:Ljava/lang/String;

    .line 159
    iput-boolean p5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->visible:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 163
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    .line 137
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->parameter:I

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    .line 164
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    .line 165
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->desc:Ljava/lang/String;

    .line 166
    iput-boolean p4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->visible:Z

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 172
    const-string p1, ""

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->access$000(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    const-string v1, "@"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 182
    const-string p1, ""

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;

    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$1;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;ILorg/objectweb/asm/AnnotationVisitor;)V

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 7

    .line 226
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    const-string v1, "["

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 228
    const-string p1, ""

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public visitEnd()V
    .locals 12

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->desc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->access$500(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v1 .. v8}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addAnnotationDefault(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 239
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->parameter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->access$500(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->parameter:I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->desc:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->visible:Z

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    iget-object v10, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    iget-object v11, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v1 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addParameterAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->this$0:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->access$500(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->context:I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->desc:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->visible:Z

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->caseArrayN:Ljava/util/List;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestTypeRS:Ljava/util/List;

    iget-object v10, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestNameRU:Ljava/util/List;

    iget-object v11, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v1 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->tags:Ljava/util/List;

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 250
    const-string p1, ""

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->nameRU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->values:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
