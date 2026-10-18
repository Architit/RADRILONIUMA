.class public Lorg/apache/commons/compress/harmony/pack200/ClassBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "ClassBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;
    }
.end annotation


# static fields
.field private static final EMPTY_LONG_ARRAY:[J


# instance fields
.field private anySyntheticClasses:Z

.field private anySyntheticFields:Z

.field private anySyntheticMethods:Z

.field private final attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field private final classAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final classEnclosingMethodClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final classEnclosingMethodDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private classInnerClassesNameRUN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private classInnerClassesOuterRCN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final classReferencesInnerClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;>;"
        }
    .end annotation
.end field

.field private final classSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final classSourceFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private class_InnerClasses_F:[I

.field private class_InnerClasses_N:[I

.field private class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private class_attr_calls:[I

.field private final class_field_count:[I

.field private final class_flags:[J

.field private final class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_interface_count:[I

.field private final class_method_count:[I

.field private final class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final codeAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final codeFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final codeHandlerCatchPO:Ljava/util/List;

.field private final codeHandlerClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeHandlerEndPO:Ljava/util/List;

.field private final codeHandlerStartP:Ljava/util/List;

.field private codeHeaders:[I

.field private final codeLineNumberTableBciP:Ljava/util/List;

.field private final codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableBciP:Ljava/util/List;

.field private final codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableSpanO:Ljava/util/List;

.field private final codeLocalVariableTableTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTypeTableBciP:Ljava/util/List;

.field private final codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTypeTableNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTypeTableSpanO:Ljava/util/List;

.field private final codeLocalVariableTypeTableTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private code_attr_calls:[I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final fieldAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldConstantValueKQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final fieldSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private field_attr_calls:[I

.field private final field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field private final field_flags:[[J

.field private index:I

.field private final major_versions:[I

.field private final methodAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExceptionClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final methodSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private method_attr_calls:[I

.field private final method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field private final method_flags:[[J

.field private numMethodArgs:I

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field private final stripDebug:Z

.field private final tempFieldDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempFieldFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final tempMethodDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempMethodFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

.field private tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    new-array v0, v0, [J

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    .line 137
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 138
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    .line 152
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    .line 155
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 156
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 157
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    .line 164
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    .line 166
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 167
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    .line 172
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 173
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    .line 179
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    .line 223
    iput-boolean p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    .line 224
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 225
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 226
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getAttrBands()Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    .line 227
    new-array p1, p2, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 228
    new-array p1, p2, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 229
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    .line 230
    new-array p1, p2, [[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 231
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    .line 232
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    .line 233
    new-array p1, p2, [[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 234
    new-array p1, p2, [[J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    .line 235
    new-array p1, p2, [[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 236
    new-array p1, p2, [[J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 238
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    aput-object v0, p4, p1

    .line 239
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    aput-object v0, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    .line 243
    new-array p1, p2, [J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    .line 245
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVA"

    const/4 v2, 0x0

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 246
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIA"

    const/4 v7, 0x0

    move-object v5, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 247
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVA"

    const/4 v2, 0x1

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 248
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIA"

    const/4 v7, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 249
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVA"

    const/4 v2, 0x2

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 250
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIA"

    const/4 v7, 0x2

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 251
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVPA"

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 252
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIPA"

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 253
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "AD"

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 255
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->createNewAttributeBands()V

    return-void
.end method

.method protected static countArgs(Ljava/lang/String;)I
    .locals 9

    const/16 v0, 0x28

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x29

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    if-lt v1, v0, :cond_8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v0, v1, :cond_7

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v5, :cond_0

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_0

    move v5, v3

    move v6, v5

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_2

    :cond_1
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v6, v3

    goto :goto_2

    :cond_4
    const/16 v8, 0x44

    if-eq v7, v8, :cond_6

    const/16 v8, 0x4a

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v4

    .line 90
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNewAttributeBands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getClassAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 600
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getMethodAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 603
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getFieldAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 606
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 608
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getCodeAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 609
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-void
.end method

.method private getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I
    .locals 4

    .line 887
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 889
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 890
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result v3

    aput v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private isInnerClass(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x24

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z
    .locals 2

    .line 928
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClass(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 933
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic lambda$currentClassReferencesInnerClass$1(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Ljava/util/Set;
    .locals 0

    .line 617
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$finaliseBands$2(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)I
    .locals 0

    .line 845
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1148
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1149
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1152
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1153
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1154
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private renumberDoubleOffsetBci(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1163
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1164
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1165
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1168
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1169
    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1170
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1172
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1173
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1180
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1181
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1182
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1185
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1186
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1187
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1189
    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private sum([I)I
    .locals 4

    .line 1196
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private writeClassAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1203
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi()Z

    move-result v5

    const-string v1, "class_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1204
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from class_flags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1216
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "classSourceFile"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1220
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from classSourceFile["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_enclosing_method_RC"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1224
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_enclosing_method_RC["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_EnclosingMethod_RDN"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1228
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_EnclosingMethod_RDN["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_Signature_RS"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1232
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_Signature_RS["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1236
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1238
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1239
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_RC"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1243
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_RC["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_F"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1247
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_F["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_outer_RCN"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1251
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_outer_RCN["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_name_RUN"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1255
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_name_RUN["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "classFileVersionMinor"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1259
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from classFileVersionMinor["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "classFileVersionMajor"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1263
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from classFileVersionMajor["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1267
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeCodeAttributeBands(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->longListToArray(Ljava/util/List;)[J

    move-result-object v3

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi()Z

    move-result v6

    const-string v2, "codeFlags"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1273
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from codeFlags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1279
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LineNumberTable_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1283
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LineNumberTable_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LineNumberTable_bci_P"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1287
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LineNumberTable_bci_P["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LineNumberTable_line"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1291
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LineNumberTable_line["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1295
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_bci_P"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_bci_P["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_span_O"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1303
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_span_O["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_name_RU"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1307
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_name_RU["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_type_RS"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1311
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_type_RS["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_slot"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1315
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_slot["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1319
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_bci_P"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1323
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_bci_P["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_span_O"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1327
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_span_O["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_name_RU"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1331
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_name_RU["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_type_RS"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1335
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_type_RS["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_slot"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1339
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from code_LocalVariableTypeTable_slot["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1343
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeCodeBands(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "codeHeaders"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1349
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from codeHeaders["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeMaxStack"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1353
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeMaxStack["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeMaxLocals"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1357
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeMaxLocals["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerCount"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1361
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerCount["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerStartP"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1365
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerStartP["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerEndPO"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1369
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerEndPO["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerCatchPO"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1373
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerCatchPO["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerClass"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1377
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from codeHandlerClass["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeCodeAttributeBands(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeFieldAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1384
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi()Z

    move-result v5

    const-string v1, "field_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1385
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from field_flags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "field_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1391
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from field_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "fieldConstantValueKQ"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1395
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from fieldConstantValueKQ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "fieldSignature"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1399
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from fieldSignature["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1403
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1404
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1405
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeMethodAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1410
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi()Z

    move-result v5

    const-string v1, "method_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1411
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from method_flags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "method_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1417
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from method_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "methodExceptionNumber"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1421
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from methodExceptionNumber["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "methodExceptionClasses"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1425
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from methodExceptionClasses["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "methodSignature"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1429
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from methodSignature["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1433
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1434
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1435
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1436
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1437
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1438
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_8

    const/high16 v2, 0x200000

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_2

    .line 304
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v6 .. v14}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 305
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 307
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 311
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 313
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 314
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 315
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_1

    .line 318
    :cond_3
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 320
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v3

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_4
    if-eqz p3, :cond_6

    .line 283
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 284
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 286
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_2

    .line 288
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 290
    :goto_2
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 292
    :cond_6
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 293
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 295
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_3

    .line 297
    :cond_7
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 299
    :goto_3
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v3

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    const-wide/16 v1, 0x0

    if-eqz p3, :cond_a

    .line 264
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 265
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    const-wide/32 v6, 0x200000

    and-long v3, v4, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 266
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_4

    .line 268
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 269
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v3, v1, v2

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    goto :goto_4

    .line 272
    :cond_a
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 273
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    const-wide/32 v6, 0x400000

    and-long v3, v4, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_b

    .line 274
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_4

    .line 276
    :cond_b
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 277
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v3, v1, v2

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    :goto_4
    return-void
.end method

.method public addAnnotationDefault(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 328
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 329
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 330
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x2000000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClass(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p3

    aput-object p3, v0, v1

    .line 335
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p5

    aput-object p5, p3, v0

    .line 336
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    iget p5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    array-length v0, p6

    aput v0, p3, p5

    .line 337
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v0, p6

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v0, p3, p5

    .line 338
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/pack200/ClassBands;[Ljava/lang/String;)V

    invoke-static {v0, p3}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 339
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    iget p5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput p1, p3, p5

    .line 340
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    int-to-long v0, p2

    aput-wide v0, p1, p5

    .line 341
    iget-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    if-nez p1, :cond_0

    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string p2, "Synthetic"

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 343
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    :cond_0
    if-eqz p4, :cond_1

    .line 350
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide p5, p1, p2

    const-wide/32 v0, 0x80000

    or-long/2addr p5, v0

    aput-wide p5, p1, p2

    .line 351
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addClassAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 6

    .line 362
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 364
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 366
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 367
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v0, v1

    const/4 v4, 0x1

    shl-int p1, v4, p1

    int-to-long v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void

    .line 371
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCode()V
    .locals 4

    .line 375
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 376
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_0
    return-void
.end method

.method public addCodeAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 7

    .line 388
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 390
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 392
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 393
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 394
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-int p1, v2, p1

    int-to-long v5, p1

    or-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 398
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEnclosingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 409
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 410
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 416
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 418
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x80000

    or-int/2addr p1, p2

    :cond_0
    if-eqz p5, :cond_1

    .line 426
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x20000

    or-int/2addr p1, p2

    .line 429
    :cond_1
    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    if-nez p2, :cond_2

    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 430
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string p3, "Synthetic"

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 431
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    .line 433
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    int-to-long p3, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFieldAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 7

    .line 442
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 444
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 446
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 447
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 448
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-int p1, v2, p1

    int-to-long v5, p1

    or-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 452
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHandler(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    .line 457
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 458
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 5

    .line 465
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 473
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 474
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 479
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 481
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 482
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 487
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p3, p6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 494
    :cond_1
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 495
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p4, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public addMaxStack(II)V
    .locals 4

    .line 503
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 504
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 507
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 510
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    sub-int/2addr p2, p1

    .line 511
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public addMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 515
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    .line 516
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 518
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x80000

    or-int/2addr p1, p2

    :cond_0
    if-eqz p5, :cond_2

    .line 522
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    array-length p4, p5

    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 523
    array-length p2, p5

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    aget-object v0, p5, p4

    .line 524
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    or-int/2addr p1, p2

    :cond_2
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-eqz p2, :cond_3

    const p2, -0x20001

    and-int/2addr p1, p2

    const/high16 p2, 0x100000

    or-int/2addr p1, p2

    .line 532
    :cond_3
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    int-to-long p4, p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->countArgs(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    .line 534
    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    if-nez p2, :cond_4

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 535
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string p2, "Synthetic"

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 536
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    :cond_4
    return-void
.end method

.method public addMethodAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 7

    .line 546
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 547
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 548
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 550
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 551
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 552
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-int p1, v2, p1

    int-to-long v5, p1

    or-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 556
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameterAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p3, :cond_1

    .line 563
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-nez v1, :cond_0

    .line 564
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 565
    invoke-virtual/range {v2 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->addParameterAnnotation(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 567
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 568
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x800000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-nez v1, :cond_2

    .line 571
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 572
    invoke-virtual/range {v2 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->addParameterAnnotation(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 574
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 575
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addSourceFile(Ljava/lang/String;)V
    .locals 5

    .line 585
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v1, p1, v0

    const-wide/32 v3, 0x20000

    or-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method public currentClassReferencesInnerClass(Lorg/apache/commons/compress/harmony/pack200/CPClass;)V
    .locals 3

    .line 614
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 615
    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public doBciRenumbering(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 624
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 625
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 626
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 627
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 628
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 629
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 630
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberDoubleOffsetBci(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 632
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 633
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 636
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_1

    .line 638
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 639
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_2

    .line 641
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 642
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public endOfClass()V
    .locals 6

    .line 652
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 653
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v0, v1, v2

    .line 654
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    new-array v3, v0, [Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v3, v1, v2

    .line 655
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    new-array v3, v0, [J

    aput-object v3, v1, v2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 657
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v4, v3, v2

    .line 658
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 661
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v0, v2, v3

    .line 662
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    new-array v4, v0, [Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v4, v2, v3

    .line 663
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    new-array v4, v0, [J

    aput-object v4, v2, v3

    :goto_1
    if-ge v1, v0, :cond_1

    .line 665
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v3, v2, v1

    .line 666
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 668
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 669
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 670
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 671
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 672
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    return-void
.end method

.method public endOfMethod()V
    .locals 14

    .line 681
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 682
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->numParams:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->annoN:[I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->pairN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->typeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->tags:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->values:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->caseArrayN:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestTypeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestNameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v2 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 685
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 687
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-eqz v0, :cond_1

    .line 688
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->numParams:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->annoN:[I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->pairN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->typeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->tags:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->values:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->caseArrayN:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestTypeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestNameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v2 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 691
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 693
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 694
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 695
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    const-wide/16 v3, 0x4

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 697
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 698
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public finaliseBands()V
    .locals 10

    .line 709
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->getDefaultMajorVersion()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 710
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 711
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    aget v4, v4, v2

    if-eq v4, v0, :cond_0

    .line 713
    aget-wide v5, v3, v2

    const-wide/32 v7, 0x1000000

    or-long/2addr v5, v7

    aput-wide v5, v3, v2

    .line 714
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 715
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    move v0, v1

    move v2, v0

    .line 721
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 722
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    .line 723
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v5

    .line 724
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v6

    const/16 v7, 0x91

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    const/16 v9, 0xd1

    if-eq v3, v8, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v3, 0x100

    if-ge v5, v3, :cond_5

    const/4 v3, 0x7

    if-ge v6, v3, :cond_5

    .line 743
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v5, v3, v0

    goto :goto_2

    :cond_3
    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    if-ge v5, v9, :cond_5

    const/16 v3, 0x8

    if-ge v6, v3, :cond_5

    .line 736
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v5, v3, v0

    goto :goto_2

    :cond_4
    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    if-ge v5, v7, :cond_5

    const/16 v3, 0xc

    if-ge v6, v3, :cond_5

    .line 729
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v5, v3, v0

    .line 750
    :cond_5
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aget v3, v3, v0

    if-eqz v3, :cond_6

    .line 753
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 754
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 755
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 757
    :cond_6
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags()Z

    move-result v3

    if-nez v3, :cond_7

    .line 758
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 763
    :cond_8
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 765
    :goto_4
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v5, v4

    if-ge v3, v5, :cond_d

    .line 766
    aget-object v4, v4, v3

    .line 767
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_c

    .line 770
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->getInnerClassesForOuter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 772
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 773
    iget-object v6, v6, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 776
    :cond_9
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 777
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->getIcTuple(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 778
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_a

    .line 780
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    .line 785
    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 786
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    aget-wide v5, v4, v3

    const-wide/32 v7, 0x800000

    or-long/2addr v5, v7

    aput-wide v5, v4, v3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 790
    :cond_d
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    .line 791
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 792
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    move v0, v1

    .line 795
    :goto_7
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 796
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 797
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v5, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v5, v4, v0

    .line 798
    iget-object v4, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-nez v4, :cond_e

    iget-object v4, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    if-nez v4, :cond_e

    .line 799
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    aput v1, v3, v0

    goto :goto_9

    .line 801
    :cond_e
    iget v4, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    if-nez v4, :cond_f

    .line 802
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    const/high16 v5, 0x10000

    aput v5, v4, v0

    goto :goto_8

    .line 804
    :cond_f
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    iget v5, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    aput v5, v4, v0

    .line 806
    :goto_8
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    iget-object v5, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 811
    :cond_10
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 812
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 813
    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 814
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 816
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 817
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 819
    :cond_11
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 820
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 822
    :cond_12
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 823
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 825
    :cond_13
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 826
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 828
    :cond_14
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 829
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 831
    :cond_15
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 832
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 834
    :cond_16
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 835
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 837
    :cond_17
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 838
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 840
    :cond_18
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 841
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 845
    :cond_19
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda2;-><init>()V

    .line 846
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 847
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 848
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 849
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 851
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 852
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 853
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_a
    if-ge v8, v7, :cond_1a

    aget v9, v6, v8

    .line 854
    invoke-virtual {v0, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 858
    :cond_1b
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 859
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 860
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_b
    if-ge v8, v7, :cond_1c

    aget v9, v6, v8

    .line 861
    invoke-virtual {v3, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 865
    :cond_1d
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 866
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 867
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_c
    if-ge v8, v7, :cond_1e

    aget v9, v6, v8

    .line 868
    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 872
    :cond_1f
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 873
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 874
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_d
    if-ge v8, v7, :cond_20

    aget v9, v6, v8

    .line 875
    invoke-virtual {v4, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 880
    :cond_21
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    .line 881
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    .line 882
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    .line 883
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    return-void
.end method

.method public isAnySyntheticClasses()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    return v0
.end method

.method public isAnySyntheticFields()Z
    .locals 1

    .line 911
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    return v0
.end method

.method public isAnySyntheticMethods()Z
    .locals 1

    .line 920
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    return v0
.end method

.method synthetic lambda$addClass$0$org-apache-commons-compress-harmony-pack200-ClassBands([Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    return-object p1
.end method

.method public numClassesProcessed()I
    .locals 1

    .line 944
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 949
    const-string v0, "Writing class bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "class_this"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 952
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from class_this["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_super"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 956
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_super["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_interface_count"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 960
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_interface_count["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v0

    .line 964
    new-array v3, v0, [I

    .line 966
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v9, v4, v7

    if-eqz v9, :cond_0

    .line 968
    array-length v10, v9

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 969
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result v12

    aput v12, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 975
    :cond_1
    const-string v4, "class_interface"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 976
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from class_interface["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_field_count"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 980
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_field_count["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_method_count"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 984
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_method_count["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v0

    .line 988
    new-array v3, v0, [I

    move v4, v6

    move v5, v4

    .line 990
    :goto_2
    iget v7, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-ge v4, v7, :cond_3

    move v7, v6

    .line 991
    :goto_3
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v8, v8, v4

    array-length v9, v8

    if-ge v7, v9, :cond_2

    .line 992
    aget-object v8, v8, v7

    .line 993
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getIndex()I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 998
    :cond_3
    const-string v4, "field_descr"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 999
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from field_descr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1002
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeFieldAttributeBands(Ljava/io/OutputStream;)V

    .line 1004
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v0

    .line 1005
    new-array v3, v0, [I

    move v4, v6

    move v5, v4

    .line 1007
    :goto_4
    iget v7, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-ge v4, v7, :cond_5

    move v7, v6

    .line 1008
    :goto_5
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v8, v8, v4

    array-length v9, v8

    if-ge v7, v9, :cond_4

    .line 1009
    aget-object v8, v8, v7

    .line 1010
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getIndex()I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1015
    :cond_5
    const-string v4, "method_descr"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 1016
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from method_descr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeMethodAttributeBands(Ljava/io/OutputStream;)V

    .line 1020
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeClassAttributeBands(Ljava/io/OutputStream;)V

    .line 1021
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeCodeBands(Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeCurrentClass()V
    .locals 20

    move-object/from16 v0, p0

    .line 1030
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v4, 0x20000

    and-long v1, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1033
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v8, 0x40000

    and-long v1, v2, v8

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 1034
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1035
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1037
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v10, 0x80000

    and-long v1, v2, v10

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 1038
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1040
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v12, 0x200000

    and-long v1, v2, v12

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 1041
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1043
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v14, 0x400000

    and-long v1, v2, v14

    cmp-long v1, v1, v6

    if-eqz v1, :cond_4

    .line 1044
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1046
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1047
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long v16, v2, v10

    cmp-long v16, v16, v6

    if-eqz v16, :cond_5

    .line 1049
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    and-long v8, v2, v4

    cmp-long v8, v8, v6

    if-eqz v8, :cond_6

    .line 1052
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    and-long v8, v2, v12

    cmp-long v8, v8, v6

    if-eqz v8, :cond_7

    .line 1055
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_7
    and-long/2addr v2, v14

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 1058
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_8
    const-wide/32 v8, 0x40000

    goto :goto_0

    .line 1061
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1062
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long v18, v8, v10

    cmp-long v2, v18, v6

    if-eqz v2, :cond_a

    .line 1064
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    const-wide/32 v10, 0x40000

    and-long v16, v8, v10

    cmp-long v2, v16, v6

    if-eqz v2, :cond_b

    .line 1067
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v16

    add-int/lit8 v10, v16, -0x1

    invoke-virtual {v2, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_b

    .line 1069
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v3, v16, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    and-long v2, v8, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 1073
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1074
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1075
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_c

    .line 1077
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1078
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1079
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1080
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1081
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1083
    :cond_c
    iget-boolean v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    if-nez v2, :cond_f

    .line 1084
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1085
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_d

    .line 1087
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1088
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1089
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1090
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1091
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1092
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v11, v11, 0x1

    const-wide/32 v4, 0x20000

    goto :goto_4

    :cond_d
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    .line 1095
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_e

    .line 1097
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1098
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1099
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1100
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1101
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1102
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v11, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 1106
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_f

    .line 1108
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1109
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1110
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    and-long v2, v8, v12

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    .line 1116
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_10
    and-long v2, v8, v14

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    .line 1119
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_11
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_12

    .line 1122
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_12
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_13

    .line 1125
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_13
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_14

    .line 1128
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_14
    const-wide/32 v4, 0x20000

    const-wide/32 v10, 0x80000

    goto/16 :goto_1

    .line 1131
    :cond_15
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1132
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v3, v1, v2

    .line 1133
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 1134
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v3, v1, v2

    .line 1135
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    aput v4, v1, v2

    .line 1136
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    aput-wide v6, v1, v2

    .line 1137
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1138
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1139
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1140
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1141
    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-lez v1, :cond_16

    add-int/lit8 v1, v1, -0x1

    .line 1142
    iput v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    :cond_16
    return-void
.end method
