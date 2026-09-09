.class public final Lokhttp3/RealCall$Companion;
.super Ljava/lang/Object;
.source "RealCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/RealCall$Companion\n*L\n1#1,213:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lokhttp3/RealCall$Companion;",
        "",
        "()V",
        "newRealCall",
        "Lokhttp3/RealCall;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "originalRequest",
        "Lokhttp3/Request;",
        "forWebSocket",
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
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 200
    invoke-direct {p0}, Lokhttp3/RealCall$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    .locals 4
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "originalRequest"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "forWebSocket"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "client"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "originalRequest"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v1, Lokhttp3/RealCall;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v1, "$this$apply":Lokhttp3/RealCall;
    const/4 v0, 0x0

    .line 208
    .local v0, "$i$a$-apply-RealCall$Companion$newRealCall$1":I
    new-instance v3, Lokhttp3/internal/connection/Transmitter;

    move-object v2, v1

    check-cast v2, Lokhttp3/Call;

    invoke-direct {v3, p1, v2}, Lokhttp3/internal/connection/Transmitter;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V

    invoke-static {v1, v3}, Lokhttp3/RealCall;->access$setTransmitter$p(Lokhttp3/RealCall;Lokhttp3/internal/connection/Transmitter;)V

    .line 209
    nop

    .line 207
    return-object v1
.end method
