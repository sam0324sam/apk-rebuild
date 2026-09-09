.class public final Lokhttp3/internal/http2/ErrorCode$Companion;
.super Ljava/lang/Object;
.source "ErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorCode.kt\nokhttp3/internal/http2/ErrorCode$Companion\n*L\n1#1,47:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lokhttp3/internal/http2/ErrorCode$Companion;",
        "",
        "()V",
        "fromHttp2",
        "Lokhttp3/internal/http2/ErrorCode;",
        "code",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 43
    invoke-direct {p0}, Lokhttp3/internal/http2/ErrorCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;
    .locals 7
    .param p1, "code"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .local v1, "it":Lokhttp3/internal/http2/ErrorCode;
    const/4 v0, 0x0

    .local v0, "$i$a$-find-ErrorCode$Companion$fromHttp2$1":I
    invoke-virtual {v1}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    .end local v0    # "$i$a$-find-ErrorCode$Companion$fromHttp2$1":I
    .end local v1    # "it":Lokhttp3/internal/http2/ErrorCode;
    :goto_2
    return-object v1

    .restart local v0    # "$i$a$-find-ErrorCode$Companion$fromHttp2$1":I
    .restart local v1    # "it":Lokhttp3/internal/http2/ErrorCode;
    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .end local v0    # "$i$a$-find-ErrorCode$Companion$fromHttp2$1":I
    .end local v1    # "it":Lokhttp3/internal/http2/ErrorCode;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
