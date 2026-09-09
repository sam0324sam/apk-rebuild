.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 -Util.kt\nokio/-Util\n*L\n1#1,234:1\n8226#2:235\n8543#2,3:236\n10272#2,3:241\n37#3,2:239\n63#4:244\n63#4:245\n*E\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n44#1:235\n44#1,3:236\n45#1,3:241\n44#1,2:239\n152#1:244\n207#1:245\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Options$Companion;",
        "",
        "()V",
        "intCount",
        "",
        "Lokio/Buffer;",
        "getIntCount",
        "(Lokio/Buffer;)J",
        "buildTrieRecursive",
        "",
        "nodeOffset",
        "node",
        "byteStringOffset",
        "",
        "byteStrings",
        "",
        "Lokio/ByteString;",
        "fromIndex",
        "toIndex",
        "indexes",
        "of",
        "Lokio/Options;",
        "",
        "([Lokio/ByteString;)Lokio/Options;",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 32
    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 27
    .param p1, "nodeOffset"    # J
    .param p3, "node"    # Lokio/Buffer;
    .param p4, "byteStringOffset"    # I
    .param p5, "byteStrings"    # Ljava/util/List;
    .param p6, "fromIndex"    # I
    .param p7, "toIndex"    # I
    .param p8, "indexes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List",
            "<+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    move/from16 v0, p6

    move/from16 v1, p7

    if-ge v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const-string v7, "Failed requirement."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move/from16 v20, p6

    .line 118
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p7

    if-ge v0, v1, :cond_4

    .line 119
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    move/from16 v0, p4

    if-lt v3, v0, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    const-string v7, "Failed requirement."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 118
    :cond_3
    add-int/lit8 v20, v20, 0x1

    .local v20, "i":I
    goto :goto_1

    .line 123
    .end local v20    # "i":I
    :cond_4
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    .line 124
    .local v2, "from":Lokio/ByteString;
    add-int/lit8 v3, p7, -0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    .line 125
    .local v26, "to":Lokio/ByteString;
    const/16 v21, -0x1

    .line 128
    .local v21, "prefixIndex":I
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 129
    move-object/from16 v0, p8

    move/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v21

    .line 130
    add-int/lit8 p6, p6, 0x1

    .line 131
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "from":Lokio/ByteString;
    check-cast v2, Lokio/ByteString;

    .line 134
    .restart local v2    # "from":Lokio/ByteString;
    :cond_5
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v3

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    if-eq v3, v7, :cond_f

    .line 136
    const/16 v25, 0x1

    .line 137
    .local v25, "selectChoiceCount":I
    add-int/lit8 v20, p6, 0x1

    :goto_3
    move/from16 v0, v20

    move/from16 v1, p7

    if-ge v0, v1, :cond_7

    .line 138
    add-int/lit8 v3, v20, -0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v7

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v7, v3, :cond_6

    .line 139
    add-int/lit8 v25, v25, 0x1

    .line 137
    :cond_6
    add-int/lit8 v20, v20, 0x1

    .restart local v20    # "i":I
    goto :goto_3

    .end local v20    # "i":I
    :cond_7
    move-object/from16 v3, p0

    .line 144
    check-cast v3, Lokio/Options$Companion;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v12

    add-long v12, v12, p1

    const/4 v3, 0x2

    int-to-long v14, v3

    add-long/2addr v12, v14

    mul-int/lit8 v3, v25, 0x2

    int-to-long v14, v3

    add-long v4, v12, v14

    .line 146
    .local v4, "childNodesOffset":J
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 147
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v20, p6

    .line 149
    :goto_4
    move/from16 v0, v20

    move/from16 v1, p7

    if-ge v0, v1, :cond_a

    .line 150
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v22

    .line 151
    .local v22, "rangeByte":B
    move/from16 v0, v20

    move/from16 v1, p6

    if-eq v0, v1, :cond_8

    add-int/lit8 v3, v20, -0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_9

    .line 152
    :cond_8
    const/16 v3, 0xff

    .line 244
    and-int v3, v3, v22

    .line 152
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 149
    :cond_9
    add-int/lit8 v20, v20, 0x1

    .restart local v20    # "i":I
    goto :goto_4

    .line 156
    .end local v20    # "i":I
    .end local v22    # "rangeByte":B
    :cond_a
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 157
    .local v6, "childNodes":Lokio/Buffer;
    move/from16 v9, p6

    .line 158
    .local v9, "rangeStart":I
    :goto_5
    move/from16 v0, p7

    if-ge v9, v0, :cond_e

    .line 159
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v22

    .line 160
    .restart local v22    # "rangeByte":B
    move/from16 v10, p7

    .line 161
    .local v10, "rangeEnd":I
    add-int/lit8 v23, v9, 0x1

    :goto_6
    move/from16 v0, v23

    move/from16 v1, p7

    if-ge v0, v1, :cond_b

    .line 162
    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_c

    .end local v10    # "rangeEnd":I
    .local v23, "rangeEnd":I
    move/from16 v10, v23

    .line 168
    .end local v23    # "rangeEnd":I
    .restart local v10    # "rangeEnd":I
    :cond_b
    add-int/lit8 v3, v9, 0x1

    if-ne v3, v10, :cond_d

    .line 169
    add-int/lit8 v7, p4, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v7, v3, :cond_d

    .line 171
    move-object/from16 v0, p8

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 183
    :goto_7
    move v9, v10

    .line 158
    goto :goto_5

    .line 161
    :cond_c
    add-int/lit8 v20, v23, 0x1

    .restart local v20    # "i":I
    move/from16 v23, v20

    goto :goto_6

    .end local v20    # "i":I
    :cond_d
    move-object/from16 v3, p0

    .line 174
    check-cast v3, Lokio/Options$Companion;

    invoke-direct {v3, v6}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v12

    add-long/2addr v12, v4

    long-to-int v3, v12

    mul-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-object/from16 v3, p0

    .line 175
    check-cast v3, Lokio/Options$Companion;

    .line 178
    add-int/lit8 v7, p4, 0x1

    move-object/from16 v8, p5

    move-object/from16 v11, p8

    .line 175
    invoke-direct/range {v3 .. v11}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    goto :goto_7

    .line 188
    .end local v10    # "rangeEnd":I
    .end local v22    # "rangeByte":B
    :cond_e
    check-cast v6, Lokio/Source;

    .end local v6    # "childNodes":Lokio/Buffer;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 227
    .end local v9    # "rangeStart":I
    .end local v25    # "selectChoiceCount":I
    :goto_8
    return-void

    .line 191
    .end local v4    # "childNodesOffset":J
    :cond_f
    const/16 v24, 0x0

    .line 192
    .local v24, "scanByteCount":I
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lokio/ByteString;->size()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v20, p4

    :goto_9
    move/from16 v0, v20

    if-ge v0, v3, :cond_10

    .line 193
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v7

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v8

    if-ne v7, v8, :cond_10

    .line 194
    add-int/lit8 v24, v24, 0x1

    .line 197
    add-int/lit8 v20, v20, 0x1

    .restart local v20    # "i":I
    goto :goto_9

    .end local v20    # "i":I
    :cond_10
    move-object/from16 v3, p0

    .line 201
    check-cast v3, Lokio/Options$Companion;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v12

    add-long v12, v12, p1

    const/4 v3, 0x2

    int-to-long v14, v3

    add-long/2addr v12, v14

    move/from16 v0, v24

    int-to-long v14, v0

    add-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long v4, v12, v14

    .line 203
    .restart local v4    # "childNodesOffset":J
    move/from16 v0, v24

    neg-int v3, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 204
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 206
    add-int v3, p4, v24

    move/from16 v20, p4

    :goto_a
    move/from16 v0, v20

    if-ge v0, v3, :cond_11

    .line 207
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v7

    const/16 v8, 0xff

    .line 245
    and-int/2addr v7, v8

    .line 207
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 206
    add-int/lit8 v20, v20, 0x1

    .restart local v20    # "i":I
    goto :goto_a

    .line 210
    .end local v20    # "i":I
    :cond_11
    add-int/lit8 v3, p6, 0x1

    move/from16 v0, p7

    if-ne v3, v0, :cond_14

    .line 212
    add-int v7, p4, v24

    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v7, v3, :cond_12

    const/4 v3, 0x1

    :goto_b
    if-nez v3, :cond_13

    const-string v7, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_12
    const/4 v3, 0x0

    goto :goto_b

    .line 213
    :cond_13
    move-object/from16 v0, p8

    move/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_8

    .line 216
    :cond_14
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .restart local v6    # "childNodes":Lokio/Buffer;
    move-object/from16 v3, p0

    .line 217
    check-cast v3, Lokio/Options$Companion;

    invoke-direct {v3, v6}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v12

    add-long/2addr v12, v4

    long-to-int v3, v12

    mul-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-object/from16 v11, p0

    .line 218
    check-cast v11, Lokio/Options$Companion;

    .line 221
    add-int v15, p4, v24

    move-wide v12, v4

    move-object v14, v6

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, p8

    .line 218
    invoke-direct/range {v11 .. v19}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 226
    check-cast v6, Lokio/Source;

    .end local v6    # "childNodes":Lokio/Buffer;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    goto/16 :goto_8
.end method

.method static bridge synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    .prologue
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_3

    .line 109
    const-wide/16 v2, 0x0

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_2

    .line 111
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    .line 113
    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    .line 114
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    move-object v1, p0

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    return-void

    :cond_0
    move/from16 v8, p7

    goto :goto_3

    :cond_1
    move/from16 v7, p6

    goto :goto_2

    :cond_2
    move v5, p4

    goto :goto_1

    :cond_3
    move-wide v2, p1

    goto :goto_0
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 4
    .param p1, "$receiver"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 231
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const/4 v2, 0x4

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 30
    .param p1, "byteStrings"    # [Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "byteStrings"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    .line 37
    new-instance v3, Lokio/Options;

    const/4 v4, 0x0

    new-array v4, v4, [Lokio/ByteString;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v7}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .end local p0    # "this":Lokio/Options$Companion;
    :goto_1
    return-object v3

    .line 35
    .restart local p0    # "this":Lokio/Options$Companion;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 42
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, "list":Ljava/util/List;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 44
    move-object/from16 v14, p1

    .line 235
    .local v14, "$receiver$iv":[Ljava/lang/Object;
    new-instance v19, Ljava/util/ArrayList;

    array-length v3, v14

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v19, Ljava/util/Collection;

    .line 236
    .local v19, "destination$iv$iv":Ljava/util/Collection;
    array-length v4, v14

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v25, v14, v3

    .line 44
    .local v25, "item$iv$iv":Ljava/lang/Object;
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 238
    .end local v25    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    check-cast v19, Ljava/util/List;

    .end local v19    # "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v28, v19

    check-cast v28, Ljava/util/Collection;

    .line 44
    nop

    .line 240
    .local v28, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    check-cast v3, [Ljava/lang/Integer;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 44
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 45
    .local v11, "indexes":Ljava/util/List;
    move-object/from16 v14, p1

    .line 241
    const/16 v22, 0x0

    .line 242
    .local v22, "index$iv":I
    array-length v9, v14

    const/4 v3, 0x0

    move v8, v3

    move/from16 v23, v22

    .end local v22    # "index$iv":I
    .local v23, "index$iv":I
    :goto_3
    if-ge v8, v9, :cond_4

    aget-object v24, v14, v8

    .local v24, "item$iv":Ljava/lang/Object;
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "index$iv":I
    .restart local v22    # "index$iv":I
    move/from16 v18, v23

    .local v18, "callerIndex":I
    move-object/from16 v3, v24

    .line 46
    check-cast v3, Ljava/lang/Comparable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v27

    .line 47
    .local v27, "sortedIndex":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v0, v27

    invoke-interface {v11, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    nop

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move/from16 v23, v22

    .end local v22    # "index$iv":I
    .restart local v23    # "index$iv":I
    goto :goto_3

    .line 243
    .end local v18    # "callerIndex":I
    .end local v24    # "item$iv":Ljava/lang/Object;
    .end local v27    # "sortedIndex":I
    :cond_4
    nop

    .line 49
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_6

    const-string v4, "the empty byte string is not a supported option"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 54
    :cond_6
    const/4 v15, 0x0

    .line 55
    .local v15, "a":I
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_c

    .line 56
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    .line 57
    .local v26, "prefix":Lokio/ByteString;
    add-int/lit8 v16, v15, 0x1

    .line 58
    .local v16, "b":I
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_7

    .line 59
    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lokio/ByteString;

    .line 60
    .local v17, "byteString":Lokio/ByteString;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 69
    .end local v17    # "byteString":Lokio/ByteString;
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 55
    goto :goto_5

    .line 61
    .restart local v17    # "byteString":Lokio/ByteString;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lokio/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    .line 62
    :cond_a
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-le v4, v3, :cond_b

    .line 63
    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 66
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 72
    .end local v16    # "b":I
    .end local v17    # "byteString":Lokio/ByteString;
    .end local v26    # "prefix":Lokio/ByteString;
    :cond_c
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .local v6, "trieBytes":Lokio/Buffer;
    move-object/from16 v3, p0

    .line 73
    check-cast v3, Lokio/Options$Companion;

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x35

    const/4 v13, 0x0

    move-object v8, v2

    invoke-static/range {v3 .. v13}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 75
    check-cast p0, Lokio/Options$Companion;

    .end local p0    # "this":Lokio/Options$Companion;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v4

    long-to-int v3, v4

    new-array v0, v3, [I

    move-object/from16 v29, v0

    .line 76
    .local v29, "trie":[I
    const/16 v20, 0x0

    .line 77
    .local v20, "i":I
    :goto_8
    invoke-virtual {v6}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 78
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "i":I
    .local v21, "i":I
    invoke-virtual {v6}, Lokio/Buffer;->readInt()I

    move-result v3

    aput v3, v29, v20

    move/from16 v20, v21

    .line 77
    .end local v21    # "i":I
    .restart local v20    # "i":I
    goto :goto_8

    .line 81
    :cond_d
    new-instance v4, Lokio/Options;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lokio/ByteString;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v3, v0, v5}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    goto/16 :goto_1

    .line 37
    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
