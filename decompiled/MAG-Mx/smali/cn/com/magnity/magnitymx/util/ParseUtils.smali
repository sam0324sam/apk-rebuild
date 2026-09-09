.class public Lcn/com/magnity/magnitymx/util/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParseUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 19
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 19
    .local v14, "t1":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_0

    .line 20
    const/4 v13, 0x0

    .line 46
    :goto_0
    return-object v13

    .line 22
    :cond_0
    const/4 v5, 0x0

    .line 23
    .local v5, "digest":Ljava/security/MessageDigest;
    const/4 v9, 0x0

    .line 24
    .local v9, "in":Ljava/io/FileInputStream;
    const/16 v13, 0x400

    new-array v3, v13, [B

    .line 27
    .local v3, "buffer":[B
    :try_start_0
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 28
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .end local v9    # "in":Ljava/io/FileInputStream;
    .local v10, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v13, 0x0

    const/16 v18, 0x400

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v10, v3, v13, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .local v11, "len":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    .line 30
    const/4 v13, 0x0

    invoke-virtual {v5, v3, v13, v11}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 33
    .end local v11    # "len":I
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 34
    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const/4 v13, 0x0

    goto :goto_0

    .line 32
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    new-instance v2, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v13, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 38
    .local v2, "bigInt":Ljava/math/BigInteger;
    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 39
    .local v12, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    rsub-int/lit8 v7, v13, 0x20

    .line 41
    .local v7, "fillNum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_2

    .line 42
    const/4 v13, 0x0

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v4, v13, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 44
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 46
    .local v16, "t2":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 33
    .end local v2    # "bigInt":Ljava/math/BigInteger;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "fillNum":I
    .end local v8    # "i":I
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v11    # "len":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v16    # "t2":J
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static calcSn(Ljava/io/File;)Ljava/lang/String;
    .locals 18
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 52
    .local v12, "t1":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    const/4 v10, 0x0

    .line 76
    :goto_0
    return-object v10

    .line 55
    :cond_0
    new-instance v2, Lcn/com/magnity/sdk/MagDevice;

    invoke-direct {v2}, Lcn/com/magnity/sdk/MagDevice;-><init>()V

    .line 56
    .local v2, "magDevice":Lcn/com/magnity/sdk/MagDevice;
    new-instance v7, Lcn/com/magnity/sdk/types/DDTPara;

    invoke-direct {v7}, Lcn/com/magnity/sdk/types/DDTPara;-><init>()V

    .line 57
    .local v7, "para":Lcn/com/magnity/sdk/types/DDTPara;
    const/4 v10, 0x0

    .line 58
    .local v10, "sn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    new-array v5, v3, [B

    .line 60
    .local v5, "ddt":[B
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    .local v9, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 62
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/16 v3, 0x14

    const/16 v4, 0x78

    new-instance v6, Lcn/com/magnity/magnitymx/util/ParseUtils$1;

    invoke-direct {v6}, Lcn/com/magnity/magnitymx/util/ParseUtils$1;-><init>()V

    invoke-virtual/range {v2 .. v7}, Lcn/com/magnity/sdk/MagDevice;->loadBufferedDDT(II[BLcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget v3, v7, Lcn/com/magnity/sdk/types/DDTPara;->serialNumber:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 72
    :cond_1
    invoke-virtual {v2}, Lcn/com/magnity/sdk/MagDevice;->unloadDDT()V

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 76
    .local v14, "t2":J
    goto :goto_0

    .line 63
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "t2":J
    :catch_0
    move-exception v8

    .line 64
    .local v8, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_0
.end method
