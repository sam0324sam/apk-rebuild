.class final Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/internal/PlatformImplementations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectAddSuppressedMethod"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformImplementations.kt\nkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod\n*L\n1#1,102:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;",
        "",
        "()V",
        "method",
        "Ljava/lang/reflect/Method;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;

.field public static final method:Ljava/lang/reflect/Method;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 15
    new-instance v4, Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;

    invoke-direct {v4}, Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;-><init>()V

    sput-object v4, Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;->INSTANCE:Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;

    .line 17
    const-class v3, Ljava/lang/Throwable;

    .local v3, "throwableClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 18
    .local v1, "$i$a$-let-PlatformImplementations$ReflectAddSuppressedMethod$method$1":I
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v4, "throwableClass.methods"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v2, v7, v6

    .local v2, "it":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-find-PlatformImplementations$ReflectAddSuppressedMethod$method$1$1":I
    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "addSuppressed"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const-string v9, "it.parameterTypes"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 18
    :goto_1
    if-eqz v4, :cond_1

    .line 20
    .end local v0    # "$i$a$-find-PlatformImplementations$ReflectAddSuppressedMethod$method$1$1":I
    .end local v2    # "it":Ljava/lang/reflect/Method;
    :goto_2
    nop

    .line 17
    sput-object v2, Lkotlin/internal/PlatformImplementations$ReflectAddSuppressedMethod;->method:Ljava/lang/reflect/Method;

    return-void

    .restart local v0    # "$i$a$-find-PlatformImplementations$ReflectAddSuppressedMethod$method$1$1":I
    .restart local v2    # "it":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v5

    .line 19
    goto :goto_1

    .line 18
    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .end local v0    # "$i$a$-find-PlatformImplementations$ReflectAddSuppressedMethod$method$1$1":I
    .end local v2    # "it":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
