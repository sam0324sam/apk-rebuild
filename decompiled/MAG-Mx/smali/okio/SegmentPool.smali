.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n*L\n1#1,63:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0007J\u0008\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lokio/SegmentPool;",
        "",
        "()V",
        "MAX_SIZE",
        "",
        "byteCount",
        "next",
        "Lokio/Segment;",
        "recycle",
        "",
        "segment",
        "take",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokio/SegmentPool;

.field public static final MAX_SIZE:J = 0x10000L

.field public static byteCount:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static next:Lokio/Segment;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recycle(Lokio/Segment;)V
    .locals 7
    .param p0, "segment"    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .prologue
    const/16 v6, 0x2000

    const/4 v0, 0x0

    const-string v1, "segment"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "Failed requirement."

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 51
    :cond_1
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_2

    .line 61
    :goto_0
    return-void

    .line 53
    :cond_2
    sget-object v1, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    monitor-enter v1

    nop

    .line 54
    :try_start_0
    sget-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v6

    add-long/2addr v2, v4

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 55
    :cond_3
    :try_start_1
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 56
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->limit:I

    .line 58
    iget v0, p0, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Segment;->pos:I

    .line 59
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 60
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final take()Lokio/Segment;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    sget-object v2, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    monitor-enter v2

    nop

    .line 38
    :try_start_0
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 39
    .local v0, "result":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    sput-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 40
    const/4 v1, 0x0

    check-cast v1, Lokio/Segment;

    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 41
    sget-wide v4, Lokio/SegmentPool;->byteCount:J

    const/16 v1, 0x2000

    int-to-long v6, v1

    sub-long/2addr v4, v6

    sput-wide v4, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v2

    .line 45
    .end local v0    # "result":Lokio/Segment;
    :goto_0
    return-object v0

    .line 43
    :cond_0
    nop

    .line 37
    monitor-exit v2

    .line 45
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    goto :goto_0

    .line 37
    .restart local v0    # "result":Lokio/Segment;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
