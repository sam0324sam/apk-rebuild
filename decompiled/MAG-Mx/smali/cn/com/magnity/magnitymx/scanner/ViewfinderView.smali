.class public final Lcn/com/magnity/magnitymx/scanner/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private cameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f05008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->maskColor:I

    .line 54
    const v1, 0x7f05007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultColor:I

    .line 55
    const v1, 0x7f05008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->laserColor:I

    .line 56
    const v1, 0x7f050076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultPointColor:I

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->scannerAlpha:I

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 167
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 168
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter v0

    .line 169
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 173
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    :cond_0
    monitor-exit v0

    .line 176
    return-void

    .line 175
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 163
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->invalidate()V

    .line 164
    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 149
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->invalidate()V

    .line 154
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->cameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->cameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->isCameraOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->postInvalidate()V

    .line 145
    :goto_0
    return-void

    .line 73
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->cameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 74
    .local v12, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->cameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v18

    .line 75
    .local v18, "previewFrame":Landroid/graphics/Rect;
    if-eqz v12, :cond_2

    if-nez v18, :cond_3

    .line 76
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->postInvalidate()V

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->getWidth()I

    move-result v22

    .line 80
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->getHeight()I

    move-result v15

    .line 83
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move/from16 v0, v22

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 83
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 96
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->laserColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v3, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->scannerAlpha:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->scannerAlpha:I

    .line 99
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v16, v2, v3

    .line 100
    .local v16, "middle":I
    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    add-int/lit8 v2, v16, -0x1

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    add-int/lit8 v2, v16, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 103
    .local v20, "scaleX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 105
    .local v21, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 106
    .local v11, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 107
    .local v10, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 108
    .local v13, "frameLeft":I
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 109
    .local v14, "frameTop":I
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 124
    :goto_2
    if-eqz v10, :cond_9

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    monitor-enter v10

    .line 128
    const/high16 v19, 0x40400000    # 3.0f

    .line 129
    .local v19, "radius":F
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 130
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    mul-float v3, v3, v20

    float-to-int v3, v3

    add-int/2addr v3, v13

    int-to-float v3, v3

    .line 131
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    mul-float v4, v4, v21

    float-to-int v4, v4

    add-int/2addr v4, v14

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 130
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 134
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 112
    .end local v19    # "radius":F
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 113
    move-object/from16 v0, p0

    iput-object v11, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    monitor-enter v11

    .line 117
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 118
    .restart local v17    # "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    mul-float v3, v3, v20

    float-to-int v3, v3

    add-int/2addr v3, v13

    int-to-float v3, v3

    .line 119
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    mul-float v4, v4, v21

    float-to-int v4, v4

    add-int/2addr v4, v14

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 122
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_1
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_7
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 134
    .restart local v19    # "radius":F
    :cond_8
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .end local v19    # "radius":F
    :cond_9
    const-wide/16 v4, 0x50

    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v2, -0x6

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v2, -0x6

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v2, 0x6

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, v2, 0x6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

.method public setCameraManager(Lcn/com/magnity/magnitymx/scanner/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcn/com/magnity/magnitymx/scanner/CameraManager;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->cameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    .line 64
    return-void
.end method
