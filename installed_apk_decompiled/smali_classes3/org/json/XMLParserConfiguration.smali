.class public Lorg/json/XMLParserConfiguration;
.super Lorg/json/ParserConfiguration;
.source "XMLParserConfiguration.java"


# static fields
.field public static final KEEP_STRINGS:Lorg/json/XMLParserConfiguration;

.field public static final ORIGINAL:Lorg/json/XMLParserConfiguration;


# instance fields
.field private cDataTagName:Ljava/lang/String;

.field private convertNilAttributeToNull:Z

.field private forceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xsiTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/XMLXsiTypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/json/XMLParserConfiguration;

    invoke-direct {v0}, Lorg/json/XMLParserConfiguration;-><init>()V

    sput-object v0, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    .line 29
    new-instance v0, Lorg/json/XMLParserConfiguration;

    invoke-direct {v0}, Lorg/json/XMLParserConfiguration;-><init>()V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/XMLParserConfiguration;->withKeepStrings(Z)Lorg/json/XMLParserConfiguration;

    move-result-object v0

    sput-object v0, Lorg/json/XMLParserConfiguration;->KEEP_STRINGS:Lorg/json/XMLParserConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/json/ParserConfiguration;-><init>()V

    .line 63
    const-string v0, "content"

    iput-object v0, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/json/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/json/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0, p1, v0}, Lorg/json/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    const-string v0, "content"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/json/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x200

    .line 109
    invoke-direct {p0, p1, v0}, Lorg/json/ParserConfiguration;-><init>(ZI)V

    .line 110
    iput-object p2, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x200

    .line 128
    invoke-direct {p0, p1, v0}, Lorg/json/ParserConfiguration;-><init>(ZI)V

    .line 129
    iput-object p2, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 130
    iput-boolean p3, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Set;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/XMLXsiTypeConverter<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p6}, Lorg/json/ParserConfiguration;-><init>(ZI)V

    .line 150
    iput-object p2, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 151
    iput-boolean p3, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    .line 152
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/json/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    .line 153
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/json/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lorg/json/XMLParserConfiguration;->clone()Lorg/json/XMLParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone()Lorg/json/ParserConfiguration;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/json/XMLParserConfiguration;->clone()Lorg/json/XMLParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/json/XMLParserConfiguration;
    .locals 8

    .line 166
    new-instance v7, Lorg/json/XMLParserConfiguration;

    iget-boolean v1, p0, Lorg/json/XMLParserConfiguration;->keepStrings:Z

    iget-object v2, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    iget-object v4, p0, Lorg/json/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    iget-object v5, p0, Lorg/json/XMLParserConfiguration;->forceList:Ljava/util/Set;

    iget v6, p0, Lorg/json/XMLParserConfiguration;->maxNestingDepth:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/json/XMLParserConfiguration;-><init>(ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Set;I)V

    return-object v7
.end method

.method public getForceList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/json/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-object v0
.end method

.method public getXsiTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/XMLXsiTypeConverter<",
            "*>;>;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/json/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getcDataTagName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    return-object v0
.end method

.method public isConvertNilAttributeToNull()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return v0
.end method

.method public withConvertNilAttributeToNull(Z)Lorg/json/XMLParserConfiguration;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lorg/json/XMLParserConfiguration;->clone()Lorg/json/XMLParserConfiguration;

    move-result-object v0

    .line 240
    iput-boolean p1, v0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-object v0
.end method

.method public withForceList(Ljava/util/Set;)Lorg/json/XMLParserConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/XMLParserConfiguration;"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lorg/json/XMLParserConfiguration;->clone()Lorg/json/XMLParserConfiguration;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, v0, Lorg/json/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic withKeepStrings(Z)Lorg/json/ParserConfiguration;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/json/XMLParserConfiguration;->withKeepStrings(Z)Lorg/json/XMLParserConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public withKeepStrings(Z)Lorg/json/XMLParserConfiguration;
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lorg/json/ParserConfiguration;->withKeepStrings(Z)Lorg/json/ParserConfiguration;

    move-result-object p1

    check-cast p1, Lorg/json/XMLParserConfiguration;

    return-object p1
.end method

.method public bridge synthetic withMaxNestingDepth(I)Lorg/json/ParserConfiguration;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/json/XMLParserConfiguration;->withMaxNestingDepth(I)Lorg/json/XMLParserConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public withMaxNestingDepth(I)Lorg/json/XMLParserConfiguration;
    .locals 0

    .line 304
    invoke-super {p0, p1}, Lorg/json/ParserConfiguration;->withMaxNestingDepth(I)Lorg/json/ParserConfiguration;

    move-result-object p1

    check-cast p1, Lorg/json/XMLParserConfiguration;

    return-object p1
.end method

.method public withXsiTypeMap(Ljava/util/Map;)Lorg/json/XMLParserConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/XMLXsiTypeConverter<",
            "*>;>;)",
            "Lorg/json/XMLParserConfiguration;"
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lorg/json/XMLParserConfiguration;->clone()Lorg/json/XMLParserConfiguration;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 267
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lorg/json/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public withcDataTagName(Ljava/lang/String;)Lorg/json/XMLParserConfiguration;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/json/XMLParserConfiguration;->clone()Lorg/json/XMLParserConfiguration;

    move-result-object v0

    .line 213
    iput-object p1, v0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    return-object v0
.end method
