.class public Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
.super Ljava/lang/Object;
.source "PackingOptions.java"


# static fields
.field private static final EMPTY_ATTRIBUTE_ARRAY:[Lorg/objectweb/asm/Attribute;

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final KEEP:Ljava/lang/String; = "keep"

.field public static final PASS:Ljava/lang/String; = "pass"

.field public static final SEGMENT_LIMIT:J = 0xf4240L

.field public static final STRIP:Ljava/lang/String; = "strip"


# instance fields
.field private final classAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final codeAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deflateHint:Ljava/lang/String;

.field private effort:I

.field private final fieldAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gzip:Z

.field private keepFileOrder:Z

.field private logFile:Ljava/lang/String;

.field private final methodAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modificationTime:Ljava/lang/String;

.field private final passFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private segmentLimit:J

.field private stripDebug:Z

.field private unknownAttributeAction:Ljava/lang/String;

.field private unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Lorg/objectweb/asm/Attribute;

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->EMPTY_ATTRIBUTE_ARRAY:[Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->gzip:Z

    .line 45
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->keepFileOrder:Z

    const-wide/32 v0, 0xf4240

    .line 46
    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->segmentLimit:J

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->effort:I

    .line 48
    const-string v0, "keep"

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->modificationTime:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    .line 51
    const-string v0, "pass"

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    return-void
.end method

.method private addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Attribute;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 78
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 85
    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 86
    iget-object v4, v3, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v3, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->addContext(I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "strip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "pass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 106
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    invoke-direct {v2, v1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 100
    :pswitch_0
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 97
    :pswitch_1
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 103
    :pswitch_2
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;-><init>(Ljava/lang/String;I)V

    .line 109
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x346411 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x68b0318 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    :goto_0
    return-object p3
.end method


# virtual methods
.method public addClassAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCodeAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFieldAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMethodAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPassFile(Ljava/lang/String;)V
    .locals 3

    .line 121
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    const-string v2, "/"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDeflateHint()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    return-object v0
.end method

.method public getEffort()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->effort:I

    return v0
.end method

.method public getLogFile()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->logFile:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationTime()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->modificationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentLimit()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->segmentLimit:J

    return-wide v0
.end method

.method public getUnknownAttributeAction()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownAttributePrototypes()[Lorg/objectweb/asm/Attribute;
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 161
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 162
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 163
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 164
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->EMPTY_ATTRIBUTE_ARRAY:[Lorg/objectweb/asm/Attribute;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/objectweb/asm/Attribute;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

    return-object v0
.end method

.method public getUnknownClassAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnknownCodeAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnknownFieldAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnknownMethodAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isGzip()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->gzip:Z

    return v0
.end method

.method public isKeepDeflateHint()Z
    .locals 2

    .line 190
    const-string v0, "keep"

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKeepFileOrder()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->keepFileOrder:Z

    return v0
.end method

.method public isPassFile(Ljava/lang/String;)Z
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 202
    :cond_1
    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isStripDebug()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->stripDebug:Z

    return v0
.end method

.method public isVerbose()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->verbose:Z

    return v0
.end method

.method public removePassFile(Ljava/lang/String;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeflateHint(Ljava/lang/String;)V
    .locals 3

    .line 229
    const-string v0, "keep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad argument: -H "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ? deflate hint should be either true, false or keep (default)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    return-void
.end method

.method public setEffort(I)V
    .locals 0

    .line 241
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->effort:I

    return-void
.end method

.method public setGzip(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->gzip:Z

    return-void
.end method

.method public setKeepFileOrder(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->keepFileOrder:Z

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->logFile:Ljava/lang/String;

    return-void
.end method

.method public setModificationTime(Ljava/lang/String;)V
    .locals 3

    .line 257
    const-string v0, "keep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad argument: -m "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ? transmit modtimes should be either latest or keep (default)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->modificationTime:Ljava/lang/String;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 264
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->verbose:Z

    return-void
.end method

.method public setSegmentLimit(J)V
    .locals 0

    .line 273
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->segmentLimit:J

    return-void
.end method

.method public setStripDebug(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->stripDebug:Z

    return-void
.end method

.method public setUnknownAttributeAction(Ljava/lang/String;)V
    .locals 3

    .line 292
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    .line 293
    const-string v0, "pass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "strip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect option for -U, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->verbose:Z

    return-void
.end method
