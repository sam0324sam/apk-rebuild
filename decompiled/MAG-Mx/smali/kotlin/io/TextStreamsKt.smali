.class public final Lkotlin/io/TextStreamsKt;
.super Ljava/lang/Object;
.source "ReadWrite.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,152:1\n20#1,6:153\n53#1:159\n141#1:162\n1084#2,2:160\n*E\n*S KotlinDebug\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n33#1:159\n33#1,2:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u001c\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000b0\r\u001a\u0010\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0010*\u00020\u0001\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0013\u001a\u0010\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0015*\u00020\u0002\u001a\n\u0010\u0016\u001a\u00020\u000e*\u00020\u0002\u001a\u0017\u0010\u0016\u001a\u00020\u000e*\u00020\u00132\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u0087\u0008\u001a\r\u0010\u0019\u001a\u00020\u001a*\u00020\u000eH\u0087\u0008\u001a5\u0010\u001b\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c*\u00020\u00022\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u0010\u0012\u0004\u0012\u0002H\u001c0\rH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001f\u0082\u0002\u0008\n\u0006\u0008\u0011(\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "buffered",
        "Ljava/io/BufferedReader;",
        "Ljava/io/Reader;",
        "bufferSize",
        "",
        "Ljava/io/BufferedWriter;",
        "Ljava/io/Writer;",
        "copyTo",
        "",
        "out",
        "forEachLine",
        "",
        "action",
        "Lkotlin/Function1;",
        "",
        "lineSequence",
        "Lkotlin/sequences/Sequence;",
        "readBytes",
        "",
        "Ljava/net/URL;",
        "readLines",
        "",
        "readText",
        "charset",
        "Ljava/nio/charset/Charset;",
        "reader",
        "Ljava/io/StringReader;",
        "useLines",
        "T",
        "block",
        "Requires newer compiler version to be inlined correctly.",
        "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "TextStreamsKt"
.end annotation


# direct methods
.method private static final buffered(Ljava/io/Reader;I)Ljava/io/BufferedReader;
    .locals 2
    .param p0, "$this$buffered"    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bufferSize"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$buffered":I
    instance-of v1, p0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    .end local p0    # "$this$buffered":Ljava/io/Reader;
    :goto_0
    return-object p0

    .restart local p0    # "$this$buffered":Ljava/io/Reader;
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, v1

    goto :goto_0
.end method

.method private static final buffered(Ljava/io/Writer;I)Ljava/io/BufferedWriter;
    .locals 2
    .param p0, "$this$buffered"    # Ljava/io/Writer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bufferSize"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    .local v0, "$i$f$buffered":I
    instance-of v1, p0, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/io/BufferedWriter;

    .end local p0    # "$this$buffered":Ljava/io/Writer;
    :goto_0
    return-object p0

    .restart local p0    # "$this$buffered":Ljava/io/Writer;
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object p0, v1

    goto :goto_0
.end method

.method static synthetic buffered$default(Ljava/io/Reader;IILjava/lang/Object;)Ljava/io/BufferedReader;
    .locals 2
    .param p0, "$this$buffered"    # Ljava/io/Reader;
    .param p1, "bufferSize"    # I

    .prologue
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 19
    const/16 p1, 0x2000

    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "$i$f$buffered":I
    instance-of v1, p0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/io/BufferedReader;

    .end local p0    # "$this$buffered":Ljava/io/Reader;
    :goto_0
    return-object p0

    .restart local p0    # "$this$buffered":Ljava/io/Reader;
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, v1

    goto :goto_0
.end method

.method static synthetic buffered$default(Ljava/io/Writer;IILjava/lang/Object;)Ljava/io/BufferedWriter;
    .locals 2
    .param p0, "$this$buffered"    # Ljava/io/Writer;
    .param p1, "bufferSize"    # I

    .prologue
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 24
    const/16 p1, 0x2000

    :cond_0
    const/4 v0, 0x0

    .line 158
    .local v0, "$i$f$buffered":I
    instance-of v1, p0, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/io/BufferedWriter;

    .end local p0    # "$this$buffered":Ljava/io/Writer;
    :goto_0
    return-object p0

    .restart local p0    # "$this$buffered":Ljava/io/Writer;
    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static final copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6
    .param p0, "$this$copyTo"    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "out"    # Ljava/io/Writer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "bufferSize"    # I

    .prologue
    const-string v4, "$this$copyTo"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .local v2, "charsCopied":J
    new-array v0, p2, [C

    .line 123
    .local v0, "buffer":[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 124
    .local v1, "chars":I
    :goto_0
    if-ltz v1, :cond_0

    .line 125
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    .line 126
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 124
    goto :goto_0

    .line 129
    :cond_0
    return-wide v2
.end method

.method public static synthetic copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J
    .locals 2

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 120
    const/16 p2, 0x2000

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/io/TextStreamsKt;->copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    .locals 15
    .param p0, "$this$forEachLine"    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v10, "$this$forEachLine"

    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "action"

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v5, p0

    .local v5, "$this$useLines$iv":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$f$useLines":I
    const/16 v11, 0x2000

    instance-of v10, v5, Ljava/io/BufferedReader;

    if-eqz v10, :cond_0

    check-cast v5, Ljava/io/BufferedReader;

    .end local v5    # "$this$useLines$iv":Ljava/io/Reader;
    move-object v10, v5

    :goto_0
    check-cast v10, Ljava/io/Closeable;

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Throwable;

    nop

    :try_start_0
    move-object v0, v10

    check-cast v0, Ljava/io/BufferedReader;

    move-object v9, v0

    .local v9, "it$iv":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .local v1, "$i$a$-use-TextStreamsKt$useLines$1$iv":I
    invoke-static {v9}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v8

    .local v8, "it":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-useLines-TextStreamsKt$forEachLine$1":I
    move-object/from16 v6, p1

    .local v6, "action$iv":Lkotlin/jvm/functions/Function1;
    const/4 v3, 0x0

    .line 160
    .local v3, "$i$f$forEach":I
    invoke-interface {v8}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 159
    .end local v1    # "$i$a$-use-TextStreamsKt$useLines$1$iv":I
    .end local v2    # "$i$a$-useLines-TextStreamsKt$forEachLine$1":I
    .end local v3    # "$i$f$forEach":I
    .end local v6    # "action$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "element$iv":Ljava/lang/Object;
    .end local v8    # "it":Lkotlin/sequences/Sequence;
    .end local v9    # "it$iv":Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v12

    move-object v14, v12

    move-object v12, v11

    move-object v11, v14

    invoke-static {v10, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v11

    .restart local v5    # "$this$useLines$iv":Ljava/io/Reader;
    :cond_0
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    .line 161
    .end local v5    # "$this$useLines$iv":Ljava/io/Reader;
    .restart local v1    # "$i$a$-use-TextStreamsKt$useLines$1$iv":I
    .restart local v2    # "$i$a$-useLines-TextStreamsKt$forEachLine$1":I
    .restart local v3    # "$i$f$forEach":I
    .restart local v6    # "action$iv":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "it":Lkotlin/sequences/Sequence;
    .restart local v9    # "it$iv":Ljava/io/BufferedReader;
    :cond_1
    nop

    .line 33
    nop

    :try_start_2
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    .line 33
    return-void
.end method

.method public static final lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0, "$this$lineSequence"    # Ljava/io/BufferedReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lkotlin/sequences/Sequence",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$lineSequence"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lkotlin/io/LinesSequence;

    invoke-direct {v0, p0}, Lkotlin/io/LinesSequence;-><init>(Ljava/io/BufferedReader;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static final readBytes(Ljava/net/URL;)[B
    .locals 7
    .param p0, "$this$readBytes"    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "$this$readBytes"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Throwable;

    nop

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0

    .local v2, "it":Ljava/io/InputStream;
    const/4 v1, 0x0

    .local v1, "$i$a$-use-TextStreamsKt$readBytes$1":I
    const-string v5, "it"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    .end local v1    # "$i$a$-use-TextStreamsKt$readBytes$1":I
    .end local v2    # "it":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static final readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 2
    .param p0, "$this$readLines"    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$this$readLines"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "result":Ljava/util/ArrayList;
    new-instance v1, Lkotlin/io/TextStreamsKt$readLines$1;

    invoke-direct {v1, v0}, Lkotlin/io/TextStreamsKt$readLines$1;-><init>(Ljava/util/ArrayList;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v1}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 43
    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/util/ArrayList;
    return-object v0
.end method

.method public static final readText(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "$this$readText"    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$this$readText"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .local v0, "buffer":Ljava/io/StringWriter;
    move-object v1, v0

    .line 107
    check-cast v1, Ljava/io/Writer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/io/TextStreamsKt;->copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J

    .line 108
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buffer.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final readText(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$readText"    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    .local v0, "$i$f$readText":I
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method static synthetic readText$default(Ljava/net/URL;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$readText"    # Ljava/net/URL;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 141
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    const/4 v0, 0x0

    .line 162
    .local v0, "$i$f$readText":I
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static final reader(Ljava/lang/String;)Ljava/io/StringReader;
    .locals 2
    .param p0, "$this$reader"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$reader":I
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final useLines(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 10
    .param p0, "$this$useLines"    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lkotlin/sequences/Sequence",
            "<",
            "Ljava/lang/String;",
            ">;+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .local v2, "$i$f$useLines":I
    const-string v4, "$this$useLines"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/16 v5, 0x2000

    instance-of v4, p0, Ljava/io/BufferedReader;

    if-eqz v4, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    .end local p0    # "$this$useLines":Ljava/io/Reader;
    move-object v4, p0

    :goto_0
    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Throwable;

    nop

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/BufferedReader;

    move-object v3, v0

    .local v3, "it":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .local v1, "$i$a$-use-TextStreamsKt$useLines$1":I
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v8, v8, v7}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v6

    .end local v1    # "$i$a$-use-TextStreamsKt$useLines$1":I
    .end local v3    # "it":Ljava/io/BufferedReader;
    .restart local p0    # "$this$useLines":Ljava/io/Reader;
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    .end local p0    # "$this$useLines":Ljava/io/Reader;
    .restart local v1    # "$i$a$-use-TextStreamsKt$useLines$1":I
    .restart local v3    # "it":Ljava/io/BufferedReader;
    :cond_1
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    goto :goto_1

    .end local v1    # "$i$a$-use-TextStreamsKt$useLines$1":I
    .end local v3    # "it":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v8, v8, v7}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5

    :cond_2
    if-nez v6, :cond_3

    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    goto :goto_2

    :cond_3
    nop

    :try_start_2
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2
.end method
