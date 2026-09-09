.class Lcom/baidu/mobstat/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/bt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/bt;

    iput-object p2, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v2, Lcom/baidu/mobstat/by;

    invoke-direct {v2, p0}, Lcom/baidu/mobstat/by;-><init>(Lcom/baidu/mobstat/bx;)V

    .line 169
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 170
    if-eqz v3, :cond_0

    array-length v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 176
    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/bz;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/bz;-><init>(Lcom/baidu/mobstat/bx;)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :goto_1
    :try_start_2
    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 189
    iget-object v6, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    iget-object v7, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/bt;

    iget-object v8, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-static {v7, v8, v6}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/baidu/mobstat/co;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move v0, v1

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 203
    :catch_1
    move-exception v0

    .line 204
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 198
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x5

    if-lt v0, v5, :cond_2

    goto :goto_0
.end method
