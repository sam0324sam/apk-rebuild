.class public Lcn/com/magnity/magnitycx/MediaSingleActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MediaSingleActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/MediaSingleActivity$DepthPageTransformer;,
        Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;,
        Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;,
        Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;
    }
.end annotation


# static fields
.field public static final MEDIAINDEX:Ljava/lang/String; = "mediaIndex"

.field public static final MEDIANAMELIST:Ljava/lang/String; = "mediaNameList"

.field public static final MEDIAWINDOWFLAG:Ljava/lang/String; = "mediaWindowFlag"


# instance fields
.field private btnDel_:Landroid/widget/Button;

.field private btnInfo_:Landroid/widget/Button;

.field private btnShare_:Landroid/widget/Button;

.field private currentIndex_:I

.field private fileNames_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isVideo_:Z

.field private magClickListener_:Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

.field private mediaWindowFlag_:I

.field private viewPager_:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->socialShare()V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->isVideo_:Z

    return v0
.end method

.method static synthetic access$402(Lcn/com/magnity/magnitycx/MediaSingleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->isVideo_:Z

    return p1
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/MediaSingleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 44
    iget v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    return v0
.end method

.method static synthetic access$502(Lcn/com/magnity/magnitycx/MediaSingleActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    return p1
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitycx/MediaSingleActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->showInfoWhenFileNotExist()V

    return-void
.end method

.method private decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 162
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 163
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 165
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 166
    .local v2, "outSize":Landroid/graphics/Point;
    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 167
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v5, v6

    add-int/lit8 v3, v5, 0x1

    .line 168
    .local v3, "r1":I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 169
    .local v4, "r2":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    invoke-static {p1, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    :cond_0
    return-object v0
.end method

.method private getMediaStoragePath(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "magnity/Cx/media"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    move-object v0, v2

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private showInfoWhenFileNotExist()V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080021

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 124
    :cond_0
    return-void
.end method

.method private socialShare()V
    .locals 6

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getMediaStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v3, "cn.com.magnity.magnitycx.fileprovider"

    invoke-static {p0, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 199
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->isVideo_:Z

    if-eqz v3, :cond_2

    const-string v3, "video/*"

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :cond_2
    const-string v3, "image/*"

    goto :goto_1
.end method


# virtual methods
.method getMediaInfos()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "name":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "time":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "size":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "reso":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "w":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "h":Ljava/lang/String;
    const/4 v6, 0x0

    .line 215
    .local v6, "duration":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "name":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 216
    .restart local v18    # "name":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 217
    .local v19, "pathName":Ljava/lang/String;
    sget-object v27, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v14

    .line 219
    .local v14, "mediaType":I
    if-nez v14, :cond_5

    .line 221
    :try_start_0
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 222
    .local v7, "exifInterface":Landroid/media/ExifInterface;
    const-string v27, "DateTimeDigitized"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v25

    .line 223
    const/16 v24, 0x0

    .line 224
    const/16 v21, 0x0

    .line 253
    .end local v7    # "exifInterface":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    if-eqz v25, :cond_1

    if-eqz v24, :cond_1

    if-nez v21, :cond_4

    .line 254
    :cond_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v8, "f":Ljava/io/File;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 256
    if-nez v25, :cond_2

    .line 257
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 258
    .local v5, "dt":Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v27, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 259
    .local v9, "ft":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 261
    .end local v5    # "dt":Ljava/util/Date;
    .end local v9    # "ft":Ljava/text/SimpleDateFormat;
    :cond_2
    if-nez v24, :cond_3

    .line 262
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v27, "0.0"

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 263
    .local v4, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 264
    .local v2, "bytes":J
    const-wide/16 v28, 0x400

    cmp-long v27, v2, v28

    if-gez v27, :cond_8

    .line 265
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "B"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 272
    .end local v2    # "bytes":J
    .end local v4    # "df":Ljava/text/DecimalFormat;
    :cond_3
    :goto_1
    if-nez v21, :cond_4

    .line 273
    invoke-static/range {v19 .. v19}, Lcn/com/magnity/magnitycx/sdk/BitmapUtilities;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v20

    .line 274
    .local v20, "pt":Landroid/graphics/Point;
    if-eqz v20, :cond_4

    .line 275
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " x "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 281
    .end local v8    # "f":Ljava/io/File;
    .end local v20    # "pt":Landroid/graphics/Point;
    :cond_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_a

    .line 282
    const-string v27, "1"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    return-object v11

    .line 227
    :cond_5
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_7

    .line 228
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 230
    .local v15, "mmr":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 231
    const/16 v25, 0x0

    .line 232
    const/16 v24, 0x0

    .line 233
    const/16 v27, 0x12

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v26

    .line 234
    const/16 v27, 0x13

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 235
    if-eqz v26, :cond_6

    if-eqz v10, :cond_6

    const-string v27, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    const-string v27, "0"

    move-object/from16 v0, v27

    if-eq v10, v0, :cond_6

    .line 236
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " x "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 238
    :cond_6
    const/16 v27, 0x9

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    if-eqz v6, :cond_0

    .line 240
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 241
    .local v22, "sec":J
    const-wide/16 v28, 0xe10

    div-long v12, v22, v28

    .line 242
    .local v12, "hour":J
    const-wide/16 v28, 0xe10

    mul-long v28, v28, v12

    sub-long v28, v22, v28

    const-wide/16 v30, 0x3c

    div-long v16, v28, v30

    .line 243
    .local v16, "min":J
    const-string v27, "%02d:%02d:%02d"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const-wide/16 v30, 0xe10

    mul-long v30, v30, v12

    sub-long v30, v22, v30

    const-wide/16 v32, 0x3c

    mul-long v32, v32, v16

    sub-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 248
    .end local v12    # "hour":J
    .end local v15    # "mmr":Landroid/media/MediaMetadataRetriever;
    .end local v16    # "min":J
    .end local v22    # "sec":J
    :cond_7
    const/16 v25, 0x0

    .line 249
    const/16 v24, 0x0

    .line 250
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 266
    .restart local v2    # "bytes":J
    .restart local v4    # "df":Ljava/text/DecimalFormat;
    .restart local v8    # "f":Ljava/io/File;
    :cond_8
    const-wide/32 v28, 0x100000

    cmp-long v27, v2, v28

    if-gez v27, :cond_9

    .line 267
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v2

    move/from16 v28, v0

    const/high16 v29, 0x44800000    # 1024.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "KB"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1

    .line 269
    :cond_9
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v2

    move/from16 v28, v0

    const/high16 v29, 0x49800000    # 1048576.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "MB"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1

    .line 284
    .end local v2    # "bytes":J
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .end local v8    # "f":Ljava/io/File;
    :cond_a
    const-string v27, "0"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 245
    .restart local v15    # "mmr":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v27

    goto/16 :goto_0

    .line 225
    .end local v15    # "mmr":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v27

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->setContentView(I)V

    .line 65
    if-eqz p1, :cond_1

    .line 66
    const-string v1, "mediaWindowFlag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->mediaWindowFlag_:I

    .line 67
    const-string v1, "mediaIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    .line 68
    const-string v1, "mediaNameList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    const v1, 0x7f0e0088

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->btnShare_:Landroid/widget/Button;

    .line 86
    const v1, 0x7f0e0089

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->btnInfo_:Landroid/widget/Button;

    .line 87
    const v1, 0x7f0e008a

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->btnDel_:Landroid/widget/Button;

    .line 89
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    .line 90
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;

    invoke-direct {v4, p0, v6}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 91
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;

    invoke-direct {v4, p0, v6}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    const/16 v4, 0x1e

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 93
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 94
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcn/com/magnity/magnitycx/MediaSingleActivity$DepthPageTransformer;

    invoke-direct {v4, p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity$DepthPageTransformer;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 96
    iget v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 97
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->isVideo_:Z

    .line 100
    :cond_0
    new-instance v1, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    invoke-direct {v1, p0, v6}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    .line 101
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->btnShare_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->btnInfo_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->btnDel_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 72
    const-string v1, "mediaWindowFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->mediaWindowFlag_:I

    .line 73
    const-string v1, "mediaIndex"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    .line 74
    const-string v1, "mediaNameList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 76
    :cond_2
    iput v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->mediaWindowFlag_:I

    .line 77
    iput v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    .line 79
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->updateFileList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    move v1, v3

    .line 97
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 138
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    iget v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->mediaWindowFlag_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->finish()V

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/com/magnity/magnitycx/MediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0121
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 109
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5355\u4e2a\u5a92\u4f53\u9875\u9762"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onQueryResult(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    .line 298
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "pathName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    const-string v2, ".jpg"

    const-string v3, ".ddt"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v0    # "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 310
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->finish()V

    .line 327
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "pathName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 313
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "pathName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 315
    iget v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 316
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 321
    :goto_1
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->showInfoWhenFileNotExist()V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    add-int/lit8 v3, v3, 0x1

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->viewPager_:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 115
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->showInfoWhenFileNotExist()V

    .line 116
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5355\u4e2a\u5a92\u4f53\u9875\u9762"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "mediaWindowFlag"

    iget v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->mediaWindowFlag_:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v0, "mediaIndex"

    iget v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v0, "mediaNameList"

    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method
