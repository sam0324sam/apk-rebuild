.class public final Lokhttp3/internal/platform/android/UtilKt;
.super Ljava/lang/Object;
.source "util.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 util.kt\nokhttp3/internal/platform/android/UtilKt\n*L\n1#1,41:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "MAX_LOG_LENGTH",
        "",
        "androidLog",
        "",
        "level",
        "message",
        "",
        "t",
        "",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# direct methods
.method public static final androidLog(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .param p0, "level"    # I
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "t"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x5

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v9, p1

    .line 25
    .local v9, "logMessage":Ljava/lang/String;
    if-ne p0, v8, :cond_2

    .line 26
    .local v8, "logLevel":I
    :goto_0
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    .local v2, "i":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 31
    .local v7, "length":I
    :goto_1
    if-ge v2, v7, :cond_5

    move-object v0, v9

    .line 32
    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v10

    .line 33
    .local v10, "newline":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_3

    .line 34
    :cond_1
    :goto_2
    add-int/lit16 v0, v2, 0xfa0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 36
    .local v6, "end":I
    const-string v0, "OkHttp"

    if-nez v9, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    .end local v2    # "i":I
    .end local v6    # "end":I
    .end local v7    # "length":I
    .end local v8    # "logLevel":I
    .end local v10    # "newline":I
    :cond_2
    const/4 v8, 0x3

    goto :goto_0

    .restart local v2    # "i":I
    .restart local v7    # "length":I
    .restart local v8    # "logLevel":I
    .restart local v10    # "newline":I
    :cond_3
    move v10, v7

    .line 33
    goto :goto_2

    .line 36
    .restart local v6    # "end":I
    :cond_4
    invoke-virtual {v9, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 37
    move v2, v6

    .line 38
    if-lt v2, v10, :cond_1

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_1

    .line 41
    .end local v6    # "end":I
    .end local v10    # "newline":I
    :cond_5
    return-void
.end method
