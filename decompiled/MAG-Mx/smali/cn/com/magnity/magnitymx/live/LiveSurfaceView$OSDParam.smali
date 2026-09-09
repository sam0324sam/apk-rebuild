.class Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;
.super Ljava/lang/Object;
.source "LiveSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/LiveSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSDParam"
.end annotation


# instance fields
.field private mBatteryChargingBitmap:Landroid/graphics/Bitmap;

.field private mColorBarWidth:I

.field private mMaxTraceBitmap:Landroid/graphics/Bitmap;

.field private mWaterMarkBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/LiveSurfaceView;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/live/LiveSurfaceView;Z)V
    .locals 3
    .param p2, "isUsingForCapture"    # Z

    .prologue
    .line 93
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->this$0:Lcn/com/magnity/magnitymx/live/LiveSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v1, "mag"

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_1
    if-eqz p2, :cond_1

    .line 108
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    .line 109
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MagApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060053

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mColorBarWidth:I

    .line 116
    :goto_2
    return-void

    .line 94
    :sswitch_0
    const-string v2, "mag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "skld"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "zhongxing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "hidelogo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :pswitch_0
    const v0, 0x7f0c0026

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 99
    :pswitch_1
    const v0, 0x7f0c0027

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 103
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 112
    :cond_1
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    .line 113
    const v0, 0x7f0c0001

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mBatteryChargingBitmap:Landroid/graphics/Bitmap;

    .line 114
    sget v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->LIVE_COLORBAR_WIDTH:I

    iput v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mColorBarWidth:I

    goto :goto_2

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x727c801c -> :sswitch_2
        -0x69b0ce13 -> :sswitch_3
        0x1a553 -> :sswitch_0
        0x35e5d0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/live/LiveSurfaceView;ZLcn/com/magnity/magnitymx/live/LiveSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$1;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;-><init>(Lcn/com/magnity/magnitymx/live/LiveSurfaceView;Z)V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->getBatteryChargingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->getWaterMarkBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->getMaxTraceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryChargingBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mBatteryChargingBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getMaxTraceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getWaterMarkBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->this$0:Lcn/com/magnity/magnitymx/live/LiveSurfaceView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColorbarWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mColorBarWidth:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mMaxTraceBitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 148
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mBatteryChargingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mBatteryChargingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mBatteryChargingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->mBatteryChargingBitmap:Landroid/graphics/Bitmap;

    .line 152
    :cond_2
    return-void
.end method
