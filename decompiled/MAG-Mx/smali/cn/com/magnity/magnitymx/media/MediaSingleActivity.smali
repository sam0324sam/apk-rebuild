.class public Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MediaSingleActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;
.implements Lcn/com/magnity/magnitymx/media/IDDTContract$IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/MediaSingleActivity$DepthPageTransformer;,
        Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;,
        Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;,
        Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;,
        Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;
    }
.end annotation


# static fields
.field public static final MEDIADELETEQUERYID:I = 0x1

.field public static final MEDIAINDEX:Ljava/lang/String; = "mediaIndex"

.field public static final MEDIANAME:Ljava/lang/String; = "mediaName"

.field public static final MEDIANAMELIST:Ljava/lang/String; = "mediaNameList"

.field public static final MEDIAREPLACEREFQUERYID:I = 0x2

.field public static final MEDIASETREFQUERYID:I = 0x2

.field public static final MEDIAWINDOWFLAG:Ljava/lang/String; = "mediaWindowFlag"

.field private static final TAG:Ljava/lang/String; = "MediaSingleActivity"

.field private static final UPLOADED_FAILED:I = 0x6

.field private static final UPLOADED_SUCCESS:I = 0x5

.field private static final UPLOADING:I = 0x3

.field private static final UPLOAD_FAILED:I = 0x4

.field private static final UPLOAD_START:I = 0x1

.field private static final UPLOAD_SUCCESS:I = 0x2


# instance fields
.field private btnAnalysis_:Landroid/widget/Button;

.field private btnDel_:Landroid/widget/Button;

.field private btnInfo_:Landroid/support/design/widget/FloatingActionButton;

.field private btnMap_:Landroid/widget/Button;

.field private btnSetReference_:Landroid/widget/Button;

.field private btnShare_:Landroid/widget/Button;

.field private btnUpload_:Landroid/widget/Button;

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

.field private mCurrentPageView:Lcn/com/magnity/magnitymx/media/MediaSingleView;

.field private mHandler:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

.field private mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

.field private mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTaskId:Ljava/lang/String;

.field private mWaitingCursor:Landroid/view/View;

.field private magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

.field private mediaWindowFlag_:I

.field private viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    return v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->showMapPosition()V

    return-void
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    return p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->isVideo_:Z

    return v0
.end method

.method static synthetic access$1102(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->isVideo_:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mHandler:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->updateUiWhenNetworkPosting()V

    return-void
.end method

.method static synthetic access$1502(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleView;)Lcn/com/magnity/magnitymx/media/MediaSingleView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/media/MediaSingleView;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mCurrentPageView:Lcn/com/magnity/magnitymx/media/MediaSingleView;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->queryUpload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->showInfoWhenFileNotExist()V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/server/MagHttpResponse;II)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->handleHttpResponse(Lcn/com/magnity/magnitymx/server/MagHttpResponse;II)V

    return-void
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->shareFile(Z)V

    return-void
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->socialShare()V

    return-void
.end method

.method private decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 343
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 344
    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 345
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 346
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 347
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 348
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/graphics/Point;

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 349
    .local v3, "outSize":Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x1

    .line 350
    .local v4, "r1":I
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 351
    .local v5, "r2":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 352
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 353
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    if-nez v0, :cond_0

    .line 355
    invoke-static {p1, v9}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    :cond_0
    return-object v0
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return-object v2

    .line 428
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "fileExtension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 430
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private handleHttpResponse(Lcn/com/magnity/magnitymx/server/MagHttpResponse;II)V
    .locals 15
    .param p1, "httpResponse"    # Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    .param p2, "action"    # I
    .param p3, "index"    # I

    .prologue
    .line 847
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 848
    .local v5, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getHttpResponseCode()I

    move-result v9

    .line 849
    .local v9, "responseCode":I
    const/16 v11, 0xc8

    if-eq v9, v11, :cond_2

    .line 850
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->updateUiWhenNetworkPostingFinished()V

    .line 852
    const/16 v11, 0x198

    if-ne v9, v11, :cond_0

    .line 853
    const v3, 0x7f0e00dc

    .line 857
    .local v3, "messageId":I
    :goto_0
    const/4 v11, 0x0

    invoke-static {p0, v3, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 858
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {v11, v5}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v10

    .line 859
    .local v10, "uploadStatus":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 860
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    const-string v12, ""

    const-string v13, ""

    const/4 v14, -0x2

    invoke-virtual {v11, v12, v5, v13, v14}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 925
    .end local v3    # "messageId":I
    .end local v10    # "uploadStatus":I
    :goto_1
    return-void

    .line 855
    :cond_0
    const v3, 0x7f0e00db

    .restart local v3    # "messageId":I
    goto :goto_0

    .line 862
    .restart local v10    # "uploadStatus":I
    :cond_1
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    const/4 v12, -0x2

    invoke-virtual {v11, v5, v12}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->updateUploadStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 867
    .end local v3    # "messageId":I
    .end local v10    # "uploadStatus":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v6

    .line 869
    .local v6, "payload":Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 870
    .local v8, "response":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 871
    .local v7, "resCode":I
    const-string v11, "desc"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "desc":Ljava/lang/String;
    const-string v11, "msg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, "msg":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 899
    :goto_2
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {v11, v5}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v10

    .line 900
    .restart local v10    # "uploadStatus":I
    const v11, 0x30e6e

    if-ne v7, v11, :cond_4

    .line 901
    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 902
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v5, v13, v14}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 913
    :goto_3
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    new-instance v12, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V

    invoke-virtual {v11, v12}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 914
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 922
    .end local v1    # "desc":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v7    # "resCode":I
    .end local v8    # "response":Lorg/json/JSONObject;
    .end local v10    # "uploadStatus":I
    :catch_0
    move-exception v2

    .line 923
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 875
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "desc":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local v7    # "resCode":I
    .restart local v8    # "response":Lorg/json/JSONObject;
    :sswitch_0
    const v11, 0x7f0e006b

    const/4 v12, 0x0

    :try_start_1
    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 878
    :sswitch_1
    const v11, 0x7f0e0068

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 881
    :sswitch_2
    const v11, 0x7f0e012c

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 884
    :sswitch_3
    const v11, 0x7f0e0064

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 887
    :sswitch_4
    const v11, 0x7f0e0157

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 890
    :sswitch_5
    const v11, 0x7f0e0152

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 893
    :sswitch_6
    const v11, 0x7f0e0066

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 896
    :sswitch_7
    const v11, 0x7f0e0067

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 904
    .restart local v10    # "uploadStatus":I
    :cond_3
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->updateUploadStatus(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 907
    :cond_4
    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 908
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    const-string v12, ""

    const-string v13, ""

    const/4 v14, -0x2

    invoke-virtual {v11, v12, v5, v13, v14}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 910
    :cond_5
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    const/4 v12, -0x2

    invoke-virtual {v11, v5, v12}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->updateUploadStatus(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 873
    nop

    :sswitch_data_0
    .sparse-switch
        0x30e6e -> :sswitch_7
        0x61a80 -> :sswitch_0
        0x61ae4 -> :sswitch_4
        0x61ae6 -> :sswitch_5
        0x61bae -> :sswitch_6
        0x61bb3 -> :sswitch_3
        0x61bc6 -> :sswitch_1
        0x61c10 -> :sswitch_2
    .end sparse-switch
.end method

.method private queryUpload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1002
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    if-nez v2, :cond_0

    .line 1004
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .line 1007
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {v2, p1}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v0

    .line 1008
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shareFile(Z)V
    .locals 10
    .param p1, "isFile"    # Z

    .prologue
    .line 392
    const-string v3, "image/*"

    .line 393
    .local v3, "mimeType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 394
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "pathName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 396
    const-string v3, "application/octet-stream"

    .line 398
    :try_start_0
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/FileUtils;->copyAndRename(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 404
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 419
    :cond_1
    :goto_1
    return-void

    .line 399
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copy and rename error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fileprovider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 410
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 413
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 416
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0099

    .line 418
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 417
    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private showInfoWhenFileNotExist()V
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0065

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 268
    :cond_0
    return-void
.end method

.method private showMapPosition()V
    .locals 8

    .prologue
    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v6, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 437
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "pathName":Ljava/lang/String;
    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/Utils;->readGpsFromJpg(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 439
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?q=mark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v0    # "it":Landroid/content/Intent;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 448
    :cond_0
    const v4, 0x7f0e0077

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 445
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private socialShare()V
    .locals 10

    .prologue
    .line 361
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0a0070

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 362
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 364
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 365
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 366
    .local v6, "window":Landroid/view/Window;
    if-nez v6, :cond_0

    .line 389
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 370
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 371
    const/16 v7, 0x11

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 372
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 373
    const v7, 0x7f080159

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 374
    .local v4, "sharePicImageView":Landroid/widget/ImageView;
    const v7, 0x7f080158

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 375
    .local v3, "shareFileImageView":Landroid/widget/ImageView;
    new-instance v1, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    .line 387
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateMedia(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 222
    iput p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 223
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setCurrentItem(I)V

    .line 225
    iget v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 226
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaUtils;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->isVideo_:Z

    .line 228
    :cond_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUiWhenNetworkPosting()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mWaitingCursor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    return-void
.end method

.method private updateUiWhenNetworkPostingFinished()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mWaitingCursor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    return-void
.end method


# virtual methods
.method getMediaInfos()Ljava/util/ArrayList;
    .locals 36
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
    .line 455
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v13, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .local v20, "name":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "time":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "size":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "reso":Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "w":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "h":Ljava/lang/String;
    const/4 v7, 0x0

    .line 458
    .local v7, "duration":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "name":Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 460
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    .line 461
    .local v10, "file":Ljava/io/File;
    if-nez v10, :cond_0

    .line 462
    const-string v5, ""

    .line 463
    .local v5, "dir":Ljava/lang/String;
    const-string v29, ""

    .line 465
    .end local v5    # "dir":Ljava/lang/String;
    :cond_0
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    .restart local v5    # "dir":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 467
    .local v21, "pathName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitymx/media/MediaUtils;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v16

    .line 469
    .local v16, "mediaType":I
    if-nez v16, :cond_6

    .line 471
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 472
    .local v8, "exifInterface":Landroid/media/ExifInterface;
    const-string v29, "DateTimeDigitized"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v27

    .line 473
    const/16 v26, 0x0

    .line 474
    const/16 v23, 0x0

    .line 504
    .end local v8    # "exifInterface":Landroid/media/ExifInterface;
    :cond_1
    :goto_0
    if-eqz v27, :cond_2

    if-eqz v26, :cond_2

    if-nez v23, :cond_5

    .line 505
    :cond_2
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v9, "f":Ljava/io/File;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 507
    if-nez v27, :cond_3

    .line 508
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 509
    .local v6, "dt":Ljava/util/Date;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v29, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 510
    .local v11, "ft":Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 512
    .end local v6    # "dt":Ljava/util/Date;
    .end local v11    # "ft":Ljava/text/SimpleDateFormat;
    :cond_3
    if-nez v26, :cond_4

    .line 513
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v29, "0.0"

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 514
    .local v4, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 515
    .local v2, "bytes":J
    const-wide/16 v30, 0x400

    cmp-long v29, v2, v30

    if-gez v29, :cond_9

    .line 516
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "B"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 523
    .end local v2    # "bytes":J
    .end local v4    # "df":Ljava/text/DecimalFormat;
    :cond_4
    :goto_1
    if-nez v23, :cond_5

    .line 524
    invoke-static/range {v21 .. v21}, Lcn/com/magnity/magnitymx/media/BitmapUtilities;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v22

    .line 525
    .local v22, "pt":Landroid/graphics/Point;
    if-eqz v22, :cond_5

    .line 526
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " x "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 532
    .end local v9    # "f":Ljava/io/File;
    .end local v22    # "pt":Landroid/graphics/Point;
    :cond_5
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 533
    const-string v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    return-object v13

    .line 478
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 479
    new-instance v17, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 481
    .local v17, "mmr":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 482
    const/16 v27, 0x0

    .line 483
    const/16 v26, 0x0

    .line 484
    const/16 v29, 0x12

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    .line 485
    const/16 v29, 0x13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 486
    if-eqz v28, :cond_7

    if-eqz v12, :cond_7

    const-string v29, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_7

    const-string v29, "0"

    move-object/from16 v0, v29

    if-eq v12, v0, :cond_7

    .line 487
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " x "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 489
    :cond_7
    const/16 v29, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 490
    if-eqz v7, :cond_1

    .line 491
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 492
    .local v24, "sec":J
    const-wide/16 v30, 0xe10

    div-long v14, v24, v30

    .line 493
    .local v14, "hour":J
    const-wide/16 v30, 0xe10

    mul-long v30, v30, v14

    sub-long v30, v24, v30

    const-wide/16 v32, 0x3c

    div-long v18, v30, v32

    .line 494
    .local v18, "min":J
    const-string v29, "%02d:%02d:%02d"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    const-wide/16 v32, 0xe10

    mul-long v32, v32, v14

    sub-long v32, v24, v32

    const-wide/16 v34, 0x3c

    mul-long v34, v34, v18

    sub-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 499
    .end local v14    # "hour":J
    .end local v17    # "mmr":Landroid/media/MediaMetadataRetriever;
    .end local v18    # "min":J
    .end local v24    # "sec":J
    :cond_8
    const/16 v27, 0x0

    .line 500
    const/16 v26, 0x0

    .line 501
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 517
    .restart local v2    # "bytes":J
    .restart local v4    # "df":Ljava/text/DecimalFormat;
    .restart local v9    # "f":Ljava/io/File;
    :cond_9
    const-wide/32 v30, 0x100000

    cmp-long v29, v2, v30

    if-gez v29, :cond_a

    .line 518
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v2

    move/from16 v30, v0

    const/high16 v31, 0x44800000    # 1024.0f

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "KB"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 520
    :cond_a
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v2

    move/from16 v30, v0

    const/high16 v31, 0x49800000    # 1048576.0f

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "MB"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 535
    .end local v2    # "bytes":J
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .end local v9    # "f":Ljava/io/File;
    :cond_b
    const-string v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 496
    .restart local v17    # "mmr":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v29

    goto/16 :goto_0

    .line 475
    .end local v17    # "mmr":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v29

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 309
    if-eqz p3, :cond_0

    .line 310
    const-string v6, "mediaIndex"

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 311
    .local v2, "index":I
    const-string v4, ""

    .line 312
    .local v4, "pathName":Ljava/lang/String;
    if-gez v2, :cond_1

    .line 313
    const-string v6, "mediaName"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 315
    .local v5, "sep":I
    if-ltz v5, :cond_0

    .line 318
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "dir":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "name":Ljava/lang/String;
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "directory":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 325
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 327
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "directory":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "sep":I
    :cond_1
    if-eq v2, v7, :cond_0

    .line 328
    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->updateMedia(I)V

    .line 329
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mCurrentPageView:Lcn/com/magnity/magnitymx/media/MediaSingleView;

    invoke-direct {p0, v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x129
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mediaIndex"

    iget v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v2, "mediaName"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    iget v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->setContentView(I)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    const-string v1, "mediaWindowFlag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mediaWindowFlag_:I

    .line 170
    const-string v1, "mediaIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 171
    const-string v1, "mediaNameList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    .line 186
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    const v1, 0x7f08008a

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnShare_:Landroid/widget/Button;

    .line 189
    const v1, 0x7f080086

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnMap_:Landroid/widget/Button;

    .line 190
    const v1, 0x7f0800eb

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnInfo_:Landroid/support/design/widget/FloatingActionButton;

    .line 191
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnDel_:Landroid/widget/Button;

    .line 192
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnSetReference_:Landroid/widget/Button;

    .line 193
    const v1, 0x7f080084

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnAnalysis_:Landroid/widget/Button;

    .line 194
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnUpload_:Landroid/widget/Button;

    .line 195
    const v1, 0x7f0801b4

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mWaitingCursor:Landroid/view/View;

    .line 197
    const v1, 0x7f0800a6

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/MediaViewPager;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    .line 198
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    new-instance v2, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;

    invoke-direct {v2, p0, v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 199
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    new-instance v2, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;

    invoke-direct {v2, p0, v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 200
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setPageMargin(I)V

    .line 201
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    const/4 v2, 0x1

    new-instance v3, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$DepthPageTransformer;

    invoke-direct {v3, p0, v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$DepthPageTransformer;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 203
    new-instance v1, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-direct {v1, p0, v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    .line 204
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnShare_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnMap_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnInfo_:Landroid/support/design/widget/FloatingActionButton;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnDel_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnSetReference_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnAnalysis_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->btnUpload_:Landroid/widget/Button;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->magClickListener_:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->updateMedia(I)V

    .line 214
    new-instance v1, Lcn/com/magnity/magnitymx/media/DDTPresenter;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/media/DDTPresenter;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    .line 215
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->start()V

    .line 216
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    invoke-interface {v1, p0}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->setView(Lcn/com/magnity/magnitymx/media/IDDTContract$IView;)V

    .line 218
    new-instance v1, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    invoke-direct {v1, p0, p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mHandler:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    .line 219
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 175
    const-string v1, "mediaWindowFlag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mediaWindowFlag_:I

    .line 176
    const-string v1, "mediaIndex"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 177
    const-string v1, "mediaNameList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 179
    :cond_1
    iput v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mediaWindowFlag_:I

    .line 180
    iput v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    .line 182
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaUtils;->updateFileList(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 282
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 283
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->stop()V

    .line 243
    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    .line 244
    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mCurrentPageView:Lcn/com/magnity/magnitymx/media/MediaSingleView;

    .line 245
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 246
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 299
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 290
    :pswitch_0
    iget v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mediaWindowFlag_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 291
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->finish()V

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x7f08007e
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryResult(II)V
    .locals 23
    .param p1, "result"    # I
    .param p2, "id"    # I

    .prologue
    .line 549
    packed-switch p2, :pswitch_data_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 551
    :pswitch_0
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 554
    new-instance v7, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 556
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 560
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->finish()V

    goto :goto_0

    .line 563
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    move-object/from16 v19, v0

    new-instance v20, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    .line 568
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->viewPager_:Lcn/com/magnity/magnitymx/media/MediaViewPager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcn/com/magnity/magnitymx/media/MediaViewPager;->setCurrentItem(I)V

    .line 570
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->showInfoWhenFileNotExist()V

    .line 571
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e008d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    .line 572
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 578
    .end local v7    # "f":Ljava/io/File;
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 581
    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v17

    .line 582
    .local v17, "taskDir":Ljava/io/File;
    if-eqz v17, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 586
    .local v11, "name":Ljava/lang/String;
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 589
    .local v13, "parts":[Ljava/lang/String;
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v13, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 590
    .local v18, "version":I
    and-int/lit8 v18, v18, 0xf

    .line 595
    :goto_1
    const-string v16, ""

    .line 596
    .local v16, "task":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v19, 0x100

    move/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 598
    .local v15, "strBuilder":Ljava/lang/StringBuilder;
    packed-switch v18, :pswitch_data_1

    .line 621
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    move/from16 v21, v0

    .line 622
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    .local v4, "curFile":Ljava/io/File;
    new-instance v10, Lcn/com/magnity/coresdk/types/MDT;

    invoke-direct {v10}, Lcn/com/magnity/coresdk/types/MDT;-><init>()V

    .line 625
    .local v10, "mdt":Lcn/com/magnity/coresdk/types/MDT;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v10}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 626
    const v19, 0x7f0e00ed

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 627
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 591
    .end local v4    # "curFile":Ljava/io/File;
    .end local v10    # "mdt":Lcn/com/magnity/coresdk/types/MDT;
    .end local v15    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "task":Ljava/lang/String;
    .end local v18    # "version":I
    :catch_0
    move-exception v6

    .line 592
    .local v6, "ex":Ljava/lang/Exception;
    const/16 v18, 0x0

    .restart local v18    # "version":I
    goto :goto_1

    .line 600
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v15    # "strBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "task":Ljava/lang/String;
    :pswitch_2
    array-length v0, v13

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    aget-object v16, v13, v19

    .line 601
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v0, v13

    move/from16 v19, v0

    add-int/lit8 v9, v19, -0x2

    .local v9, "len":I
    :goto_3
    if-ge v8, v9, :cond_4

    .line 602
    aget-object v19, v13, v8

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 605
    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 606
    const-string v19, ".jpg"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 609
    .end local v8    # "i":I
    .end local v9    # "len":I
    :pswitch_3
    array-length v0, v13

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v16, v13, v19

    .line 610
    const-string v19, ".jpg"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 611
    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 613
    :cond_5
    const/4 v8, 0x2

    .restart local v8    # "i":I
    array-length v9, v13

    .restart local v9    # "len":I
    :goto_4
    if-ge v8, v9, :cond_6

    .line 614
    aget-object v19, v13, v8

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 617
    :cond_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 630
    .end local v8    # "i":I
    .end local v9    # "len":I
    .restart local v4    # "curFile":Ljava/io/File;
    .restart local v10    # "mdt":Lcn/com/magnity/coresdk/types/MDT;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcn/com/magnity/coresdk/types/MDT;->ddtBuf:[B

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->loadBufferDDT([B)Z

    move-result v19

    if-nez v19, :cond_8

    .line 631
    const v19, 0x7f0e00ed

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 632
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 636
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 639
    .local v3, "bmp":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 640
    .local v12, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x5a

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 641
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcn/com/magnity/coresdk/types/MDT;->jpgBuf:[B

    .line 642
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->unloadDDT()V

    .line 653
    new-instance v14, Ljava/io/File;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .local v14, "refFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 656
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 664
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcn/com/magnity/coresdk/types/MDT;->visBuf:[B

    .line 665
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v10, Lcn/com/magnity/coresdk/types/MDT;->visSize:I

    .line 666
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcn/com/magnity/coresdk/types/MDT;->txtBuf:[B

    .line 667
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v10, Lcn/com/magnity/coresdk/types/MDT;->txtSize:I

    .line 668
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcn/com/magnity/coresdk/types/MDT;->audBuf:[B

    .line 669
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v10, Lcn/com/magnity/coresdk/types/MDT;->audSize:I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v10, v1}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 672
    const v19, 0x7f0e00ec

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 673
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 643
    .end local v12    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "refFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 644
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 645
    const v19, 0x7f0e00ec

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 646
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->unloadDDT()V

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mPresenter:Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;->unloadDDT()V

    throw v19

    .line 657
    .restart local v12    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "refFile":Ljava/io/File;
    :catch_2
    move-exception v6

    .line 658
    .local v6, "ex":Ljava/lang/SecurityException;
    const v19, 0x7f0e00ec

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 659
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 677
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getCurrentTaskFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 678
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v19

    const-string v20, "UPDATE_TASK_REFIMAGE_OVERLAY"

    const-string v21, "PARAMETER1"

    .line 679
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    .line 678
    invoke-virtual/range {v19 .. v22}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e00ef

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    .line 682
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    .line 684
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 598
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 260
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->showInfoWhenFileNotExist()V

    .line 261
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "mediaWindowFlag"

    iget v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->mediaWindowFlag_:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string v0, "mediaIndex"

    iget v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->currentIndex_:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v0, "mediaNameList"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 277
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 233
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 238
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    .prologue
    .line 338
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->setPresenter(Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;)V

    return-void
.end method
