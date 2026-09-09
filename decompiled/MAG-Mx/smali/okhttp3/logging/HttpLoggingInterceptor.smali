.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Level;,
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpLoggingInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpLoggingInterceptor.kt\nokhttp3/logging/HttpLoggingInterceptor\n*L\n1#1,289:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\r\u0010\u000b\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0007J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\n\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u0091F0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "Lokhttp3/Interceptor;",
        "logger",
        "Lokhttp3/logging/HttpLoggingInterceptor$Logger;",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V",
        "headersToRedact",
        "",
        "",
        "<set-?>",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "level",
        "getLevel",
        "()Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V",
        "bodyHasUnknownEncoding",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "-deprecated_level",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "logHeader",
        "",
        "i",
        "",
        "redactHeader",
        "name",
        "setLevel",
        "Level",
        "Logger",
        "okhttp-logging-interceptor"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private volatile headersToRedact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .locals 1
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 44
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 47
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 41
    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method private final bodyHasUnknownEncoding(Lokhttp3/Headers;)Z
    .locals 4
    .param p1, "headers"    # Lokhttp3/Headers;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    const-string v3, "Content-Encoding"

    invoke-virtual {p1, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    .local v0, "contentEncoding":Ljava/lang/String;
    const-string v3, "identity"

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    const-string v3, "gzip"

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "contentEncoding":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 284
    goto :goto_0

    .restart local v0    # "contentEncoding":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 286
    goto :goto_0
.end method

.method private final logHeader(Lokhttp3/Headers;I)V
    .locals 4
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "i"    # I

    .prologue
    .line 279
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u2588\u2588"

    .line 280
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 281
    return-void

    .line 279
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final -deprecated_level()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "level"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_level"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public final getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 39
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v29, "chain"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v20, v0

    .line 148
    .local v20, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v23

    .line 149
    .local v23, "request":Lokhttp3/Request;
    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v26

    .line 271
    :cond_0
    :goto_0
    return-object v26

    .line 153
    :cond_1
    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/16 v21, 0x1

    .line 154
    .local v21, "logBody":Z
    :goto_1
    if-nez v21, :cond_2

    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_8

    :cond_2
    const/16 v22, 0x1

    .line 156
    .local v22, "logHeaders":Z
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v24

    .line 158
    .local v24, "requestBody":Lokhttp3/RequestBody;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v10

    .line 159
    .local v10, "connection":Lokhttp3/Connection;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "--> "

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v34, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v10, :cond_9

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " "

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v10}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_3
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 161
    .local v25, "requestStartMessage":Ljava/lang/String;
    if-nez v22, :cond_3

    if-eqz v24, :cond_3

    .line 162
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v34, " ("

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v34, "-byte body)"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 166
    if-eqz v22, :cond_c

    .line 167
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v17

    .line 169
    .local v17, "headers":Lokhttp3/Headers;
    if-eqz v24, :cond_6

    .line 172
    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v19

    if-eqz v19, :cond_5

    .local v19, "it":Lokhttp3/MediaType;
    const/4 v4, 0x0

    .line 173
    .local v4, "$i$a$-let-HttpLoggingInterceptor$intercept$1":I
    const-string v29, "Content-Type"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_4

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Content-Type: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 176
    :cond_4
    nop

    .line 177
    .end local v4    # "$i$a$-let-HttpLoggingInterceptor$intercept$1":I
    .end local v19    # "it":Lokhttp3/MediaType;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v34

    const-wide/16 v36, -0x1

    cmp-long v29, v34, v36

    if-eqz v29, :cond_6

    .line 178
    const-string v29, "Content-Length"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Content-Length: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 184
    :cond_6
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Headers;->size()I

    move-result v29

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 184
    add-int/lit8 v18, v18, 0x1

    .local v18, "i":I
    goto :goto_4

    .line 153
    .end local v10    # "connection":Lokhttp3/Connection;
    .end local v17    # "headers":Lokhttp3/Headers;
    .end local v18    # "i":I
    .end local v21    # "logBody":Z
    .end local v22    # "logHeaders":Z
    .end local v24    # "requestBody":Lokhttp3/RequestBody;
    .end local v25    # "requestStartMessage":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 154
    .restart local v21    # "logBody":Z
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 159
    .restart local v10    # "connection":Lokhttp3/Connection;
    .restart local v22    # "logHeaders":Z
    .restart local v24    # "requestBody":Lokhttp3/RequestBody;
    :cond_9
    const-string v29, ""

    goto/16 :goto_3

    .line 188
    .restart local v17    # "headers":Lokhttp3/Headers;
    .restart local v25    # "requestStartMessage":Ljava/lang/String;
    :cond_a
    if-eqz v21, :cond_b

    if-nez v24, :cond_e

    .line 189
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "--> END "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 208
    .end local v17    # "headers":Lokhttp3/Headers;
    :cond_c
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 213
    .local v30, "startNs":J
    const/16 v26, 0x0

    .line 214
    .local v26, "response":Lokhttp3/Response;
    nop

    .line 215
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 219
    sget-object v29, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v34

    sub-long v34, v34, v30

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v32

    .line 223
    .local v32, "tookMs":J
    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v27

    if-nez v27, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 224
    .local v27, "responseBody":Lokhttp3/ResponseBody;
    :cond_d
    invoke-virtual/range {v27 .. v27}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    .line 225
    .local v12, "contentLength":J
    const-wide/16 v34, -0x1

    cmp-long v29, v12, v34

    if-eqz v29, :cond_13

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v34, "-byte"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "bodySize":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v35, v0

    .line 227
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "<-- "

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->code()I

    move-result v34

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v29

    if-nez v29, :cond_14

    const/16 v29, 0x1

    :goto_7
    if-eqz v29, :cond_15

    const-string v29, ""

    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v34, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v34, " ("

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v34, "ms"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-nez v22, :cond_16

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v36, " body"

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_9
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v34, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 226
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 229
    if-eqz v22, :cond_0

    .line 230
    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v17

    .line 231
    .restart local v17    # "headers":Lokhttp3/Headers;
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Headers;->size()I

    move-result v29

    :goto_a
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_17

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 231
    add-int/lit8 v18, v18, 0x1

    .restart local v18    # "i":I
    goto :goto_a

    .line 190
    .end local v6    # "bodySize":Ljava/lang/String;
    .end local v12    # "contentLength":J
    .end local v18    # "i":I
    .end local v26    # "response":Lokhttp3/Response;
    .end local v27    # "responseBody":Lokhttp3/ResponseBody;
    .end local v30    # "startNs":J
    .end local v32    # "tookMs":J
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "--> END "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " (encoded body omitted)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 192
    :cond_f
    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v29

    if-eqz v29, :cond_10

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "--> END "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " (duplex request body omitted)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 195
    :cond_10
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .local v7, "buffer":Lokio/Buffer;
    move-object/from16 v29, v7

    .line 196
    check-cast v29, Lokio/BufferedSink;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 198
    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    .line 199
    .local v11, "contentType":Lokhttp3/MediaType;
    if-eqz v11, :cond_11

    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 201
    .local v9, "charset":Ljava/nio/charset/Charset;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v34, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 202
    invoke-static {v7}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    invoke-virtual {v7, v9}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "--> END "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte body)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 199
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    :cond_11
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v29, "UTF_8"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    .line 206
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    .line 207
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "--> END "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " (binary "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v24 .. v24}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte body omitted)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 206
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 216
    .end local v7    # "buffer":Lokio/Buffer;
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v11    # "contentType":Lokhttp3/MediaType;
    .end local v17    # "headers":Lokhttp3/Headers;
    .restart local v26    # "response":Lokhttp3/Response;
    .restart local v30    # "startNs":J
    :catch_0
    move-exception v14

    .line 217
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "<-- HTTP FAILED: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 218
    check-cast v14, Ljava/lang/Throwable;

    .end local v14    # "e":Ljava/lang/Exception;
    throw v14

    .line 225
    .restart local v12    # "contentLength":J
    .restart local v27    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v32    # "tookMs":J
    :cond_13
    const-string v6, "unknown-length"

    goto/16 :goto_6

    .line 227
    .restart local v6    # "bodySize":Ljava/lang/String;
    :cond_14
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_15
    const/16 v29, 0x20

    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_8

    :cond_16
    const-string v29, ""

    goto/16 :goto_9

    .line 235
    .restart local v17    # "headers":Lokhttp3/Headers;
    :cond_17
    if-eqz v21, :cond_18

    invoke-static/range {v26 .. v26}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v29

    if-nez v29, :cond_19

    .line 236
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v34, "<-- END HTTP"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_19
    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v34, "<-- END HTTP (encoded body omitted)"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :cond_1a
    invoke-virtual/range {v27 .. v27}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v28

    .line 241
    .local v28, "source":Lokio/BufferedSource;
    const-wide v34, 0x7fffffffffffffffL

    move-object/from16 v0, v28

    move-wide/from16 v1, v34

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 242
    invoke-interface/range {v28 .. v28}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v7

    .line 244
    .restart local v7    # "buffer":Lokio/Buffer;
    const/4 v15, 0x0

    check-cast v15, Ljava/lang/Long;

    .line 245
    .local v15, "gzippedLength":Ljava/lang/Long;
    const-string v29, "gzip"

    const-string v34, "Content-Encoding"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 246
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 247
    new-instance v34, Lokio/GzipSource;

    invoke-virtual {v7}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v29

    check-cast v29, Lokio/Source;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    move-object/from16 v29, v34

    check-cast v29, Ljava/io/Closeable;

    const/16 v34, 0x0

    check-cast v34, Ljava/lang/Throwable;

    nop

    :try_start_1
    move-object/from16 v0, v29

    check-cast v0, Lokio/GzipSource;

    move-object/from16 v16, v0

    .local v16, "gzippedResponseBody":Lokio/GzipSource;
    const/4 v5, 0x0

    .line 248
    .local v5, "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    new-instance v8, Lokio/Buffer;

    invoke-direct {v8}, Lokio/Buffer;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v7    # "buffer":Lokio/Buffer;
    .local v8, "buffer":Lokio/Buffer;
    :try_start_2
    check-cast v16, Lokio/Source;

    .end local v16    # "gzippedResponseBody":Lokio/GzipSource;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 253
    .end local v5    # "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    .end local v8    # "buffer":Lokio/Buffer;
    .restart local v7    # "buffer":Lokio/Buffer;
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    .line 254
    .restart local v11    # "contentType":Lokhttp3/MediaType;
    if-eqz v11, :cond_1c

    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 256
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    :goto_c
    invoke-static {v7}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    move-result v29

    if-nez v29, :cond_1d

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v34, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "<-- END HTTP (binary "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte body omitted)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v11    # "contentType":Lokhttp3/MediaType;
    :catch_1
    move-exception v34

    :goto_d
    :try_start_3
    throw v34
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v35

    move-object/from16 v38, v35

    move-object/from16 v35, v34

    move-object/from16 v34, v38

    :goto_e
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v34

    .line 254
    .restart local v11    # "contentType":Lokhttp3/MediaType;
    :cond_1c
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v29, "UTF_8"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    .line 262
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    :cond_1d
    const-wide/16 v34, 0x0

    cmp-long v29, v12, v34

    if-eqz v29, :cond_1e

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v34, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    invoke-virtual {v7}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 267
    :cond_1e
    if-eqz v15, :cond_1f

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "<-- END HTTP ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-gzipped-byte body)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "<-- END HTTP ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte body)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v7    # "buffer":Lokio/Buffer;
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v11    # "contentType":Lokhttp3/MediaType;
    .restart local v5    # "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    .restart local v8    # "buffer":Lokio/Buffer;
    :catchall_1
    move-exception v35

    move-object v7, v8

    .end local v8    # "buffer":Lokio/Buffer;
    .restart local v7    # "buffer":Lokio/Buffer;
    move-object/from16 v38, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v38

    goto/16 :goto_e

    .end local v7    # "buffer":Lokio/Buffer;
    .restart local v8    # "buffer":Lokio/Buffer;
    :catch_2
    move-exception v34

    move-object v7, v8

    .end local v8    # "buffer":Lokio/Buffer;
    .restart local v7    # "buffer":Lokio/Buffer;
    goto/16 :goto_d
.end method

.method public final level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "level"
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public final redactHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Lkotlin/text/StringsKt;->getCASE_INSENSITIVE_ORDER(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .local v0, "newHeadersToRedact":Ljava/util/TreeSet;
    move-object v1, v0

    .line 124
    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object v1, v0

    .line 125
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    check-cast v0, Ljava/util/Set;

    .end local v0    # "newHeadersToRedact":Ljava/util/TreeSet;
    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 127
    return-void
.end method

.method public final setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 3
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Moved to var. Replace setLevel(...) with level(...) to fix Java"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "apply { this.level = level }"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "level"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 133
    check-cast v1, Lokhttp3/logging/HttpLoggingInterceptor;

    .local v1, "$this$apply":Lokhttp3/logging/HttpLoggingInterceptor;
    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-apply-HttpLoggingInterceptor$setLevel$1":I
    iput-object p1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 135
    nop

    .line 133
    check-cast p0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 135
    .end local p0    # "this":Lokhttp3/logging/HttpLoggingInterceptor;
    return-object p0
.end method
