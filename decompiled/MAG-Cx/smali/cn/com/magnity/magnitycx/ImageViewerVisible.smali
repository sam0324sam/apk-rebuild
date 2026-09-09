.class public Lcn/com/magnity/magnitycx/ImageViewerVisible;
.super Landroid/view/SurfaceView;
.source "ImageViewerVisible.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private holder_:Landroid/view/SurfaceHolder;

.field private leftMargin_:I

.field private mouseDownX_:I

.field private mouseDownY_:I

.field private topMargin_:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    .line 28
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    .line 29
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->mouseDownX_:I

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->mouseDownY_:I

    .line 121
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    .line 123
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    goto :goto_0

    .line 126
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->mouseDownX_:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 128
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->mouseDownY_:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 131
    .local v0, "layout":Landroid/widget/RelativeLayout;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v2, :cond_2

    .line 132
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 136
    :cond_0
    :goto_1
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v2, :cond_3

    .line 137
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 142
    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 133
    :cond_2
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 138
    :cond_3
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 98
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 11
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndLeftMargin:I

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    .line 37
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndTopMargin:I

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    .line 41
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndSize:I

    packed-switch v2, :pswitch_data_0

    .line 52
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0xc

    mul-int/lit8 v10, v2, 0xc

    .line 56
    .local v10, "width":I
    :goto_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 57
    move v6, v10

    .line 58
    .local v6, "height":I
    mul-int/lit8 v2, v6, 0x4

    div-int/lit8 v10, v2, 0x3

    .line 59
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visCameraId:I

    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    invoke-static {v2, v3, v6}, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->initCamera(ILandroid/view/SurfaceHolder;I)V

    .line 65
    :goto_1
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 66
    .local v9, "outSize":Landroid/graphics/Point;
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 67
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 69
    .local v7, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    .local v8, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 71
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 72
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 74
    :cond_0
    iget v2, v9, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    .line 76
    :cond_1
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    if-gez v2, :cond_5

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    .line 82
    :cond_2
    :goto_2
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->leftMargin_:I

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 83
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 85
    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 88
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_3

    .line 89
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .local v5, "pint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v2

    iget v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 94
    .end local v5    # "pint":Landroid/graphics/Paint;
    :cond_3
    return-void

    .line 43
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "height":I
    .end local v7    # "layout":Landroid/widget/RelativeLayout;
    .end local v8    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "outSize":Landroid/graphics/Point;
    .end local v10    # "width":I
    :pswitch_0
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0xc

    mul-int/lit8 v10, v2, 0xc

    .line 44
    .restart local v10    # "width":I
    goto/16 :goto_0

    .line 46
    .end local v10    # "width":I
    :pswitch_1
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0xc

    mul-int/lit8 v10, v2, 0xc

    .line 47
    .restart local v10    # "width":I
    goto/16 :goto_0

    .line 49
    .end local v10    # "width":I
    :pswitch_2
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->portraitScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0xc

    mul-int/lit8 v10, v2, 0xc

    .line 50
    .restart local v10    # "width":I
    goto/16 :goto_0

    .line 61
    :cond_4
    mul-int/lit8 v2, v10, 0x4

    div-int/lit8 v6, v2, 0x3

    .line 62
    .restart local v6    # "height":I
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visCameraId:I

    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->holder_:Landroid/view/SurfaceHolder;

    invoke-static {v2, v3, v10}, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->initCamera(ILandroid/view/SurfaceHolder;I)V

    goto/16 :goto_1

    .line 78
    .restart local v7    # "layout":Landroid/widget/RelativeLayout;
    .restart local v8    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "outSize":Landroid/graphics/Point;
    :cond_5
    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 79
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewerVisible;->topMargin_:I

    goto :goto_2

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndLeftMargin:I

    .line 105
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndTopMargin:I

    .line 107
    const-string v1, "visWndLeftMargin"

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v1, "visWndTopMargin"

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->commit()Z

    .line 111
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->deinitCamera()V

    .line 112
    return-void
.end method
