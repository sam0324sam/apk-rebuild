.class final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "Okio.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Okio.kt\nokio/InputStreamSource\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,215:1\n72#2:216\n*E\n*S KotlinDebug\n*F\n+ 1 Okio.kt\nokio/InputStreamSource\n*L\n101#1:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokio/InputStreamSource;",
        "Lokio/Source;",
        "input",
        "Ljava/io/InputStream;",
        "timeout",
        "Lokio/Timeout;",
        "(Ljava/io/InputStream;Lokio/Timeout;)V",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "toString",
        "",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "timeout"    # Lokio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-string v8, "sink"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    cmp-long v8, p2, v6

    if-nez v8, :cond_0

    .line 106
    :goto_0
    return-wide v6

    .line 97
    :cond_0
    cmp-long v6, p2, v6

    if-ltz v6, :cond_1

    :goto_1
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 98
    :cond_2
    nop

    .line 99
    :try_start_0
    iget-object v5, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    invoke-virtual {v5}, Lokio/Timeout;->throwIfReached()V

    .line 100
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v4

    .line 101
    .local v4, "tail":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    rsub-int v0, v5, 0x2000

    .line 216
    .local v0, "b$iv":I
    int-to-long v6, v0

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    nop

    .line 101
    long-to-int v3, v6

    .line 102
    .local v3, "maxToCopy":I
    iget-object v5, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    iget-object v6, v4, Lokio/Segment;->data:[B

    iget v7, v4, Lokio/Segment;->limit:I

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 103
    .local v1, "bytesRead":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    const-wide/16 v6, -0x1

    goto :goto_0

    .line 104
    :cond_3
    iget v5, v4, Lokio/Segment;->limit:I

    add-int/2addr v5, v1

    iput v5, v4, Lokio/Segment;->limit:I

    .line 105
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Lokio/Buffer;->setSize$jvm(J)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    int-to-long v6, v1

    goto :goto_0

    .line 107
    .end local v0    # "b$iv":I
    .end local v1    # "bytesRead":I
    .end local v3    # "maxToCopy":I
    .end local v4    # "tail":Lokio/Segment;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/AssertionError;
    invoke-static {v2}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/IOException;

    check-cast v2, Ljava/lang/Throwable;

    .end local v2    # "e":Ljava/lang/AssertionError;
    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 109
    .restart local v2    # "e":Ljava/lang/AssertionError;
    :cond_4
    check-cast v2, Ljava/lang/Throwable;

    .end local v2    # "e":Ljava/lang/AssertionError;
    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
