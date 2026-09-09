.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicSuffixDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicSuffixDatabase.kt\nokhttp3/internal/publicsuffix/PublicSuffixDatabase\n*L\n1#1,330:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "()V",
        "listRead",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "publicSuffixExceptionListBytes",
        "",
        "publicSuffixListBytes",
        "readCompleteLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "findMatchingRule",
        "",
        "",
        "domainLabels",
        "getEffectiveTldPlusOne",
        "domain",
        "readTheList",
        "",
        "readTheListUninterruptibly",
        "setListBytes",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

.field private static final EXCEPTION_MARKER:C = '!'

.field private static final PREVAILING_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    .line 230
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 231
    const-string v0, "*"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    .line 235
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method public static final synthetic access$getPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)[B
    .locals 2
    .param p0, "$this"    # Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .prologue
    .line 35
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v0, :cond_0

    const-string v1, "publicSuffixListBytes"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;[B)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .param p1, "<set-?>"    # [B

    .prologue
    .line 35
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    return-void
.end method

.method private final findMatchingRule(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p1, "domainLabels"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    :goto_0
    move-object/from16 v1, p0

    .line 95
    check-cast v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    iget-object v1, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    const/4 v8, 0x0

    .line 99
    .local v8, "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    const-string v2, "Unable to load publicsuffixes.gz resource from the classpath."

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 91
    .end local v8    # "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    :cond_0
    nop

    .line 92
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v9

    .line 94
    .local v9, "_":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 95
    .end local v9    # "_":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 103
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v10, v3, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_4

    const/4 v7, 0x0

    .local v7, "$i$a$-<init>-PublicSuffixDatabase$findMatchingRule$domainLabelsUtf8Bytes$1":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v5, "UTF_8"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_3

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v4, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v10, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .end local v7    # "$i$a$-<init>-PublicSuffixDatabase$findMatchingRule$domainLabelsUtf8Bytes$1":I
    :cond_4
    check-cast v10, [[B

    .line 107
    .local v10, "domainLabelsUtf8Bytes":[[B
    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    .line 108
    .local v11, "exactMatch":Ljava/lang/String;
    const/4 v14, 0x0

    array-length v1, v10

    :goto_3
    if-ge v14, v1, :cond_6

    .line 109
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v3, :cond_5

    const-string v4, "publicSuffixListBytes"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-static {v2, v3, v10, v14}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "rule":Ljava/lang/String;
    if-eqz v17, :cond_c

    .line 111
    move-object/from16 v11, v17

    .line 121
    .end local v17    # "rule":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    check-cast v18, Ljava/lang/String;

    .local v18, "wildcardMatch":Ljava/lang/String;
    move-object v1, v10

    .line 122
    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    move-object v1, v10

    .line 123
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[B

    .line 124
    .local v16, "labelsWithWildcard":[[B
    const/4 v15, 0x0

    move-object/from16 v1, v16

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ge v15, v1, :cond_8

    .line 125
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v2, v16, v15

    .line 126
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v3, :cond_7

    const-string v4, "publicSuffixListBytes"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v17

    .line 127
    .restart local v17    # "rule":Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 128
    move-object/from16 v18, v17

    .line 135
    .end local v16    # "labelsWithWildcard":[[B
    .end local v17    # "rule":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    .line 136
    .local v13, "exception":Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 137
    const/4 v15, 0x0

    move-object v1, v10

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ge v15, v1, :cond_a

    .line 138
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    if-nez v3, :cond_9

    const-string v4, "publicSuffixExceptionListBytes"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-static {v2, v3, v10, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v17

    .line 140
    .restart local v17    # "rule":Ljava/lang/String;
    if-eqz v17, :cond_e

    .line 141
    move-object/from16 v13, v17

    .line 147
    .end local v17    # "rule":Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_f

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v1, v13

    .line 150
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 158
    :cond_b
    :goto_6
    return-object v12

    .line 108
    .end local v13    # "exception":Ljava/lang/String;
    .end local v18    # "wildcardMatch":Ljava/lang/String;
    .restart local v17    # "rule":Ljava/lang/String;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .local v14, "i":I
    goto/16 :goto_3

    .line 124
    .end local v14    # "i":I
    .restart local v16    # "labelsWithWildcard":[[B
    .restart local v18    # "wildcardMatch":Ljava/lang/String;
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .local v15, "labelIndex":I
    goto :goto_4

    .line 137
    .end local v15    # "labelIndex":I
    .end local v16    # "labelsWithWildcard":[[B
    .restart local v13    # "exception":Ljava/lang/String;
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .restart local v15    # "labelIndex":I
    goto :goto_5

    .line 151
    .end local v15    # "labelIndex":I
    .end local v17    # "rule":Ljava/lang/String;
    :cond_f
    if-nez v11, :cond_10

    if-nez v18, :cond_10

    .line 152
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    goto :goto_6

    .line 153
    :cond_10
    if-eqz v11, :cond_11

    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 156
    .local v12, "exactRuleLabels":Ljava/util/List;
    :goto_7
    if-eqz v18, :cond_12

    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_12

    .line 158
    .local v19, "wildcardRuleLabels":Ljava/util/List;
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_b

    move-object/from16 v12, v19

    .line 161
    goto :goto_6

    .line 153
    .end local v12    # "exactRuleLabels":Ljava/util/List;
    .end local v19    # "wildcardRuleLabels":Ljava/util/List;
    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_7

    .line 156
    .restart local v12    # "exactRuleLabels":Ljava/util/List;
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v19

    goto :goto_8
.end method

.method private final readTheList()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 194
    move-object v6, v10

    check-cast v6, [B

    .local v6, "publicSuffixListBytes":[B
    move-object v5, v10

    .line 195
    check-cast v5, [B

    .line 197
    .local v5, "publicSuffixExceptionListBytes":[B
    const-class v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v12, "publicsuffixes.gz"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 200
    .local v7, "resource":Ljava/io/InputStream;
    new-instance v11, Lokio/GzipSource;

    invoke-static {v7}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v12

    invoke-direct {v11, v12}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v11, Lokio/Source;

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v11

    check-cast v11, Ljava/io/Closeable;

    check-cast v10, Ljava/lang/Throwable;

    nop

    :try_start_0
    move-object v0, v11

    check-cast v0, Lokio/BufferedSource;

    move-object v4, v0

    .local v4, "bufferedSource":Lokio/BufferedSource;
    const/4 v3, 0x0

    .line 201
    .local v3, "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v8

    .line 202
    .local v8, "totalBytes":I
    int-to-long v12, v8

    invoke-interface {v4, v12, v13}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v6

    .line 204
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v9

    .line 205
    .local v9, "totalExceptionBytes":I
    int-to-long v12, v9

    invoke-interface {v4, v12, v13}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v5

    .line 206
    nop

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-static {v11, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 208
    monitor-enter p0

    nop

    const/4 v2, 0x0

    .line 209
    .local v2, "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    if-nez v6, :cond_0

    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 210
    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 211
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    monitor-exit p0

    .line 213
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 214
    .end local v2    # "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    .end local v3    # "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    .end local v4    # "bufferedSource":Lokio/BufferedSource;
    .end local v7    # "resource":Ljava/io/InputStream;
    .end local v8    # "totalBytes":I
    .end local v9    # "totalExceptionBytes":I
    :cond_2
    return-void

    .line 200
    .restart local v7    # "resource":Ljava/io/InputStream;
    :catch_0
    move-exception v10

    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v12

    move-object v14, v12

    move-object v12, v10

    move-object v10, v14

    invoke-static {v11, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v10

    .line 208
    .restart local v2    # "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    .restart local v3    # "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    .restart local v4    # "bufferedSource":Lokio/BufferedSource;
    .restart local v8    # "totalBytes":I
    .restart local v9    # "totalExceptionBytes":I
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private final readTheListUninterruptibly()V
    .locals 6

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "interrupted":Z
    nop

    .line 173
    :goto_0
    nop

    .line 174
    nop

    .line 175
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v2, :cond_0

    .line 187
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "_":Ljava/io/InterruptedIOException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 179
    const/4 v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "_":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v3}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x5

    const-string v5, "Failed to read public suffix list"

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v3, v4, v5, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    if-eqz v2, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v3

    .line 186
    if-eqz v2, :cond_1

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v3
.end method


# virtual methods
.method public final getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "domain"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "unicodeDomain":Ljava/lang/String;
    const-string v0, "unicodeDomain"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 71
    .local v9, "domainLabels":Ljava/util/List;
    invoke-direct {p0, v9}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 72
    .local v11, "rule":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    .line 78
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int v10, v0, v1

    .local v10, "firstLabelOffset":I
    :goto_1
    move-object v0, p1

    .line 84
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, "."

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    .end local v10    # "firstLabelOffset":I
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int v10, v0, v1

    goto :goto_1
.end method

.method public final setListBytes([B[B)V
    .locals 2
    .param p1, "publicSuffixListBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "publicSuffixExceptionListBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "publicSuffixListBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicSuffixExceptionListBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 222
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 223
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 225
    return-void
.end method
