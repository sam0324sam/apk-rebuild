.class public Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
.super Ljava/lang/Object;
.source "CheckVersionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CHECK_ERROR:I = -0x1

.field private static final CHECK_OK:I = 0x0

.field private static final UPGRADEINFO_DESC:Ljava/lang/String; = "description"

.field private static final UPGRADEINFO_FORCE:Ljava/lang/String; = "forceUpgrade"

.field private static final UPGRADEINFO_URL:Ljava/lang/String; = "url"

.field private static final UPGRADEINFO_VERSIONCODE:Ljava/lang/String; = "versionCode"

.field private static final UPGRADEINFO_VERSIONNAME:Ljava/lang/String; = "versionName"

.field public static final UPGRADE_BEGIN:I = 0x1

.field private static final UPGRADE_ERROR:I = -0x2

.field public static final UPGRADE_FINISHED:I = 0x3

.field public static final UPGRADE_RECEIVED_SIZE:I = 0x2


# instance fields
.field private ctx_:Landroid/content/Context;

.field handler_:Landroid/os/Handler;

.field private isForceUpgrade_:Z

.field private localVersion_:I

.field private progressDialog_:Landroid/app/ProgressDialog;

.field private threadUpgrading_:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "localVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->localVersion_:I

    .line 59
    iput-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->progressDialog_:Landroid/app/ProgressDialog;

    .line 60
    iput-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->threadUpgrading_:Ljava/lang/Thread;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->lockScreen()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->isForceUpgrade_:Z

    return v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->isForceUpgrade_:Z

    return p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->showUpgradeDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->unlockScreen()V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->progressDialog_:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->progressDialog_:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->stopDownloadApk()V

    return-void
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->installApk(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getOthersStoragePath(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "magnity/Cx/others"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    move-object v0, v2

    .line 325
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private installApk(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 333
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "installIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->getOthersStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .local v2, "usedFile":Ljava/io/File;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 338
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    iget-object v3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    const-string v4, "cn.com.magnity.magnitycx.fileprovider"

    invoke-static {v3, v4, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    .end local v0    # "contentUri":Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void

    .line 342
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private lockScreen()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 201
    :cond_0
    return-void
.end method

.method private showUpgradeDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "versionName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "isForceUpgrade"    # Z

    .prologue
    .line 242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "builer":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 246
    const v2, 0x7f080029

    new-instance v3, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;

    invoke-direct {v3, p0, p3, p4, p2}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    if-nez p5, :cond_0

    .line 265
    const v2, 0x7f080026

    new-instance v3, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$3;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$3;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 282
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 283
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 284
    return-void

    .line 271
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    new-instance v2, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$4;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$4;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/upgrade/HttpHelper;->isCancelled:Z

    .line 289
    new-instance v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;

    invoke-direct {v0, p0, p1, p2}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->threadUpgrading_:Ljava/lang/Thread;

    .line 305
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->threadUpgrading_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    return-void
.end method

.method private stopDownloadApk()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 309
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitycx/upgrade/HttpHelper;->isCancelled:Z

    .line 311
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->threadUpgrading_:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 312
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->threadUpgrading_:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v4, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->threadUpgrading_:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private unlockScreen()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public parseVersionInfo(Ljava/lang/String;)Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v2

    .line 73
    :cond_1
    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    const v7, 0x7f080084

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "productType":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 79
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 85
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;

    invoke-direct {v2}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;-><init>()V

    .line 86
    .local v2, "info":Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
    const-string v6, "verName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    const-string v6, "verName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->setVersionName(Ljava/lang/String;)V

    .line 89
    :cond_2
    const-string v6, "verCode"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    const-string v6, "verCode"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->setVersionCode(I)V

    .line 92
    :cond_3
    const-string v6, "apkUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    const-string v6, "apkUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->setApkUrl(Ljava/lang/String;)V

    .line 96
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 97
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 98
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 99
    :cond_5
    const-string v6, "description-en"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    const-string v6, "description-en"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_6
    :goto_1
    const-string v6, "forceUpgrade"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    const-string v6, "forceUpgrade"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->setForceUpgrade(Z)V

    goto/16 :goto_0

    .line 103
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_7
    :try_start_1
    const-string v6, "description"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    const-string v6, "description"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->setDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 107
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 211
    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->ctx_:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "path":Ljava/lang/String;
    const/16 v6, 0x2710

    const/16 v7, 0x4e20

    :try_start_0
    invoke-static {v3, v6, v7}, Lcn/com/magnity/magnitycx/upgrade/HttpHelper;->GetRemoteVersionInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->parseVersionInfo(Ljava/lang/String;)Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;

    move-result-object v5

    .line 215
    .local v5, "upgradeInfo":Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
    if-nez v5, :cond_1

    .line 216
    const-string v6, "Parse version info fail."

    invoke-static {v6}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 217
    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "upgradeInfo":Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "upgradeInfo":Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
    :cond_1
    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->getVersionCode()I

    move-result v6

    iget v7, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->localVersion_:I

    if-le v6, v7, :cond_0

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New app version is detected("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->getVersionCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 223
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 224
    .local v2, "msg":Landroid/os/Message;
    const/4 v6, 0x0

    iput v6, v2, Landroid/os/Message;->what:I

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "forceUpgrade"

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->isForceUpgrade()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v6, "description"

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v6, "url"

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->getApkUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v6, "versionName"

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->getVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v6, "versionCode"

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->getVersionCode()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 232
    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "upgradeInfo":Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check upgrade error("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public stopDownload()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->stopDownloadApk()V

    .line 65
    return-void
.end method
