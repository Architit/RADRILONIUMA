.class public Lorg/json/JSONMLParserConfiguration;
.super Lorg/json/ParserConfiguration;
.source "JSONMLParserConfiguration.java"


# static fields
.field public static final DEFAULT_MAXIMUM_NESTING_DEPTH:I = 0x200

.field public static final KEEP_STRINGS:Lorg/json/JSONMLParserConfiguration;

.field public static final ORIGINAL:Lorg/json/JSONMLParserConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lorg/json/JSONMLParserConfiguration;

    invoke-direct {v0}, Lorg/json/JSONMLParserConfiguration;-><init>()V

    sput-object v0, Lorg/json/JSONMLParserConfiguration;->ORIGINAL:Lorg/json/JSONMLParserConfiguration;

    .line 21
    new-instance v0, Lorg/json/JSONMLParserConfiguration;

    invoke-direct {v0}, Lorg/json/JSONMLParserConfiguration;-><init>()V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONMLParserConfiguration;->withKeepStrings(Z)Lorg/json/JSONMLParserConfiguration;

    move-result-object v0

    sput-object v0, Lorg/json/JSONMLParserConfiguration;->KEEP_STRINGS:Lorg/json/JSONMLParserConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/json/ParserConfiguration;-><init>()V

    const/16 v0, 0x200

    .line 29
    iput v0, p0, Lorg/json/JSONMLParserConfiguration;->maxNestingDepth:I

    return-void
.end method

.method protected constructor <init>(ZI)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/json/ParserConfiguration;-><init>(ZI)V

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

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONMLParserConfiguration;->clone()Lorg/json/JSONMLParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/json/JSONMLParserConfiguration;
    .locals 3

    .line 52
    new-instance v0, Lorg/json/JSONMLParserConfiguration;

    iget-boolean v1, p0, Lorg/json/JSONMLParserConfiguration;->keepStrings:Z

    iget v2, p0, Lorg/json/JSONMLParserConfiguration;->maxNestingDepth:I

    invoke-direct {v0, v1, v2}, Lorg/json/JSONMLParserConfiguration;-><init>(ZI)V

    return-object v0
.end method

.method protected bridge synthetic clone()Lorg/json/ParserConfiguration;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONMLParserConfiguration;->clone()Lorg/json/JSONMLParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public withKeepStrings(Z)Lorg/json/JSONMLParserConfiguration;
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lorg/json/ParserConfiguration;->withKeepStrings(Z)Lorg/json/ParserConfiguration;

    move-result-object p1

    check-cast p1, Lorg/json/JSONMLParserConfiguration;

    return-object p1
.end method

.method public bridge synthetic withKeepStrings(Z)Lorg/json/ParserConfiguration;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/json/JSONMLParserConfiguration;->withKeepStrings(Z)Lorg/json/JSONMLParserConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public withMaxNestingDepth(I)Lorg/json/JSONMLParserConfiguration;
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lorg/json/ParserConfiguration;->withMaxNestingDepth(I)Lorg/json/ParserConfiguration;

    move-result-object p1

    check-cast p1, Lorg/json/JSONMLParserConfiguration;

    return-object p1
.end method

.method public bridge synthetic withMaxNestingDepth(I)Lorg/json/ParserConfiguration;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/json/JSONMLParserConfiguration;->withMaxNestingDepth(I)Lorg/json/JSONMLParserConfiguration;

    move-result-object p1

    return-object p1
.end method
