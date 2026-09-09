.class Lcom/baidu/mobstat/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ldalvik/system/DexClassLoader;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/ax;->b:Z

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 64
    const-class v1, Lcom/baidu/mobstat/ax;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/baidu/mobstat/ax;->a:Ldalvik/system/DexClassLoader;

    if-eqz v2, :cond_1

    .line 65
    sget-object v0, Lcom/baidu/mobstat/ax;->a:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 68
    :cond_1
    :try_start_1
    const-string v2, ".remote.jar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/baidu/mobstat/ax;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 74
    const-string v3, "remote jar version lower than min limit, need delete"

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/baidu/mobstat/ax;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 83
    const-string v3, "remote jar md5 is not right, need delete"

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 91
    :cond_4
    const-string v0, "outdex"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 93
    :try_start_3
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v2, v0, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/baidu/mobstat/ax;->a:Ldalvik/system/DexClassLoader;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :goto_1
    :try_start_4
    sget-object v0, Lcom/baidu/mobstat/ax;->a:Ldalvik/system/DexClassLoader;

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/baidu/mobstat/ax;->a:Ldalvik/system/DexClassLoader;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/baidu/mobstat/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/baidu/mobstat/l;)V
    .locals 2

    .prologue
    .line 125
    const-class v1, Lcom/baidu/mobstat/ax;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/ax;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    monitor-exit v1

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/cz;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string v0, "isWifiAvailable = false, will not to update"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 134
    :cond_1
    :try_start_2
    invoke-interface {p1, p0}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    const-string v0, "check time, will not to update"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    const-string v0, "can start update config"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/baidu/mobstat/ay;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/ay;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/l;)V

    .line 142
    invoke-virtual {v0}, Lcom/baidu/mobstat/ay;->start()V

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/ax;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/baidu/mobstat/ax;->b:Z

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 193
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/String;)V

    .line 198
    :cond_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 201
    const-string v1, "Plugin-Version"

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 206
    if-eqz v2, :cond_1

    .line 208
    :try_start_2
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    :cond_1
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu remote sdk is not ready"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    if-eqz v1, :cond_2

    .line 208
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 215
    :cond_2
    :goto_2
    const-string v0, ""

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 208
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 211
    :cond_3
    :goto_4
    throw v0

    .line 209
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 206
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 202
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {p1}, Lcom/baidu/mobstat/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    move v1, v0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/mobstat/cu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote.jar local file digest value digest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const-string v1, "remote.jar local file digest value fail"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remote.jar local file digest value version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-static {p0, v2}, Lcom/baidu/mobstat/ax;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remote.jar config digest value remoteJarMd5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    const-string v1, "remote.jar config digest value lost"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/az;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
