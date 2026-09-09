.class Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;
.super Ljava/lang/Object;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSDParam"
.end annotation


# instance fields
.field private crossLogo_:Landroid/graphics/Bitmap;

.field private laserLogo_:Landroid/graphics/Bitmap;

.field private maxTrace_:Landroid/graphics/Bitmap;

.field private minTrace_:Landroid/graphics/Bitmap;

.field private moveingCrossLogo_:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcn/com/magnity/magnitycx/ImageViewer;

.field private waterMark_:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/ImageViewer$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 99
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->reset()V

    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->crossLogo_:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->crossLogo_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->crossLogo_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->crossLogo_:Landroid/graphics/Bitmap;

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->waterMark_:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->waterMark_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->waterMark_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->waterMark_:Landroid/graphics/Bitmap;

    .line 157
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->minTrace_:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->minTrace_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->minTrace_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->minTrace_:Landroid/graphics/Bitmap;

    .line 162
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->maxTrace_:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->maxTrace_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->maxTrace_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->maxTrace_:Landroid/graphics/Bitmap;

    .line 166
    :cond_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->moveingCrossLogo_:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->moveingCrossLogo_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->moveingCrossLogo_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->moveingCrossLogo_:Landroid/graphics/Bitmap;

    .line 170
    :cond_4
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->laserLogo_:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->laserLogo_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 171
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->laserLogo_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->laserLogo_:Landroid/graphics/Bitmap;

    .line 174
    :cond_5
    return-void
.end method


# virtual methods
.method public getCrossLogo()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->crossLogo_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLaserLogo()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->laserLogo_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMaxTrace()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->maxTrace_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMinTrace()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->minTrace_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMovingCrossLogo()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->moveingCrossLogo_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWaterMark()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->waterMark_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCrossLogo(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->crossLogo_:Landroid/graphics/Bitmap;

    .line 129
    return-void
.end method

.method public setLaserLogo(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->laserLogo_:Landroid/graphics/Bitmap;

    .line 144
    return-void
.end method

.method public setMaxTrace(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->maxTrace_:Landroid/graphics/Bitmap;

    .line 138
    return-void
.end method

.method public setMinTrace(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->minTrace_:Landroid/graphics/Bitmap;

    .line 135
    return-void
.end method

.method public setMovingCrossLogo(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->moveingCrossLogo_:Landroid/graphics/Bitmap;

    .line 141
    return-void
.end method

.method public setWaterMark(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->waterMark_:Landroid/graphics/Bitmap;

    .line 132
    return-void
.end method
