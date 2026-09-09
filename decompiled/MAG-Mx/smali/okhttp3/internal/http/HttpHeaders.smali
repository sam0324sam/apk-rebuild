.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeaders.kt\nokhttp3/internal/http/HttpHeaders\n*L\n1#1,244:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0000\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u001a\n\u0010\r\u001a\u00020\u0004*\u00020\u0006\u001a\u001a\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0012H\u0002\u001a\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u000c*\u00020\u0010H\u0002\u001a\u000e\u0010\u0014\u001a\u0004\u0018\u00010\u000c*\u00020\u0010H\u0002\u001a\u001a\u0010\u0015\u001a\u00020\u000f*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n\u001a\u000c\u0010\u001a\u001a\u00020\u0004*\u00020\u0010H\u0002\u001a\u0014\u0010\u001b\u001a\u00020\u0004*\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "QUOTED_STRING_DELIMITERS",
        "Lokio/ByteString;",
        "TOKEN_DELIMITERS",
        "hasBody",
        "",
        "response",
        "Lokhttp3/Response;",
        "parseChallenges",
        "",
        "Lokhttp3/Challenge;",
        "Lokhttp3/Headers;",
        "headerName",
        "",
        "promisesBody",
        "readChallengeHeader",
        "",
        "Lokio/Buffer;",
        "result",
        "",
        "readQuotedString",
        "readToken",
        "receiveHeaders",
        "Lokhttp3/CookieJar;",
        "url",
        "Lokhttp3/HttpUrl;",
        "headers",
        "skipCommasAndWhitespace",
        "startsWith",
        "prefix",
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

.annotation build Lkotlin/jvm/JvmName;
    name = "HttpHeaders"
.end annotation


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field private static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    .line 38
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "\t ,="

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method public static final hasBody(Lokhttp3/Response;)Z
    .locals 1
    .param p0, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "No longer supported"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "response.promisesBody()"
            imports = {}
        .end subannotation
    .end annotation

    .prologue
    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v0

    return v0
.end method

.method public static final parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "$this$parseChallenges"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "headerName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v4, "$this$parseChallenges"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "headerName"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 61
    .local v3, "result":Ljava/util/List;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    .line 64
    .local v2, "header":Lokio/Buffer;
    nop

    .line 65
    :try_start_0
    invoke-static {v2, v3}, Lokhttp3/internal/http/HttpHeaders;->readChallengeHeader(Lokio/Buffer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2    # "header":Lokio/Buffer;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .local v1, "h":I
    goto :goto_0

    .line 66
    .end local v1    # "h":I
    .restart local v2    # "header":Lokio/Buffer;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/EOFException;
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    const/4 v6, 0x5

    const-string v7, "Unable to parse challenge"

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/io/EOFException;
    invoke-virtual {v5, v6, v7, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 71
    .end local v2    # "header":Lokio/Buffer;
    :cond_1
    return-object v3
.end method

.method public static final promisesBody(Lokhttp3/Response;)Z
    .locals 9
    .param p0, "$this$promisesBody"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "$this$promisesBody"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 221
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 224
    goto :goto_0

    .line 229
    :cond_3
    invoke-static {p0}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 230
    const-string v3, "chunked"

    const-string v4, "Transfer-Encoding"

    const/4 v5, 0x2

    invoke-static {p0, v4, v8, v5, v8}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 231
    goto :goto_0
.end method

.method private static final readChallengeHeader(Lokio/Buffer;Ljava/util/List;)V
    .locals 13
    .param p0, "$this$readChallengeHeader"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "result"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Buffer;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3d

    const/4 v8, 0x0

    .line 76
    move-object v5, v8

    check-cast v5, Ljava/lang/String;

    .line 78
    .local v5, "peek":Ljava/lang/String;
    :goto_0
    nop

    .line 80
    if-nez v5, :cond_1

    .line 81
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 82
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 83
    if-nez v5, :cond_1

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 86
    :cond_1
    move-object v7, v5

    .line 89
    .local v7, "schemeName":Ljava/lang/String;
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v0

    .line 90
    .local v0, "commaPrefixed":Z
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 91
    if-nez v5, :cond_2

    .line 92
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 93
    new-instance v8, Lokhttp3/Challenge;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_2
    int-to-byte v9, v12

    invoke-static {p0, v9}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    move-result v2

    .line 98
    .local v2, "eqCount":I
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v1

    .line 101
    .local v1, "commaSuffixed":Z
    if-nez v0, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 102
    :cond_3
    new-instance v10, Lokhttp3/Challenge;

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v9, "="

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9, v2}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    const-string v11, "Collections.singletonMap\u2026ek + \"=\".repeat(eqCount))"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {v10, v7, v9}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v8

    .line 104
    check-cast v5, Ljava/lang/String;

    .line 105
    goto :goto_0

    .line 109
    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 110
    .local v4, "parameters":Ljava/util/Map;
    int-to-byte v9, v12

    invoke-static {p0, v9}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    move-result v9

    add-int/2addr v2, v9

    .line 111
    :cond_5
    nop

    .line 112
    if-nez v5, :cond_8

    .line 113
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 131
    :cond_6
    new-instance v9, Lokhttp3/Challenge;

    invoke-direct {v9, v7, v4}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    :cond_7
    int-to-byte v9, v12

    invoke-static {p0, v9}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    move-result v2

    .line 117
    :cond_8
    if-eqz v2, :cond_6

    .line 118
    const/4 v9, 0x1

    if-gt v2, v9, :cond_0

    .line 119
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 121
    nop

    .line 122
    const/16 v9, 0x22

    int-to-byte v9, v9

    invoke-static {p0, v9}, Lokhttp3/internal/http/HttpHeaders;->startsWith(Lokio/Buffer;B)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    .line 121
    :goto_2
    if-eqz v3, :cond_0

    .line 126
    .local v3, "parameterValue":Ljava/lang/String;
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "replaced":Ljava/lang/String;
    move-object v5, v8

    .line 127
    check-cast v5, Ljava/lang/String;

    .line 128
    if-nez v6, :cond_0

    .line 129
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_1

    .line 123
    .end local v3    # "parameterValue":Ljava/lang/String;
    .end local v6    # "replaced":Ljava/lang/String;
    :cond_9
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private static final readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    .locals 12
    .param p0, "$this$readQuotedString"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x22

    .line 166
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    int-to-byte v5, v8

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    const-string v4, "Failed requirement."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 167
    :cond_1
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 168
    .local v2, "result":Lokio/Buffer;
    :goto_1
    nop

    .line 169
    sget-object v4, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 170
    .local v0, "i":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 179
    :cond_2
    :goto_2
    return-object v3

    .line 172
    :cond_3
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v4

    int-to-byte v5, v8

    if-ne v4, v5, :cond_4

    .line 173
    invoke-virtual {v2, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 175
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 176
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long v6, v0, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 180
    invoke-virtual {v2, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 182
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 183
    invoke-virtual {v2, p0, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_1
.end method

.method private static final readToken(Lokio/Buffer;)Ljava/lang/String;
    .locals 4
    .param p0, "$this$readToken"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 192
    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 193
    .local v0, "tokenSize":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 195
    :cond_0
    nop

    .line 196
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 195
    :goto_0
    return-object v2

    .line 197
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 2
    .param p0, "$this$receiveHeaders"    # Lokhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "url"    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "$this$receiveHeaders"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    sget-object v1, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v1, p1, p2}, Lokhttp3/Cookie$Companion;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "cookies":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static final skipCommasAndWhitespace(Lokio/Buffer;)Z
    .locals 4
    .param p0, "$this$skipCommasAndWhitespace"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "commaFound":Z
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 154
    :cond_0
    return v0

    .line 142
    :sswitch_0
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :sswitch_1
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x20 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private static final startsWith(Lokio/Buffer;B)Z
    .locals 2
    .param p0, "$this$startsWith"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "prefix"    # B

    .prologue
    .line 157
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
