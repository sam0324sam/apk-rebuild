.class final Lkotlin/text/CharCategory$Companion$categoryMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CharCategory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharCategory;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharCategory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion$categoryMap$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,174:1\n7132#2,2:175\n7356#2,4:177\n*E\n*S KotlinDebug\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion$categoryMap$2\n*L\n169#1,2:175\n169#1,4:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharCategory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;

    invoke-direct {v0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;-><init>()V

    sput-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lkotlin/text/CharCategory;->values()[Lkotlin/text/CharCategory;

    move-result-object v3

    .local v3, "$this$associateBy$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 175
    .local v1, "$i$f$associateBy":I
    array-length v7, v3

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 176
    .local v4, "capacity$iv":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 177
    .local v2, "$i$f$associateByTo":I
    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v6, v3, v7

    .line 178
    .local v6, "element$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 169
    .local v0, "$i$a$-associateBy-CharCategory$Companion$categoryMap$2$1":I
    invoke-virtual {v6}, Lkotlin/text/CharCategory;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "$i$a$-associateBy-CharCategory$Companion$categoryMap$2$1":I
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 169
    return-object v5
.end method
