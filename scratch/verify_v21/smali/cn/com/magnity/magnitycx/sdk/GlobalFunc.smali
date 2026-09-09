.class public Lcn/com/magnity/magnitycx/sdk/GlobalFunc;
.super Ljava/lang/Object;
.source "GlobalFunc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;,
        Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfoComparator;
    }
.end annotation


# static fields
.field public static final MEDIA_IMAGE:I = 0x0

.field public static final MEDIA_OTHER:I = -0x1

.field public static final MEDIA_VIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 90
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v1, ""

    .line 120
    .local v1, "suffix":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 122
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    return-object v1
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static guessMediaTypeBySuffix(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    const/4 v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static intToByteArray(I[BI)V
    .locals 3
    .param p0, "a"    # I
    .param p1, "out"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 106
    array-length v1, p1

    add-int/lit8 v2, p2, 0x4

    if-ge v1, v2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    int-to-byte v1, p0

    aput-byte v1, p1, p2

    .line 111
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 112
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 113
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .param p0, "a"    # I

    .prologue
    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static notifyMediaSync(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public static updateFileList(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 48
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "file":Ljava/io/File;
    new-instance v5, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;

    invoke-direct {v5}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;-><init>()V

    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 61
    .local v4, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    if-nez v4, :cond_2

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 80
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "fileInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;>;"
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v4, v5

    .line 68
    .local v0, "f":Ljava/io/File;
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;

    invoke-direct {v2, v10}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;-><init>(Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;)V

    .line 69
    .local v2, "fileInfo":Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, v2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->lastModified:J

    .line 71
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "fileInfo":Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;
    :cond_3
    new-instance v5, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfoComparator;

    invoke-direct {v5, v10}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfoComparator;-><init>(Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;

    .line 78
    .restart local v2    # "fileInfo":Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;
    iget-object v6, v2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
