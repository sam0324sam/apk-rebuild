.class public Lcn/com/magnity/magnitycx/sdk/BitmapUtilities;
.super Ljava/lang/Object;
.source "BitmapUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_0

    .line 52
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBitmapThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    move-object v8, v7

    .line 75
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 63
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 64
    .local v3, "bmpWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 65
    .local v4, "bmpHeight":I
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 66
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v10, v0, v2

    .line 68
    .local v10, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 69
    .local v9, "scaleHeight":F
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scaleHeight":F
    .end local v10    # "scaleWidth":F
    :goto_1
    move-object v8, v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    move-object v0, v7

    .line 75
    goto :goto_0

    .line 72
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v7, p0

    goto :goto_1
.end method

.method public static getBitmapThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "sampleSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 34
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 36
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 37
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    :cond_0
    if-nez v0, :cond_1

    .line 42
    invoke-static {p0, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    :cond_1
    return-object v0
.end method

.method public static getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 15
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 17
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    .line 18
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 19
    .local v2, "r":F
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 20
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    .end local v2    # "r":F
    :cond_0
    if-nez v0, :cond_1

    .line 25
    invoke-static {p0, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    :cond_1
    return-object v0
.end method
