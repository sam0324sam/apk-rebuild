.class public Lcn/com/magnity/magnitymx/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 57
    :cond_0
    const-string v4, ""

    .line 70
    :goto_0
    return-object v4

    .line 59
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_4

    .line 60
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 61
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-eqz p1, :cond_3

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_3

    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static convertIpAddr(Ljava/lang/String;)I
    .locals 9
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 37
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "arr":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    move v3, v5

    .line 51
    :cond_0
    :goto_0
    return v3

    .line 42
    :cond_1
    const/4 v3, 0x0

    .local v3, "r":I
    const/4 v2, 0x0

    .line 43
    .local v2, "i":I
    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 44
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "d":I
    const/16 v8, 0xff

    if-gt v1, v8, :cond_2

    if-gez v1, :cond_3

    :cond_2
    move v3, v5

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    shl-int v8, v1, v2

    or-int/2addr v3, v8

    .line 49
    add-int/lit8 v2, v2, 0x8

    .line 43
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static convertIpAddr(I)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # I

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/16 v7, 0x400

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 274
    .local v4, "fis":Ljava/io/FileInputStream;
    new-array v1, v7, [B

    .line 278
    .local v1, "buffer":[B
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 279
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 280
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 281
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 286
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 287
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    :cond_0
    :goto_2
    const/4 v7, 0x0

    .line 294
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v7

    .line 283
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 293
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 294
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 289
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "len":I
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 284
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static getLocalVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 77
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v3

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get packet name("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 308
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 310
    .local v3, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 311
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 322
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 324
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 325
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static gpsConvert(Ljava/lang/String;)D
    .locals 18
    .param p0, "gpsValue"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v12, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "strings":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v12, v9

    if-nez v12, :cond_2

    .line 219
    :cond_0
    const-wide/16 v10, 0x0

    .line 241
    :cond_1
    :goto_0
    return-wide v10

    .line 222
    :cond_2
    const-wide/16 v10, 0x0

    .line 223
    .local v10, "val":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 226
    .local v4, "factor":D
    array-length v13, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_1

    aget-object v8, v9, v12

    .line 227
    .local v8, "s":Ljava/lang/String;
    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "lr":[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v14, v6

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    .line 229
    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 232
    :cond_4
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 233
    .local v3, "l":I
    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 237
    .local v7, "r":I
    int-to-double v14, v3

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    div-double/2addr v14, v4

    add-double/2addr v10, v14

    .line 238
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v14

    .line 226
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 234
    .end local v3    # "l":I
    .end local v7    # "r":I
    :catch_0
    move-exception v2

    .line 235
    .local v2, "ex":Ljava/lang/Exception;
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method private static gpsConvert(DZ)Ljava/lang/String;
    .locals 10
    .param p0, "gpsValue"    # D
    .param p2, "dms"    # Z

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 195
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 196
    if-eqz p2, :cond_0

    .line 197
    double-to-int v0, p0

    .line 198
    .local v0, "d":I
    int-to-double v6, v0

    sub-double v6, p0, v6

    mul-double v4, v6, v8

    .line 199
    .local v4, "t":D
    double-to-int v1, v4

    .line 200
    .local v1, "m":I
    int-to-double v6, v1

    sub-double/2addr v4, v6

    .line 201
    mul-double v6, v4, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 202
    .local v2, "s":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v6, "/1,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v6, "/1,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v6, "/1000000"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    .end local v1    # "m":I
    .end local v2    # "s":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "t":D
    :goto_0
    return-object v6

    .line 211
    .end local v0    # "d":I
    :cond_0
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, p0

    double-to-int v0, v6

    .line 212
    .restart local v0    # "d":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, "installIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getOthersStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v0, "apkFile":Ljava/io/File;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 337
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    const-string v3, "cn.com.magnity.magnitymx.fileprovider"

    invoke-static {p0, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 340
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    .end local v1    # "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void

    .line 342
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static isIp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v0, "([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}"

    .line 299
    .local v0, "ipPattern":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 300
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 301
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static readGpsFromJpg(Ljava/lang/String;)Landroid/location/Location;
    .locals 14
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v12, "GPSLongitude"

    invoke-virtual {v2, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "sLongitude":Ljava/lang/String;
    const-string v12, "GPSLongitudeRef"

    invoke-virtual {v2, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "sLongitudeRef":Ljava/lang/String;
    const-string v12, "GPSLatitude"

    invoke-virtual {v2, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "sLatitude":Ljava/lang/String;
    const-string v12, "GPSLatitudeRef"

    invoke-virtual {v2, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "sLatitudeRef":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    if-nez v7, :cond_1

    :cond_0
    move-object v1, v2

    .line 268
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v6    # "sLatitude":Ljava/lang/String;
    .end local v7    # "sLatitudeRef":Ljava/lang/String;
    .end local v8    # "sLongitude":Ljava/lang/String;
    .end local v9    # "sLongitudeRef":Ljava/lang/String;
    .restart local v1    # "exifInterface":Landroid/media/ExifInterface;
    :goto_0
    return-object v4

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/io/IOException;
    const-string v10, "Fail to add gps info to jpg"

    invoke-static {v10}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v6    # "sLatitude":Ljava/lang/String;
    .restart local v7    # "sLatitudeRef":Ljava/lang/String;
    .restart local v8    # "sLongitude":Ljava/lang/String;
    .restart local v9    # "sLongitudeRef":Ljava/lang/String;
    :cond_1
    const-string v12, "E"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v5, v10

    .line 263
    .local v5, "lonRef":I
    :goto_1
    const-string v12, "N"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v3, v10

    .line 265
    .local v3, "latRef":I
    :goto_2
    new-instance v4, Landroid/location/Location;

    const-string v10, ""

    invoke-direct {v4, v10}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 266
    .local v4, "location":Landroid/location/Location;
    invoke-static {v8}, Lcn/com/magnity/magnitymx/util/Utils;->gpsConvert(Ljava/lang/String;)D

    move-result-wide v10

    int-to-double v12, v3

    mul-double/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 267
    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/Utils;->gpsConvert(Ljava/lang/String;)D

    move-result-wide v10

    int-to-double v12, v3

    mul-double/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    move-object v1, v2

    .line 268
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v1    # "exifInterface":Landroid/media/ExifInterface;
    goto :goto_0

    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "latRef":I
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "lonRef":I
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    :cond_2
    move v5, v11

    .line 262
    goto :goto_1

    .restart local v5    # "lonRef":I
    :cond_3
    move v3, v11

    .line 263
    goto :goto_2
.end method

.method private static writeGpsToJpg(Landroid/media/ExifInterface;Landroid/location/Location;)Z
    .locals 12
    .param p0, "exifInterface"    # Landroid/media/ExifInterface;
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 160
    const-string v3, "GPSVersionID"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "GPSLongitude"

    .line 161
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "GPSLongitudeRef"

    .line 162
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "GPSLatitude"

    .line 163
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "GPSLatitudeRef"

    .line 164
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "GPSAltitude"

    .line 165
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "GPSAltitudeRef"

    .line 166
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 167
    :cond_0
    const/4 v3, 0x0

    .line 191
    :goto_0
    return v3

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v6, v8, v10

    .line 172
    .local v6, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v4, v8, v10

    .line 173
    .local v4, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v0, v8

    .line 175
    .local v0, "altitude":D
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v3, v8, :cond_2

    .line 176
    const-string v3, "GPSVersionID"

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x4

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    const-string v3, "GPSLongitude"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcn/com/magnity/magnitymx/util/Utils;->gpsConvert(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v8, "GPSLongitudeRef"

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-ltz v3, :cond_3

    const-string v3, "E"

    :goto_1
    invoke-virtual {p0, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "GPSLatitude"

    const/4 v8, 0x1

    invoke-static {v4, v5, v8}, Lcn/com/magnity/magnitymx/util/Utils;->gpsConvert(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v8, "GPSLatitudeRef"

    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-ltz v3, :cond_4

    const-string v3, "N"

    :goto_2
    invoke-virtual {p0, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "GPSAltitude"

    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Lcn/com/magnity/magnitymx/util/Utils;->gpsConvert(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v8, "GPSAltitudeRef"

    const-wide/16 v10, 0x0

    cmpl-double v3, v0, v10

    if-ltz v3, :cond_5

    const-string v3, "0"

    :goto_3
    invoke-virtual {p0, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 179
    :cond_3
    const-string v3, "W"

    goto :goto_1

    .line 181
    :cond_4
    const-string v3, "S"

    goto :goto_2

    .line 183
    :cond_5
    const-string v3, "1"

    goto :goto_3

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "Fail to add gps info to jpg"

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 189
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 176
    :array_0
    .array-data 1
        0x2t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method public static writeGpsToJpg(Ljava/lang/String;Landroid/location/Location;)Z
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return v2

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .restart local v1    # "exifInterface":Landroid/media/ExifInterface;
    invoke-static {v1, p1}, Lcn/com/magnity/magnitymx/util/Utils;->writeGpsToJpg(Landroid/media/ExifInterface;Landroid/location/Location;)Z

    move-result v2

    goto :goto_0

    .line 93
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "Fail to add gps info to jpg"

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static writeGpsToJpg([BLandroid/location/Location;)[B
    .locals 14
    .param p0, "jpgBuf"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v10, 0x0

    .line 101
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v10

    .line 156
    :goto_0
    return-object v0

    .line 105
    :cond_1
    const/4 v6, 0x0

    .line 106
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 109
    .local v8, "tempFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v11

    invoke-static {v11}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    const-string v12, "temp.jpg"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v8    # "tempFile":Ljava/io/File;
    .local v9, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 111
    .end local v6    # "os":Ljava/io/OutputStream;
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v7, p0}, Ljava/io/OutputStream;->write([B)V

    .line 112
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 126
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p1}, Lcn/com/magnity/magnitymx/util/Utils;->writeGpsToJpg(Ljava/lang/String;Landroid/location/Location;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 127
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-object v0, v10

    .line 128
    goto :goto_0

    .line 113
    .end local v7    # "os":Ljava/io/OutputStream;
    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v8    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "ex":Ljava/io/IOException;
    :goto_1
    if-eqz v6, :cond_2

    .line 116
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-object v0, v10

    .line 123
    goto :goto_0

    .line 117
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-object v0, v10

    .line 119
    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v7    # "os":Ljava/io/OutputStream;
    .restart local v9    # "tempFile":Ljava/io/File;
    :cond_3
    const/4 v3, 0x0

    .line 132
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v5, v12

    .line 133
    .local v5, "len":I
    new-array v0, v5, [B

    .line 135
    .local v0, "b":[B
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 136
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v4, v0, v11, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-eq v11, v5, :cond_4

    .line 137
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-object v0, v10

    .line 139
    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 142
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v2

    move-object v3, v4

    .line 144
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "ex":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_2
    if-eqz v3, :cond_5

    .line 146
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 147
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 153
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-object v0, v10

    .line 154
    goto :goto_0

    .line 148
    :catch_3
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-object v0, v10

    .line 150
    goto :goto_0

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_2

    .line 113
    .end local v0    # "b":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v2

    move-object v8, v9

    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v8    # "tempFile":Ljava/io/File;
    goto :goto_1

    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v7    # "os":Ljava/io/OutputStream;
    .restart local v9    # "tempFile":Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v8, v9

    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v8    # "tempFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method
