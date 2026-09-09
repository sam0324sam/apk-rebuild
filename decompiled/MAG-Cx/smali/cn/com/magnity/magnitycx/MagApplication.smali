.class public Lcn/com/magnity/magnitycx/MagApplication;
.super Landroid/app/Application;
.source "MagApplication.java"


# static fields
.field public static globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

.field private static handlerProhibited_:Z

.field private static instance_:Lcn/com/magnity/magnitycx/MagApplication;

.field public static isShowFps:Z

.field public static magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

.field public static windowManager:Landroid/view/WindowManager;


# instance fields
.field private counter_:I

.field private handler_:Landroid/os/Handler;

.field private runnable_:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcn/com/magnity/magnitycx/MagApplication;->handlerProhibited_:Z

    .line 26
    sput-boolean v0, Lcn/com/magnity/magnitycx/MagApplication;->isShowFps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->handler_:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcn/com/magnity/magnitycx/MagApplication$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/MagApplication$1;-><init>(Lcn/com/magnity/magnitycx/MagApplication;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->runnable_:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitycx/MagApplication;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 19
    iget v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->counter_:I

    return v0
.end method

.method static synthetic access$008(Lcn/com/magnity/magnitycx/MagApplication;)I
    .locals 2
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 19
    iget v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->counter_:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/com/magnity/magnitycx/MagApplication;->counter_:I

    return v0
.end method

.method static synthetic access$010(Lcn/com/magnity/magnitycx/MagApplication;)I
    .locals 2
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 19
    iget v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->counter_:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/com/magnity/magnitycx/MagApplication;->counter_:I

    return v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/MagApplication;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->runnable_:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/MagApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcn/com/magnity/magnitycx/MagApplication;->handlerProhibited_:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcn/com/magnity/magnitycx/MagApplication;->handlerProhibited_:Z

    return p0
.end method

.method public static getInstance()Lcn/com/magnity/magnitycx/MagApplication;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->instance_:Lcn/com/magnity/magnitycx/MagApplication;

    return-object v0
.end method

.method public static setUsbDeinitAllowed(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 29
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/MagApplication;->handlerProhibited_:Z

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    sput-object p0, Lcn/com/magnity/magnitycx/MagApplication;->instance_:Lcn/com/magnity/magnitycx/MagApplication;

    :try_start_strict
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_strict
    .catch Ljava/lang/Throwable; {:try_start_strict .. :try_end_strict} :catch_strict

    :catch_strict
    .line 50
    new-instance v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitycx/sdk/MagParameter;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    .line 52
    new-instance v3, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-direct {v3}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;-><init>()V

    sput-object v3, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    .line 54
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/MagApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    sput-object v3, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    .line 56
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v2, "metric":Landroid/util/DisplayMetrics;
    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    .line 76
    :goto_1
    new-instance v3, Lcn/com/magnity/magnitycx/MagApplication$2;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitycx/MagApplication$2;-><init>(Lcn/com/magnity/magnitycx/MagApplication;)V

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/MagApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 117
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 61
    .local v0, "c":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "c":I
    .end local v1    # "ex":Ljava/lang/Exception;
    :pswitch_0
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenWidth:I

    .line 68
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenHeight:I

    goto :goto_1

    .line 71
    :pswitch_1
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenWidth:I

    .line 72
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenHeight:I

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
