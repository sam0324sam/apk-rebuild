.class final Lkotlin/collections/RingBuffer;
.super Lkotlin/collections/AbstractList;
.source "SlidingWindow.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,191:1\n189#1:192\n189#1:193\n189#1:194\n*E\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n100#1:192\n160#1:193\n173#1:194\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0096\u0002J\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0006J\u0015\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014\u00a2\u0006\u0002\u0010 J\'\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\tH\u0014\u00a2\u0006\u0002\u0010\"J\u0015\u0010#\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0082\u0008R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lkotlin/collections/RingBuffer;",
        "T",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "getCapacity",
        "()I",
        "<set-?>",
        "size",
        "getSize",
        "startIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "isFull",
        "",
        "iterator",
        "",
        "removeFirst",
        "n",
        "toArray",
        "()[Ljava/lang/Object;",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "forward",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private size:I

.field private startIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput p1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    .line 88
    iget v1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-RingBuffer$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ring buffer capacity should not be negative but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-require-RingBuffer$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_1
    nop

    .line 91
    iget v1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$forward(Lkotlin/collections/RingBuffer;II)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .param p1, "$this$access_u24forward"    # I
    .param p2, "n"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lkotlin/collections/RingBuffer;->forward(II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;

    .prologue
    .line 86
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSize$p(Lkotlin/collections/RingBuffer;)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;

    .prologue
    .line 86
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;

    .prologue
    .line 86
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    return v0
.end method

.method public static final synthetic access$setSize$p(Lkotlin/collections/RingBuffer;I)V
    .locals 0
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .param p1, "<set-?>"    # I

    .prologue
    .line 86
    iput p1, p0, Lkotlin/collections/RingBuffer;->size:I

    return-void
.end method

.method public static final synthetic access$setStartIndex$p(Lkotlin/collections/RingBuffer;I)V
    .locals 0
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .param p1, "<set-?>"    # I

    .prologue
    .line 86
    iput p1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    return-void
.end method

.method private final forward(II)I
    .locals 3
    .param p1, "$this$forward"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    .local v0, "$i$f$forward":I
    add-int v1, p1, p2

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v2

    rem-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ring buffer is full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 160
    :cond_0
    iget-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v3

    const/4 v0, 0x0

    .line 193
    .local v0, "$i$f$forward":I
    add-int/2addr v2, v3

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v3

    rem-int/2addr v2, v3

    aput-object p1, v1, v2

    .line 161
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlin/collections/RingBuffer;->size:I

    .line 162
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v1, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 99
    iget-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$f$forward":I
    add-int/2addr v2, p1

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    return-object v1
.end method

.method public final getCapacity()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lkotlin/collections/RingBuffer;->size:I

    return v0
.end method

.method public final isFull()Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    iget v1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lkotlin/collections/RingBuffer$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/collections/RingBuffer$iterator$1;-><init>(Lkotlin/collections/RingBuffer;)V

    check-cast v0, Ljava/util/Iterator;

    .line 119
    return-object v0
.end method

.method public final removeFirst(I)V
    .locals 10
    .param p1, "n"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 168
    if-ltz p1, :cond_0

    move v8, v6

    :goto_0
    if-nez v8, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-RingBuffer$removeFirst$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "n shouldn\'t be negative but it is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v0    # "$i$a$-require-RingBuffer$removeFirst$1":I
    :cond_0
    move v8, v7

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    if-gt p1, v8, :cond_2

    :goto_1
    if-nez v6, :cond_3

    const/4 v1, 0x0

    .local v1, "$i$a$-require-RingBuffer$removeFirst$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "n shouldn\'t be greater than the buffer size: n = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v1    # "$i$a$-require-RingBuffer$removeFirst$2":I
    :cond_2
    move v6, v7

    goto :goto_1

    .line 171
    :cond_3
    if-lez p1, :cond_4

    .line 172
    iget v4, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 173
    .local v4, "start":I
    move-object v5, p0

    .local v5, "this_$iv":Lkotlin/collections/RingBuffer;
    const/4 v2, 0x0

    .line 194
    .local v2, "$i$f$forward":I
    add-int v6, v4, p1

    invoke-virtual {v5}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v8

    rem-int v3, v6, v8

    .line 175
    .local v3, "end":I
    if-le v4, v3, :cond_5

    .line 176
    iget-object v6, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-static {v6, v9, v4, v8}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 177
    iget-object v6, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    invoke-static {v6, v9, v7, v3}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 180
    :goto_2
    iput v3, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 183
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v6

    sub-int/2addr v6, p1

    iput v6, p0, Lkotlin/collections/RingBuffer;->size:I

    .line 185
    .end local v2    # "$i$f$forward":I
    .end local v3    # "end":I
    .end local v4    # "start":I
    .end local v5    # "this_$iv":Lkotlin/collections/RingBuffer;
    :cond_4
    return-void

    .line 179
    .restart local v2    # "$i$f$forward":I
    .restart local v3    # "end":I
    .restart local v4    # "start":I
    .restart local v5    # "this_$iv":Lkotlin/collections/RingBuffer;
    :cond_5
    iget-object v6, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    invoke-static {v6, v9, v4, v3}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "array"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v4, "array"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    array-length v4, p1

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v4

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .local v1, "result":[Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    .line 128
    .local v2, "size":I
    const/4 v3, 0x0

    .line 129
    .local v3, "widx":I
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 131
    .local v0, "idx":I
    :goto_1
    if-ge v3, v2, :cond_1

    iget v4, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ge v0, v4, :cond_1

    .line 132
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v1, v3

    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 131
    goto :goto_1

    .end local v0    # "idx":I
    .end local v1    # "result":[Ljava/lang/Object;
    .end local v2    # "size":I
    .end local v3    # "widx":I
    :cond_0
    move-object v1, p1

    .line 124
    goto :goto_0

    .line 137
    .restart local v0    # "idx":I
    .restart local v1    # "result":[Ljava/lang/Object;
    .restart local v2    # "size":I
    .restart local v3    # "widx":I
    :cond_1
    const/4 v0, 0x0

    .line 138
    :goto_2
    if-ge v3, v2, :cond_2

    .line 139
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v1, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_2

    .line 143
    :cond_2
    array-length v4, v1

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v4

    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 145
    :cond_3
    if-nez v1, :cond_4

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    return-object v1
.end method
