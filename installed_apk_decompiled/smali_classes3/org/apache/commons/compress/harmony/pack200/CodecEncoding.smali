.class public Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;
.super Ljava/lang/Object;
.source "CodecEncoding.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field private static canonicalCodecsToSpecifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 120

    const/4 v0, 0x0

    .line 33
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    .line 39
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v3, v1

    const/4 v2, 0x1

    const/16 v15, 0x100

    invoke-direct {v1, v2, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v4, v1

    invoke-direct {v1, v2, v15, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v5, v1

    invoke-direct {v1, v2, v15, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v6, v1

    invoke-direct {v1, v2, v15, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v7, v1

    const/4 v14, 0x2

    invoke-direct {v1, v14, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v8, v1

    invoke-direct {v1, v14, v15, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v9, v1

    invoke-direct {v1, v14, v15, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v10, v1

    invoke-direct {v1, v14, v15, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v11, v1

    const/4 v13, 0x3

    invoke-direct {v1, v13, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v12, v1

    invoke-direct {v1, v13, v15, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v118, v3

    move v3, v13

    move-object v13, v1

    invoke-direct {v1, v3, v15, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object v14, v1

    invoke-direct {v1, v3, v15, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move v3, v15

    move-object v15, v1

    const/4 v0, 0x4

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v16, v1

    invoke-direct {v1, v0, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v17, v1

    move-object/from16 v119, v4

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v18, v1

    invoke-direct {v1, v0, v3, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v19, v1

    const/4 v3, 0x5

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v20, v1

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v21, v1

    const/4 v4, 0x2

    invoke-direct {v1, v3, v0, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v22, v1

    const/16 v0, 0x10

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v23, v1

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v24, v1

    invoke-direct {v1, v3, v0, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v25, v1

    const/16 v0, 0x20

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v26, v1

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v27, v1

    invoke-direct {v1, v3, v0, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v28, v1

    const/16 v0, 0x40

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v29, v1

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v30, v1

    invoke-direct {v1, v3, v0, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v31, v1

    const/16 v0, 0x80

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v32, v1

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v33, v1

    invoke-direct {v1, v3, v0, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v34, v1

    const/4 v0, 0x0

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v35, v1

    invoke-direct {v1, v3, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v36, v1

    const/4 v0, 0x2

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v37, v1

    const/16 v0, 0x10

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v38, v1

    invoke-direct {v1, v3, v0, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v39, v1

    const/4 v4, 0x2

    invoke-direct {v1, v3, v0, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v40, v0

    const/4 v1, 0x0

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v41, v0

    invoke-direct {v0, v3, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v42, v0

    const/4 v1, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v43, v0

    const/16 v1, 0x40

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v44, v0

    invoke-direct {v0, v3, v1, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v45, v0

    const/4 v4, 0x2

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v46, v0

    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v47, v0

    invoke-direct {v0, v3, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v48, v0

    const/4 v1, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v49, v0

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v50, v0

    const/16 v4, 0xe0

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v51, v0

    const/16 v4, 0xf0

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v52, v0

    const/16 v4, 0xf8

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v53, v0

    const/16 v4, 0xfc

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v54, v0

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v55, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v56, v0

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v57, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v58, v0

    const/16 v4, 0x20

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v59, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v60, v0

    const/16 v4, 0x40

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v61, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v62, v0

    const/16 v4, 0x80

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v63, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v64, v0

    const/16 v4, 0xc0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v65, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v66, v0

    const/16 v4, 0xe0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v67, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v68, v0

    const/16 v4, 0xf0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v69, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v70, v0

    const/16 v4, 0xf8

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v71, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v72, v0

    const/4 v1, 0x3

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v73, v0

    const/16 v3, 0xe0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v74, v0

    const/16 v3, 0xf0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v75, v0

    const/16 v3, 0xf8

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v76, v0

    const/16 v3, 0xfc

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v77, v0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v78, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v79, v0

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v80, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v81, v0

    const/16 v4, 0x20

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v82, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v83, v0

    const/16 v4, 0x40

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v84, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v85, v0

    const/16 v4, 0x80

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v86, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v87, v0

    const/16 v4, 0xc0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v88, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v89, v0

    const/16 v4, 0xe0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v90, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v91, v0

    const/16 v4, 0xf0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v92, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v93, v0

    const/16 v4, 0xf8

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v94, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v95, v0

    const/4 v1, 0x4

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v96, v0

    const/16 v3, 0xe0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v97, v0

    const/16 v3, 0xf0

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v98, v0

    const/16 v3, 0xf8

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v99, v0

    const/16 v3, 0xfc

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v100, v0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v101, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v102, v0

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v103, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v104, v0

    const/16 v4, 0x20

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v105, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v106, v0

    const/16 v4, 0x40

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v107, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v108, v0

    const/16 v4, 0x80

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v109, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v110, v0

    const/16 v4, 0xc0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v111, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v112, v0

    const/16 v4, 0xe0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v113, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v114, v0

    const/16 v4, 0xf0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v115, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v116, v0

    const/16 v4, 0xf8

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v117, v0

    invoke-direct {v0, v1, v4, v2, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v2, 0x0

    move v0, v3

    move-object/from16 v3, v118

    move-object/from16 v4, v119

    filled-new-array/range {v2 .. v117}, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 66
    new-instance v2, Ljava/util/HashMap;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    :goto_0
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 68
    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    sput-object v2, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1

    .line 74
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 93
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v1, v0

    const/16 v2, 0x74

    if-ne v1, v2, :cond_18

    if-ltz p0, :cond_17

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/16 v1, 0x73

    if-gt p0, v1, :cond_1

    .line 103
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v2, :cond_4

    .line 106
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 107
    const-string p2, "End of buffer read whilst trying to decode codec"

    const/4 v2, -0x1

    if-eq p0, v2, :cond_3

    and-int/lit8 v3, p0, 0x1

    shr-int/lit8 v4, p0, 0x1

    and-int/2addr v4, v0

    shr-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v1

    .line 115
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-eq p1, v2, :cond_2

    add-int/2addr p1, v1

    .line 121
    new-instance p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p2, p0, p1, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    return-object p2

    .line 117
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v2, 0x75

    const/4 v3, 0x0

    if-lt p0, v2, :cond_d

    const/16 v4, 0x8c

    if-gt p0, v4, :cond_d

    sub-int/2addr p0, v2

    and-int/lit8 v2, p0, 0x3

    shr-int/lit8 v4, p0, 0x2

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_5

    move v4, v1

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    shr-int/lit8 v5, p0, 0x3

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_6

    move v5, v1

    goto :goto_1

    :cond_6
    move v5, v3

    :goto_1
    shr-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_7

    move v3, v1

    :cond_7
    if-eqz v5, :cond_9

    if-nez v3, :cond_8

    goto :goto_2

    .line 132
    :cond_8
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "ADef and BDef should never both be true"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    if-eqz v4, :cond_a

    .line 134
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_a
    add-int/2addr v0, v1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    int-to-double v1, v2

    .line 135
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int p0, v1

    mul-int/2addr v0, p0

    if-eqz v5, :cond_b

    move-object p0, p2

    goto :goto_3

    .line 141
    :cond_b
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p0

    :goto_3
    if-eqz v3, :cond_c

    goto :goto_4

    .line 146
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p2

    .line 148
    :goto_4
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    invoke-direct {p1, v0, p0, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;-><init>(ILorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object p1

    :cond_d
    const/16 v0, 0x8d

    if-lt p0, v0, :cond_16

    const/16 v2, 0xbc

    if-gt p0, v2, :cond_16

    sub-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_5

    :cond_e
    move v0, v3

    :goto_5
    shr-int/lit8 v2, p0, 0x1

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_f

    move v2, v1

    goto :goto_6

    :cond_f
    move v2, v3

    :goto_6
    shr-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    move v1, v3

    :goto_7
    const/16 v3, 0xc

    .line 159
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 160
    aget p0, v3, p0

    if-eqz v1, :cond_13

    if-eqz v0, :cond_11

    move-object v0, p2

    goto :goto_8

    .line 165
    :cond_11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v0

    :goto_8
    if-eqz v2, :cond_12

    goto :goto_9

    .line 166
    :cond_12
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p2

    .line 172
    :goto_9
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {p1, v0, p0, p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object p1

    :cond_13
    if-eqz v0, :cond_14

    move-object p0, p2

    goto :goto_a

    .line 174
    :cond_14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p0

    .line 175
    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v0

    if-eqz v2, :cond_15

    goto :goto_b

    .line 176
    :cond_15
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p2

    .line 177
    :goto_b
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {p1, p0, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object p1

    .line 151
    :cond_16
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid codec encoding byte ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") found"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Encoding cannot be less than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_18
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Canonical encodings have been incorrectly modified"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
    .end array-data
.end method

.method public static getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I
    .locals 9

    .line 181
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 184
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 186
    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 187
    new-array p1, v1, [I

    const/16 v0, 0x74

    .line 188
    aput v0, p1, v3

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v1

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aput v0, p1, v4

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result p0

    sub-int/2addr p0, v4

    aput p0, p1, v2

    return-object p1

    .line 193
    :cond_1
    instance-of v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    const/16 v5, 0x100

    if-eqz v0, :cond_e

    .line 194
    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getK()I

    move-result v0

    if-gt v0, v5, :cond_2

    sub-int/2addr v0, v4

    move v5, v3

    goto :goto_0

    :cond_2
    const/16 v6, 0x1000

    if-gt v0, v6, :cond_3

    .line 203
    div-int/lit8 v0, v0, 0x10

    sub-int/2addr v0, v4

    move v5, v4

    goto :goto_0

    :cond_3
    const/high16 v7, 0x10000

    if-gt v0, v7, :cond_4

    .line 206
    div-int/2addr v0, v5

    sub-int/2addr v0, v4

    move v5, v2

    goto :goto_0

    .line 209
    :cond_4
    div-int/2addr v0, v6

    sub-int/2addr v0, v4

    move v5, v1

    .line 211
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getACodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v6

    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getBCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p0

    .line 214
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_1

    .line 216
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v2

    goto :goto_1

    :cond_6
    move v7, v3

    :goto_1
    add-int/lit8 v5, v5, 0x75

    if-ne v0, v1, :cond_7

    move v8, v3

    goto :goto_2

    :cond_7
    const/4 v8, 0x4

    :goto_2
    add-int/2addr v5, v8

    mul-int/lit8 v8, v7, 0x8

    add-int/2addr v5, v8

    if-ne v7, v4, :cond_8

    .line 220
    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    :cond_8
    invoke-static {v6, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v6

    :goto_3
    if-ne v7, v2, :cond_9

    .line 221
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_4

    :cond_9
    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p0

    :goto_4
    if-ne v0, v1, :cond_a

    move p1, v3

    goto :goto_5

    :cond_a
    move p1, v4

    :goto_5
    add-int/2addr p1, v4

    .line 222
    array-length v7, v6

    add-int/2addr p1, v7

    array-length v7, p0

    add-int/2addr p1, v7

    new-array p1, p1, [I

    .line 223
    aput v5, p1, v3

    if-eq v0, v1, :cond_b

    .line 226
    aput v0, p1, v4

    goto :goto_6

    :cond_b
    move v2, v4

    .line 229
    :goto_6
    array-length v0, v6

    move v1, v3

    :goto_7
    if-ge v1, v0, :cond_c

    aget v5, v6, v1

    .line 230
    aput v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 233
    :cond_c
    array-length v0, p0

    :goto_8
    if-ge v3, v0, :cond_d

    aget v1, p0, v3

    .line 234
    aput v1, p1, v2

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    return-object p1

    .line 239
    :cond_e
    instance-of v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v0, :cond_17

    .line 240
    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getTokenCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v2

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object p0

    if-eqz p0, :cond_10

    .line 249
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-ne v0, p0, :cond_f

    move p0, v4

    goto :goto_9

    .line 251
    :cond_f
    instance-of p0, v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz p0, :cond_10

    .line 252
    move-object p0, v0

    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v8

    if-nez v8, :cond_10

    const/16 v8, 0xb

    .line 254
    new-array v8, v8, [I

    fill-array-data v8, :array_0

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result p0

    sub-int/2addr v5, p0

    .line 256
    invoke-static {v8, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    const/4 v5, -0x1

    if-eq p0, v5, :cond_10

    goto :goto_9

    :cond_10
    move p0, v3

    :goto_9
    add-int/lit16 v5, v6, 0x8d

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v5, v8

    mul-int/lit8 v8, p0, 0x4

    add-int/2addr v5, v8

    if-ne v6, v4, :cond_11

    .line 265
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_a

    :cond_11
    invoke-static {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v1

    :goto_a
    if-eqz p0, :cond_12

    .line 266
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_b

    :cond_12
    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p0

    :goto_b
    if-ne v7, v4, :cond_13

    .line 267
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_c

    :cond_13
    invoke-static {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p1

    .line 268
    :goto_c
    array-length v0, v1

    add-int/2addr v0, v4

    array-length v2, p1

    add-int/2addr v0, v2

    array-length v2, p0

    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 269
    aput v5, v0, v3

    .line 271
    array-length v2, v1

    move v5, v3

    move v6, v4

    :goto_d
    if-ge v5, v2, :cond_14

    aget v7, v1, v5

    .line 272
    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 275
    :cond_14
    array-length v1, p0

    move v2, v3

    :goto_e
    if-ge v2, v1, :cond_15

    aget v5, p0, v2

    .line 276
    aput v5, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 279
    :cond_15
    array-length p0, p1

    :goto_f
    if-ge v3, p0, :cond_16

    aget v1, p1, v3

    .line 280
    aput v1, v0, v6

    add-int/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_16
    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
    .end array-data
.end method

.method public static getSpecifierForDefaultCodec(Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method
