.class public Lcn/com/magnity/magnitymx/media/NetworkItem;
.super Ljava/lang/Object;
.source "NetworkItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_DOWNLOAD:I = 0x1

.field public static final ACTION_UPLOAD:I = 0x0

.field public static final STATUS_COMPLETED:I = 0x1

.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_PAUSE:I = 0x4

.field public static final STATUS_REMOVED:I = 0x3

.field public static final STATUS_RETRY:I = 0x4

.field public static final STATUS_RUNNING:I = 0x0

.field public static final STATUS_WAITING:I = -0x1


# instance fields
.field private mAction:I

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mProgress:D

.field private mResultCode:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFileName:Ljava/lang/String;

    .line 37
    invoke-static {p3}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "directory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFile:Ljava/io/File;

    .line 39
    iput p2, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mAction:I

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mStatus:I

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mProgress:D

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    move v1, v2

    .line 107
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 103
    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 104
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    if-eq v0, p0, :cond_0

    .line 107
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mAction:I

    .line 108
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getmAction()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mAction:I

    return v0
.end method

.method public getmFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getmFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getmProgress()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mProgress:D

    return-wide v0
.end method

.method public getmResultCode()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mResultCode:I

    return v0
.end method

.method public getmStatus()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mStatus:I

    return v0
.end method

.method public setmAction(I)V
    .locals 0
    .param p1, "mAction"    # I

    .prologue
    .line 73
    iput p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mAction:I

    .line 74
    return-void
.end method

.method public setmFile(Ljava/io/File;)V
    .locals 0
    .param p1, "mFile"    # Ljava/io/File;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFile:Ljava/io/File;

    .line 58
    return-void
.end method

.method public setmFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFileName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mFileName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setmProgress(D)V
    .locals 5
    .param p1, "mProgress"    # D

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 83
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mProgress:D

    .line 84
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    .line 85
    iput-wide v2, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mProgress:D

    .line 88
    :cond_0
    return-void
.end method

.method public setmResultCode(I)V
    .locals 0
    .param p1, "mResultCode"    # I

    .prologue
    .line 95
    iput p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mResultCode:I

    .line 96
    return-void
.end method

.method public setmStatus(I)V
    .locals 0
    .param p1, "mStatus"    # I

    .prologue
    .line 65
    iput p1, p0, Lcn/com/magnity/magnitymx/media/NetworkItem;->mStatus:I

    .line 66
    return-void
.end method
