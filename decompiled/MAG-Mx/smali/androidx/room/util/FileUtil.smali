.class public Landroidx/room/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V
    .locals 10
    .param p0, "input"    # Ljava/nio/channels/ReadableByteChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "output"    # Ljava/nio/channels/FileChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 52
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 67
    return-void

    .line 54
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v7

    .line 55
    .local v7, "inputStream":Ljava/io/InputStream;
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v9

    .line 57
    .local v9, "outputStream":Ljava/io/OutputStream;
    const/16 v0, 0x1000

    new-array v6, v0, [B

    .line 58
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "length":I
    if-lez v8, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v6    # "buffer":[B
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 66
    throw v0
.end method
