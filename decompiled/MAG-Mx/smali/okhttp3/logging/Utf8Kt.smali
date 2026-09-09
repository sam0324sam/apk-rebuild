.class public final Lokhttp3/logging/Utf8Kt;
.super Ljava/lang/Object;
.source "utf8.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "isProbablyUtf8",
        "",
        "Lokio/Buffer;",
        "okhttp-logging-interceptor"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final isProbablyUtf8(Lokio/Buffer;)Z
    .locals 12
    .param p0, "$this$isProbablyUtf8"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const-string v0, "$this$isProbablyUtf8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    nop

    .line 28
    :try_start_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 29
    .local v1, "prefix":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v10, 0x40

    invoke-static {v2, v3, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v4

    .line 30
    .local v4, "byteCount":J
    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 31
    const/16 v0, 0x10

    move v8, v9

    :goto_0
    if-ge v8, v0, :cond_0

    .line 32
    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 42
    .end local v1    # "prefix":Lokio/Buffer;
    .end local v4    # "byteCount":J
    :goto_1
    return v0

    .line 35
    .restart local v1    # "prefix":Lokio/Buffer;
    .restart local v4    # "byteCount":J
    :cond_1
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v7

    .line 36
    .local v7, "codePoint":I
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    move v0, v9

    .line 37
    goto :goto_1

    .line 31
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .local v8, "i":I
    goto :goto_0

    .line 41
    .end local v1    # "prefix":Lokio/Buffer;
    .end local v4    # "byteCount":J
    .end local v7    # "codePoint":I
    .end local v8    # "i":I
    :catch_0
    move-exception v6

    .local v6, "_":Ljava/io/EOFException;
    move v0, v9

    .line 42
    goto :goto_1
.end method
