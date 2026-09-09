.class public final Lokhttp3/internal/platform/android/CloseGuard$Companion;
.super Ljava/lang/Object;
.source "CloseGuard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/android/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/platform/android/CloseGuard$Companion;",
        "",
        "()V",
        "get",
        "Lokhttp3/internal/platform/android/CloseGuard;",
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 55
    invoke-direct {p0}, Lokhttp3/internal/platform/android/CloseGuard$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lokhttp3/internal/platform/android/CloseGuard;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 59
    .local v3, "openMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 61
    .local v4, "warnIfOpenMethod":Ljava/lang/reflect/Method;
    nop

    .line 62
    :try_start_0
    const-string v6, "dalvik.system.CloseGuard"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "closeGuardClass":Ljava/lang/Class;
    const-string v6, "get"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    const-string v6, "open"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    const-string v6, "warnIfOpen"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 70
    .end local v1    # "closeGuardClass":Ljava/lang/Class;
    :goto_0
    new-instance v5, Lokhttp3/internal/platform/android/CloseGuard;

    invoke-direct {v5, v2, v3, v4}, Lokhttp3/internal/platform/android/CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v5

    .line 66
    :catch_0
    move-exception v0

    .local v0, "_":Ljava/lang/Exception;
    move-object v2, v5

    .line 67
    check-cast v2, Ljava/lang/reflect/Method;

    move-object v3, v5

    .line 68
    check-cast v3, Ljava/lang/reflect/Method;

    move-object v4, v5

    .line 69
    check-cast v4, Ljava/lang/reflect/Method;

    goto :goto_0
.end method
