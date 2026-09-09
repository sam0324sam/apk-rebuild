.class public final Lcom/baidu/mobstat/NativeCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    return-void
.end method


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static doNativeCrash()V
    .locals 2

    .prologue
    .line 37
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeException()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v0, "NativeCrashHandler"

    const-string v1, "Invoke method nativeException failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/NativeCrashHandler;->b:Landroid/content/Context;

    .line 53
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeInit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v0, "NativeCrashHandler"

    const-string v1, "Invoke method nativeInit failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native nativeException()V
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeProcess(Ljava/lang/String;)V
.end method

.method private static native nativeUnint()V
.end method

.method public static onCrashCallbackFromNative(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 98
    const-string v0, "NativeCrashHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    invoke-static {}, Lcom/baidu/mobstat/bh;->a()Lcom/baidu/mobstat/bh;

    move-result-object v1

    const-string v5, "NativeException"

    const/4 v6, 0x1

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/bh;->a(JLjava/lang/String;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public static process(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeProcess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v0, "NativeCrashHandler"

    const-string v1, "Invoke method nativeProcess failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static uninit()V
    .locals 2

    .prologue
    .line 67
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeUnint()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v0, "NativeCrashHandler"

    const-string v1, "Invoke method nativeUnint failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
