.class public Lcn/com/magnity/magnitymx/MagApp;
.super Landroid/app/Application;
.source "MagApp.java"


# static fields
.field public static final OEM_HIDE_LOGO:Ljava/lang/String; = "hidelogo"

.field public static final OEM_MAG:Ljava/lang/String; = "mag"

.field public static final OEM_MAG_CODE:I = 0x0

.field public static final OEM_SKLD:Ljava/lang/String; = "skld"

.field public static final OEM_SKLD_CODE:I = 0x19

.field public static final OEM_ZHONGXING:Ljava/lang/String; = "zhongxing"

.field public static final OEM_ZHONGXING_CODE:I = 0xa

.field private static mAppInstance:Lcn/com/magnity/magnitymx/MagApp;

.field public static mIsForceLandscape:Z

.field public static mIsInDeveloping:Z

.field public static mIsRoiNameEditable:Z

.field private static mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private static mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    .line 36
    sput-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsRoiNameEditable:Z

    .line 37
    sput-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsForceLandscape:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcn/com/magnity/magnitymx/MagApp;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcn/com/magnity/magnitymx/MagApp;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->close()V

    .line 136
    :cond_0
    return-void
.end method

.method public static getInstance()Lcn/com/magnity/magnitymx/MagApp;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcn/com/magnity/magnitymx/MagApp;->mAppInstance:Lcn/com/magnity/magnitymx/MagApp;

    return-object v0
.end method

.method public static getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcn/com/magnity/magnitymx/MagApp;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    return-object v0
.end method

.method public static getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcn/com/magnity/magnitymx/MagApp;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    return-object v0
.end method

.method private initLog(Z)V
    .locals 5
    .param p1, "isInDeveloping"    # Z

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Ljava/io/File;

    const-string v3, "magnity/mx/log"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v2, "fileName":Ljava/lang/StringBuilder;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->init(Ljava/lang/String;I)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->init(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static isAppInDebugMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 125
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 129
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "filterLevel":I
    const-string v2, "mag"

    const-string v3, "zhongxing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const/16 v1, 0xa

    .line 64
    :cond_0
    :goto_0
    invoke-static {v1}, Lcn/com/magnity/sdk/MagDevice;->setFilter(I)V

    .line 65
    invoke-static {v1}, Lcn/com/magnity/coresdk/MagDevice;->setFilter(I)V

    .line 67
    invoke-static {}, Lcn/com/magnity/magnitymx/CrashHandler;->getInstance()Lcn/com/magnity/magnitymx/CrashHandler;

    move-result-object v0

    .line 68
    .local v0, "crashHandler":Lcn/com/magnity/magnitymx/CrashHandler;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/CrashHandler;->init(Landroid/content/Context;)V

    .line 71
    sput-object p0, Lcn/com/magnity/magnitymx/MagApp;->mAppInstance:Lcn/com/magnity/magnitymx/MagApp;

    .line 72
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 74
    new-instance v2, Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;-><init>()V

    sput-object v2, Lcn/com/magnity/magnitymx/MagApp;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 76
    new-instance v2, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "magnity_mx_files.db"

    invoke-direct {v2, v3, v4}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcn/com/magnity/magnitymx/MagApp;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .line 79
    sget-boolean v2, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/MagApp;->initLog(Z)V

    .line 80
    invoke-static {p0}, Lcn/com/magnity/coresdk/MagDevice;->init(Landroid/content/Context;)Z

    .line 82
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/MagApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/com/magnity/magnitymx/service/UDPService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/MagApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void

    .line 61
    .end local v0    # "crashHandler":Lcn/com/magnity/magnitymx/CrashHandler;
    :cond_1
    const-string v2, "mag"

    const-string v3, "skld"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/16 v1, 0x19

    goto :goto_0
.end method
