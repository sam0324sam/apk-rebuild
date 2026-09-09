.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentTaskManager.java"


# static fields
.field private static final ARGS_GOTONEXT_ENABLED:Ljava/lang/String; = "ARGS_GOTONEXT_ENABLED"

.field private static final ARGS_ID:Ljava/lang/String; = "id"

.field private static final ARGS_NAME:Ljava/lang/String; = "ARGS_NAME"

.field private static final ARGS_TASK_ENABLED:Ljava/lang/String; = "ARGS_TASK_ENABLED"

.field private static final KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TaskManager"

.field public static final TASK_CHANGED:Ljava/lang/String; = "task_changed"

.field public static final TASK_DELETE:Ljava/lang/String; = "task_delete"

.field public static final TASK_DELETE_INT:I = 0x2

.field public static final TASK_ENABLE_SWITCH:Ljava/lang/String; = "task_enable"

.field public static final TASK_GOTONEXT_SWITCH:Ljava/lang/String; = "task_gotonext"

.field public static final TASK_RESET:Ljava/lang/String; = "task_reset"

.field public static final TASK_RESET_INT:I = 0x1


# instance fields
.field downloadTaskNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

.field private mCheckedTaskName:Ljava/lang/String;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mFiles:[Ljava/io/File;

.field private mId:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTaskDownload:Landroid/widget/ImageView;

.field private mTaskGotoNextSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

.field private mTaskSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

.field private mTasksListView:Landroid/widget/ListView;

.field private mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 109
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 379
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTaskNames:Ljava/util/List;

    .line 110
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v12

    invoke-static {v12}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 112
    .local v3, "file":Ljava/io/File;
    const-string v12, "tasksCopied"

    invoke-static {v12, v11}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_1

    .line 113
    const-string v12, "tasksCopied"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 114
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v12

    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/MagApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 116
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 117
    .local v1, "buf":[B
    const/4 v6, 0x0

    .line 118
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 119
    .local v4, "fos":Ljava/io/FileOutputStream;
    const-string v10, "tasks"

    .line 122
    .local v10, "tasks":Ljava/lang/String;
    :try_start_0
    const-string v12, "tasks"

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "taskAssets":[Ljava/lang/String;
    array-length v12, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-ge v11, v12, :cond_1

    :try_start_1
    aget-object v8, v9, v11

    .line 124
    .local v8, "s":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tasks/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 125
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 127
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    .line 128
    const/4 v13, 0x0

    invoke-virtual {v4, v1, v13, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 133
    .end local v7    # "len":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "taskAssets":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "ex1":Ljava/io/IOException;
    :goto_2
    if-eqz v6, :cond_0

    .line 136
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    .line 142
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 149
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buf":[B
    .end local v2    # "ex1":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v10    # "tasks":Ljava/lang/String;
    :cond_1
    :goto_4
    if-nez v3, :cond_3

    .line 150
    const-string v11, "Fail to get task"

    invoke-static {v11}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 168
    :goto_5
    return-void

    .line 130
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buf":[B
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len":I
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "taskAssets":[Ljava/lang/String;
    .restart local v10    # "tasks":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 123
    add-int/lit8 v11, v11, 0x1

    move-object v5, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 152
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buf":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "taskAssets":[Ljava/lang/String;
    .end local v10    # "tasks":Ljava/lang/String;
    :cond_3
    new-instance v11, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$1;

    invoke-direct {v11, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v3, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v11

    iput-object v11, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mFiles:[Ljava/io/File;

    goto :goto_5

    .line 137
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buf":[B
    .restart local v2    # "ex1":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v10    # "tasks":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_3

    .line 143
    :catch_2
    move-exception v11

    goto :goto_4

    .line 133
    .end local v2    # "ex1":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "taskAssets":[Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTask()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mId:I

    return v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Lcn/com/magnity/magnitymx/http/api/ApiRequest;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mCheckedTaskName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;[Ljava/io/File;)[Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .param p1, "x1"    # [Ljava/io/File;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mFiles:[Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .param p1, "x1"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;ILandroid/widget/Adapter;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/Adapter;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->updateListAdapter(ILandroid/widget/Adapter;)V

    return-void
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .param p1, "x1"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Lcn/com/magnity/magnitymx/util/ToastUtils;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->addAdapterItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->scanFiles()V

    return-void
.end method

.method private addAdapterItem(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 484
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 485
    .local v6, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mCheckedTaskName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    sget-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    aget-object v0, v0, v2

    const v1, 0x7f070061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    const v3, 0x7f0a004b

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 497
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 498
    return-void

    .line 489
    :cond_1
    sget-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    aget-object v0, v0, v2

    const v1, 0x7f0700ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 494
    :array_0
    .array-data 4
        0x7f0800d6
        0x7f0800d5
    .end array-data
.end method

.method private downloadTask()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userTaskListGetRx()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 384
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 389
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$10;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$10;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    .line 390
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$9;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$9;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    .line 407
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    .line 412
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 430
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 436
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 457
    return-void
.end method

.method public static newInstance(ILjava/lang/String;ZZ)Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .locals 3
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bEnableTask"    # Z
    .param p3, "bEnableGotoNext"    # Z

    .prologue
    .line 99
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;-><init>()V

    .line 100
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v2, "ARGS_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "ARGS_TASK_ENABLED"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v2, "ARGS_GOTONEXT_ENABLED"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v1
.end method

.method private scanFiles()V
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 462
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$12;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$12;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mFiles:[Ljava/io/File;

    goto :goto_0
.end method

.method private updateListAdapter(ILandroid/widget/Adapter;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v4, 0x1

    .line 347
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 348
    invoke-interface {p2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 349
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ne v0, p1, :cond_0

    .line 350
    sget-object v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v4

    const v3, 0x7f070061

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 352
    :cond_0
    sget-object v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v4

    const v3, 0x7f0700ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 356
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v2, p2, Landroid/widget/SimpleAdapter;

    if-eqz v2, :cond_2

    .line 357
    check-cast p2, Landroid/widget/SimpleAdapter;

    .end local p2    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 359
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 502
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 503
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v6, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 504
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v7, v7, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 505
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    .line 546
    .local v1, "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 547
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    const v2, 0x7f0a0044

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 175
    .local v15, "rootView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mFiles:[Ljava/io/File;

    if-nez v2, :cond_0

    .line 333
    :goto_0
    return-object v15

    .line 181
    :cond_0
    const v2, 0x7f08017e

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    .line 182
    const v2, 0x7f080181

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/util/SlideSwitch;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .line 183
    const v2, 0x7f08017c

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/util/SlideSwitch;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskGotoNextSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .line 184
    const v2, 0x7f08017a

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskDownload:Landroid/widget/ImageView;

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->registerForContextMenu(Landroid/view/View;)V

    .line 188
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v14

    .line 189
    .local v14, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v14}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getServerBasicURL()Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, "basicUrl":Ljava/lang/String;
    new-instance v2, Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {v2, v11}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    .line 192
    new-instance v2, Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/util/ToastUtils;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskDownload:Landroid/widget/ImageView;

    new-instance v3, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Lcn/com/magnity/magnitymx/data/LocalConfig;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 212
    .local v8, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mId:I

    .line 213
    const-string v2, "ARGS_NAME"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mCheckedTaskName:Ljava/lang/String;

    .line 214
    const-string v2, "ARGS_TASK_ENABLED"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 215
    .local v10, "bEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-virtual {v2, v10}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setState(Z)V

    .line 216
    if-eqz v10, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 222
    :goto_1
    const-string v2, "ARGS_GOTONEXT_ENABLED"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 223
    .local v9, "b":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskGotoNextSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    const-string v3, "ARGS_GOTONEXT_ENABLED"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setState(Z)V

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mFiles:[Ljava/io/File;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v12, v3, v2

    .line 227
    .local v12, "file":Ljava/io/File;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v13, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mCheckedTaskName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    sget-object v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const v6, 0x7f070061

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 219
    .end local v9    # "b":Ljava/lang/Boolean;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 232
    .restart local v9    # "b":Ljava/lang/Boolean;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    sget-object v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const v6, 0x7f0700ac

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 237
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v2, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mItems:Ljava/util/List;

    const v5, 0x7f0a004b

    sget-object v6, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->KEYS:[Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTasksListView:Landroid/widget/ListView;

    new-instance v3, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    new-instance v3, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$4;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setSlideListener(Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->mTaskGotoNextSwitch:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    new-instance v3, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setSlideListener(Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;)V

    goto/16 :goto_0

    .line 237
    nop

    :array_0
    .array-data 4
        0x7f0800d6
        0x7f0800d5
    .end array-data
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 340
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 341
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 342
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 344
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 363
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 366
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 367
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 369
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 370
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 371
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 372
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 373
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 374
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 375
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 377
    .end local v0    # "alphaValue":Landroid/util/TypedValue;
    .end local v1    # "dimAmount":Landroid/util/TypedValue;
    .end local v3    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
