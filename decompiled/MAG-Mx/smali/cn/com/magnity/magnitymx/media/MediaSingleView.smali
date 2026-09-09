.class public Lcn/com/magnity/magnitymx/media/MediaSingleView;
.super Landroid/view/View;
.source "MediaSingleView.java"


# static fields
.field private static final FINGER_ACTION_NONE:I = -0x1

.field private static final FINGER_ACTION_TRANSLATE:I = 0x0

.field private static final FINGER_ACTION_ZOOM:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mChildActionListner:Lcn/com/magnity/magnitymx/media/OnChildActionListener;

.field private mFingerAction:I

.field private mInitialBitmapRect:Landroid/graphics/Rect;

.field private mOldBitmapRect:Landroid/graphics/Rect;

.field private mOldFingerX0:I

.field private mOldFingerX1:I

.field private mOldFingerY0:I

.field private mOldFingerY1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mFingerAction:I

    .line 37
    return-void
.end method

.method private calcDistance(IIII)F
    .locals 4
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 149
    sub-int v0, p3, p1

    int-to-double v0, v0

    sub-int v2, p3, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    sub-int v2, p4, p2

    sub-int v3, p4, p2

    mul-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getPreferredBitmapRect(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 168
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, p1

    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, p2

    if-le v4, v5, :cond_0

    .line 169
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v4, p2

    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v1, v4, v5

    .line 170
    .local v1, "bmpWidth":I
    move v0, p2

    .line 171
    .local v0, "bmpHeight":I
    sub-int v4, p1, v1

    div-int/lit8 v2, v4, 0x2

    .line 172
    .local v2, "left":I
    const/4 v3, 0x0

    .line 179
    .local v3, "top":I
    :goto_0
    add-int v4, v2, v1

    add-int v5, v3, v0

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    return-void

    .line 174
    .end local v0    # "bmpHeight":I
    .end local v1    # "bmpWidth":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_0
    move v1, p1

    .line 175
    .restart local v1    # "bmpWidth":I
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, p1

    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v0, v4, v5

    .line 176
    .restart local v0    # "bmpHeight":I
    const/4 v2, 0x0

    .line 177
    .restart local v2    # "left":I
    sub-int v4, p2, v0

    div-int/lit8 v3, v4, 0x2

    .restart local v3    # "top":I
    goto :goto_0
.end method

.method private startAction()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mChildActionListner:Lcn/com/magnity/magnitymx/media/OnChildActionListener;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/media/OnChildActionListener;->start()V

    .line 45
    return-void
.end method

.method private stopAction()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mChildActionListner:Lcn/com/magnity/magnitymx/media/OnChildActionListener;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/media/OnChildActionListener;->stop()V

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    .local v1, "viewWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 159
    .local v0, "viewHeight":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->getPreferredBitmapRect(IILandroid/graphics/Rect;)V

    .line 160
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 162
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 163
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    return v7

    .line 77
    :pswitch_1
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX1:I

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX0:I

    .line 78
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY1:I

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY0:I

    .line 79
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->startAction()V

    .line 81
    const/4 v7, 0x0

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mFingerAction:I

    goto :goto_0

    .line 84
    :pswitch_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX0:I

    .line 85
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY0:I

    .line 86
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX1:I

    .line 87
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY1:I

    .line 88
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 89
    const/4 v7, 0x1

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mFingerAction:I

    goto :goto_0

    .line 92
    :pswitch_3
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v2, v7

    .line 93
    .local v2, "newFingerX0":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v4, v7

    .line 94
    .local v4, "newFingerY0":I
    iget v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mFingerAction:I

    packed-switch v7, :pswitch_data_1

    .line 136
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->invalidate()V

    goto :goto_0

    .line 96
    :pswitch_4
    iget v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX0:I

    sub-int v0, v2, v7

    .line 97
    .local v0, "dx":I
    iget v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY0:I

    sub-int v1, v4, v7

    .line 98
    .local v1, "dy":I
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v0

    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v0

    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_1

    .line 101
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 102
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 103
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->stopAction()V

    .line 105
    :cond_1
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ge v7, v8, :cond_2

    .line 106
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 107
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 108
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->stopAction()V

    .line 110
    :cond_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_3

    .line 111
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 112
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 113
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->stopAction()V

    .line 115
    :cond_3
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v8, :cond_0

    .line 116
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 117
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 118
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->stopAction()V

    goto/16 :goto_1

    .line 122
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_5
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v3, v7

    .line 123
    .local v3, "newFingerX1":I
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v5, v7

    .line 124
    .local v5, "newFingerY1":I
    invoke-direct {p0, v2, v4, v3, v5}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->calcDistance(IIII)F

    move-result v7

    iget v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX0:I

    iget v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY0:I

    iget v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX1:I

    iget v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY1:I

    .line 125
    invoke-direct {p0, v8, v9, v10, v11}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->calcDistance(IIII)F

    move-result v8

    div-float v6, v7, v8

    .line 126
    .local v6, "ratio":F
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    int-to-float v8, v2

    iget v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX0:I

    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v4

    iget v10, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY0:I

    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v10, v2

    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerX0:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v4

    iget-object v12, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldBitmapRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mOldFingerY0:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lt v7, v8, :cond_4

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 132
    :cond_4
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 139
    .end local v2    # "newFingerX0":I
    .end local v3    # "newFingerX1":I
    .end local v4    # "newFingerY0":I
    .end local v5    # "newFingerY1":I
    .end local v6    # "ratio":F
    :pswitch_6
    const/4 v7, -0x1

    iput v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mFingerAction:I

    goto/16 :goto_0

    .line 142
    :pswitch_7
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->stopAction()V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mInitialBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->invalidate()V

    .line 66
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 53
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->invalidate()V

    goto :goto_0
.end method

.method public setOnChildActionListener(Lcn/com/magnity/magnitymx/media/OnChildActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/com/magnity/magnitymx/media/OnChildActionListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleView;->mChildActionListner:Lcn/com/magnity/magnitymx/media/OnChildActionListener;

    .line 41
    return-void
.end method
