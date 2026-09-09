.class public Lcn/com/magnity/magnitycx/AboutAboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;
    }
.end annotation


# instance fields
.field private imageView_:Landroid/widget/ImageView;

.field private packInfo_:Landroid/content/pm/PackageInfo;

.field private tvCompanyCaption_:Landroid/widget/TextView;

.field private tvCompany_:Landroid/widget/TextView;

.field private tvFWVersionCaption_:Landroid/widget/TextView;

.field private tvFWVersion_:Landroid/widget/TextView;

.field private tvHWVersionCaption_:Landroid/widget/TextView;

.field private tvHWVersion_:Landroid/widget/TextView;

.field private tvProductTypeCaption_:Landroid/widget/TextView;

.field private tvProductType_:Landroid/widget/TextView;

.field private tvRightCaption_:Landroid/widget/TextView;

.field private tvRight_:Landroid/widget/TextView;

.field private tvSWVersionCaption_:Landroid/widget/TextView;

.field private tvSWVersion_:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private readBarcode(Landroid/widget/ImageView;)V
    .locals 14
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 214
    const/4 v11, 0x0

    .line 216
    .local v11, "re":Lcom/google/zxing/Result;
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 218
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 219
    .local v7, "height":I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 220
    .local v1, "data":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 222
    new-instance v13, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {v13, v3, v7, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 223
    .local v13, "source":Lcom/google/zxing/RGBLuminanceSource;
    new-instance v8, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v13}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v8, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 224
    .local v8, "bitmap1":Lcom/google/zxing/BinaryBitmap;
    new-instance v12, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v12}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .local v12, "reader":Lcom/google/zxing/qrcode/QRCodeReader;
    :try_start_1
    invoke-virtual {v12, v8}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 239
    :goto_0
    if-nez v11, :cond_0

    .line 240
    const v2, 0x7f08007d

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 247
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "data":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v8    # "bitmap1":Lcom/google/zxing/BinaryBitmap;
    .end local v12    # "reader":Lcom/google/zxing/qrcode/QRCodeReader;
    .end local v13    # "source":Lcom/google/zxing/RGBLuminanceSource;
    :goto_1
    return-void

    .line 228
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "data":[I
    .restart local v3    # "width":I
    .restart local v7    # "height":I
    .restart local v8    # "bitmap1":Lcom/google/zxing/BinaryBitmap;
    .restart local v12    # "reader":Lcom/google/zxing/qrcode/QRCodeReader;
    .restart local v13    # "source":Lcom/google/zxing/RGBLuminanceSource;
    :catch_0
    move-exception v9

    .line 229
    .local v9, "e":Lcom/google/zxing/NotFoundException;
    :try_start_2
    invoke-virtual {v9}, Lcom/google/zxing/NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "data":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v8    # "bitmap1":Lcom/google/zxing/BinaryBitmap;
    .end local v9    # "e":Lcom/google/zxing/NotFoundException;
    .end local v12    # "reader":Lcom/google/zxing/qrcode/QRCodeReader;
    .end local v13    # "source":Lcom/google/zxing/RGBLuminanceSource;
    :catch_1
    move-exception v10

    .line 236
    .local v10, "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 230
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "data":[I
    .restart local v3    # "width":I
    .restart local v7    # "height":I
    .restart local v8    # "bitmap1":Lcom/google/zxing/BinaryBitmap;
    .restart local v12    # "reader":Lcom/google/zxing/qrcode/QRCodeReader;
    .restart local v13    # "source":Lcom/google/zxing/RGBLuminanceSource;
    :catch_2
    move-exception v9

    .line 231
    .local v9, "e":Lcom/google/zxing/ChecksumException;
    invoke-virtual {v9}, Lcom/google/zxing/ChecksumException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v9    # "e":Lcom/google/zxing/ChecksumException;
    :catch_3
    move-exception v9

    .line 233
    .local v9, "e":Lcom/google/zxing/FormatException;
    invoke-virtual {v9}, Lcom/google/zxing/FormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 243
    .end local v9    # "e":Lcom/google/zxing/FormatException;
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08007e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 242
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 245
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/com/magnity/magnitycx/StoreActivity;->actionStart(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private shareOnlineImage(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 192
    .local v2, "file":Ljava/io/File;
    :try_start_0
    const-string v6, "temp"

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 193
    new-instance v3, Ljava/io/File;

    const-string v6, "barcode.jpg"

    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 196
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v2, v3

    .line 211
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const-string v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->startActivity(Landroid/content/Intent;)V

    move-object v2, v3

    .line 211
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 197
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->imageView_:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->shareOnlineImage(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ENTER_WECHAT_STORE"

    const-string v2, "\u8fdb\u5165\u5fae\u5e97"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->imageView_:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->readBarcode(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const v8, 0x7f0e0101

    const v7, 0x7f0e0100

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v5, 0x7f04001c

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 56
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    const v5, 0x7f080053

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 61
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 63
    .local v2, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductTypeCaption_:Landroid/widget/TextView;

    .line 69
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductTypeCaption_:Landroid/widget/TextView;

    const v6, 0x7f08004f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    .line 71
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    packed-switch v5, :pswitch_data_0

    .line 92
    :pswitch_0
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    const v5, 0x7f0e007c

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvSWVersionCaption_:Landroid/widget/TextView;

    .line 101
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvSWVersionCaption_:Landroid/widget/TextView;

    const v6, 0x7f080076

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 102
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvSWVersion_:Landroid/widget/TextView;

    .line 103
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvSWVersion_:Landroid/widget/TextView;

    iget-object v6, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    const v5, 0x7f0e007f

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 108
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvRightCaption_:Landroid/widget/TextView;

    .line 109
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvRightCaption_:Landroid/widget/TextView;

    const v6, 0x7f080051

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 110
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvRight_:Landroid/widget/TextView;

    .line 111
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvRight_:Landroid/widget/TextView;

    const v6, 0x7f080024

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const v5, 0x7f0e007d

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvFWVersionCaption_:Landroid/widget/TextView;

    .line 115
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvFWVersionCaption_:Landroid/widget/TextView;

    const v6, 0x7f080022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 116
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvFWVersion_:Landroid/widget/TextView;

    .line 117
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvFWVersion_:Landroid/widget/TextView;

    sget-object v6, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v6, v6, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v6, v6, Lcn/com/magnity/magnitycx/sdk/BasePara1;->swVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_2
    const v5, 0x7f0e007e

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvHWVersionCaption_:Landroid/widget/TextView;

    .line 125
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvHWVersionCaption_:Landroid/widget/TextView;

    const v6, 0x7f080023

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvHWVersion_:Landroid/widget/TextView;

    .line 127
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvHWVersion_:Landroid/widget/TextView;

    sget-object v6, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v6, v6, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v6, v6, Lcn/com/magnity/magnitycx/sdk/BasePara1;->hwVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_3
    const v5, 0x7f0e0080

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 134
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvCompanyCaption_:Landroid/widget/TextView;

    .line 135
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvCompanyCaption_:Landroid/widget/TextView;

    const v6, 0x7f08001e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 136
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvCompany_:Landroid/widget/TextView;

    .line 137
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvCompany_:Landroid/widget/TextView;

    const-string v6, "http://www.magnity.com.cn"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvCompany_:Landroid/widget/TextView;

    const v6, -0xba5578

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvCompany_:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 140
    new-instance v5, Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;

    invoke-direct {v5, p0, v9}, Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;-><init>(Lcn/com/magnity/magnitycx/AboutAboutActivity;Lcn/com/magnity/magnitycx/AboutAboutActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v5, 0x7f0e0081

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->imageView_:Landroid/widget/ImageView;

    .line 145
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->imageView_:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 146
    return-void

    .line 64
    .end local v4    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;

    goto/16 :goto_0

    .line 74
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 77
    :pswitch_2
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 80
    :pswitch_3
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 83
    :pswitch_4
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v6, 0x7f08001b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 86
    :pswitch_5
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 89
    :pswitch_6
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 96
    :cond_1
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvProductType_:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 120
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvFWVersion_:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 130
    :cond_3
    iget-object v5, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->tvHWVersion_:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v3, 0x7f08003e

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 160
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity;->imageView_:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 151
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 253
    :pswitch_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 179
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 185
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 186
    return-void
.end method
