.class public Lcn/com/magnity/magnitymx/data/LocalConfig;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# instance fields
.field private mAlarmTemp:I

.field private mAppLocale:Ljava/lang/String;

.field private mCaptureMode:I

.field private mColorbarHeight:I

.field private mColorbarWidth:I

.field private mCookiesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCsrfToken:Ljava/lang/String;

.field private mEmissivity:F

.field private mEnlargeTempHigh:I

.field private mEnlargeTempLow:I

.field private mIsAlarmOn:I

.field private mIsInVisibleAdjustingMode:Z

.field private mIsIrRefOn:I

.field private mIsIsoOn:I

.field private mIsManualEnlargeOn:I

.field private mIsMaxTraceOn:I

.field private mIsRememberPwd:I

.field private mIsTaskEnabled:I

.field private mIsTaskGotoNextAuto:I

.field private mIsoTempHigh:I

.field private mIsoTempLow:I

.field private mLogId:Ljava/lang/String;

.field private mPaletteIndex:I

.field private mRefAlpha:F

.field private mRoiType:I

.field private mServerAddr:Ljava/lang/String;

.field private mServerBasicURL:Ljava/lang/String;

.field private mServerPort:Ljava/lang/String;

.field private mShowType:I

.field private mStreamType:I

.field private mTaskChildId:J

.field private mTaskFileName:Ljava/lang/String;

.field private mTaskFirstName:Ljava/lang/String;

.field private mTaskLastName:Ljava/lang/String;

.field private mTaskParentId:J

.field private mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

.field private mVisibleAlpha:F

.field private mVisibleFlashMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->load()V

    .line 61
    return-void
.end method


# virtual methods
.method public SetCorrectionParam(F)V
    .locals 2
    .param p1, "emissivity"    # F

    .prologue
    .line 201
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEmissivity:F

    .line 202
    const-string v0, "mEmissivity"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEmissivity:F

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putFloatWithCommit(Ljava/lang/String;F)V

    .line 203
    return-void
.end method

.method public getAlarmTemp()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAlarmTemp:I

    return v0
.end method

.method public getCaptureMode()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCaptureMode:I

    return v0
.end method

.method public getColorbarHeight()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mColorbarHeight:I

    return v0
.end method

.method public getColorbarWidth()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mColorbarWidth:I

    return v0
.end method

.method public getEnlargeTemp()[I
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempLow:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempHigh:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getFixParam()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEmissivity:F

    return v0
.end method

.method public getIsoTemp()[I
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempLow:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempHigh:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getPaletteIndex()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mPaletteIndex:I

    return v0
.end method

.method public getRefAlpha()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRefAlpha:F

    return v0
.end method

.method public getRoiType()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRoiType:I

    return v0
.end method

.method public getServerAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getServerBasicURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mShowType:I

    return v0
.end method

.method public getStreamType()I
    .locals 2

    .prologue
    .line 121
    const-string v0, "mStreamType"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mStreamType:I

    .line 122
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mStreamType:I

    return v0
.end method

.method public getTaskFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskIds()[J
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskParentId:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskChildId:J

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getTaskLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcn/com/magnity/magnitymx/data/UserInfo;->load()Lcn/com/magnity/magnitymx/data/UserInfo;

    .line 368
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    return-object v0
.end method

.method public getVisibleAlpha()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mVisibleAlpha:F

    return v0
.end method

.method public getVisibleFlashMode()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mVisibleFlashMode:I

    return v0
.end method

.method public getVisibleWindowLandscapeBottom()I
    .locals 2

    .prologue
    .line 296
    const-string v0, "mVisibleWindowLandscapeBottom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowLandscapeLeft()I
    .locals 2

    .prologue
    .line 287
    const-string v0, "mVisibleWindowLandscapeLeft"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowLandscapeRight()I
    .locals 2

    .prologue
    .line 293
    const-string v0, "mVisibleWindowLandscapeRight"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowLandscapeTop()I
    .locals 2

    .prologue
    .line 290
    const-string v0, "mVisibleWindowLandscapeTop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowPortraitBottom()I
    .locals 2

    .prologue
    .line 308
    const-string v0, "mVisibleWindowPortraitBottom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowPortraitLeft()I
    .locals 2

    .prologue
    .line 299
    const-string v0, "mVisibleWindowPortraitLeft"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowPortraitRight()I
    .locals 2

    .prologue
    .line 305
    const-string v0, "mVisibleWindowPortraitRight"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowPortraitTop()I
    .locals 2

    .prologue
    .line 302
    const-string v0, "mVisibleWindowPortraitTop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getmAppLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    const-string v0, "mAppLocale"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAppLocale:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAppLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getmCookiesSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCookiesSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getmCsrfToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCsrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getmLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mLogId:Ljava/lang/String;

    return-object v0
.end method

.method public isAlarmOn()Z
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsAlarmOn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInVisibleAdjustingMode()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsInVisibleAdjustingMode:Z

    return v0
.end method

.method public isIrRefOn()Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIrRefOn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsoOn()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualEnlargeOn()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxTraceOn()Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsMaxTraceOn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRememberPwd()Z
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsRememberPwd:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskEnabled()Z
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskEnabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskGotoNextAuto()Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskGotoNextAuto:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const-string v0, "mStreamType"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mStreamType:I

    .line 66
    const-string v0, "mPaletteIndex"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mPaletteIndex:I

    .line 67
    const-string v0, "mIsMaxTraceOn"

    invoke-static {v0, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsMaxTraceOn:I

    .line 68
    const-string v0, "mRoiType"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRoiType:I

    .line 69
    const-string v0, "mShowType"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mShowType:I

    .line 70
    const-string v0, "mIsManualEnlargeOn"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    .line 71
    const-string v0, "mEnlargeTempHigh"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempHigh:I

    .line 72
    const-string v0, "mEnlargeTempLow"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempLow:I

    .line 73
    const-string v0, "mIsIsoOn"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    .line 74
    const-string v0, "mIsoTempHigh"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempHigh:I

    .line 75
    const-string v0, "mIsoTempLow"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempLow:I

    .line 76
    const-string v0, "mEmissivity"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEmissivity:F

    .line 77
    const-string v0, "mIsAlarmOn"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsAlarmOn:I

    .line 78
    const-string v0, "mAlarmTemp"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAlarmTemp:I

    .line 79
    const-string v0, "mIsIrRefOn"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIrRefOn:I

    .line 80
    const-string v0, "mTaskFileName"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFileName:Ljava/lang/String;

    .line 81
    const-string v0, "mTaskFirstName"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFirstName:Ljava/lang/String;

    .line 82
    const-string v0, "mTaskLastName"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskLastName:Ljava/lang/String;

    .line 83
    const-string v0, "mTaskParentId"

    invoke-static {v0, v4, v5}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskParentId:J

    .line 84
    const-string v0, "mTaskChildId"

    invoke-static {v0, v4, v5}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskChildId:J

    .line 85
    const-string v0, "mIsTaskEnabled"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskEnabled:I

    .line 86
    const-string v0, "mIsTaskGotoNextAuto"

    invoke-static {v0, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskGotoNextAuto:I

    .line 87
    const-string v0, "mVisibleAlpha"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mVisibleAlpha:F

    .line 88
    const-string v0, "mRefAlpha"

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRefAlpha:F

    .line 89
    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsInVisibleAdjustingMode:Z

    .line 90
    const-string v0, "mCaptureMode"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCaptureMode:I

    .line 91
    const-string v0, "mVisibleFlashMode"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mVisibleFlashMode:I

    .line 92
    invoke-static {}, Lcn/com/magnity/magnitymx/data/UserInfo;->load()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    .line 93
    const-string v0, "mServerAddr"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    .line 94
    const-string v0, "mServerPort"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    .line 95
    const-string v0, "mIsRememberPwd"

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsRememberPwd:I

    .line 96
    const-string v0, "mServerBasicURL"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    .line 98
    const-string v0, "mCookiesSet"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getStringSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCookiesSet:Ljava/util/HashSet;

    .line 99
    const-string v0, "mCsrfToken"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCsrfToken:Ljava/lang/String;

    .line 100
    const-string v0, "mLogId"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mLogId:Ljava/lang/String;

    .line 102
    const-string v0, "mAppLocale"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAppLocale:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public openAlarm(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 207
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsAlarmOn:I

    .line 208
    const-string v0, "mIsAlarmOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsAlarmOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 209
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openIrRef(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIrRefOn:I

    .line 220
    const-string v0, "mIsIrRefOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIrRefOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 221
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openIso(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    .line 180
    iput v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    .line 184
    :goto_0
    const-string v0, "mIsManualEnlargeOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v0, "mIsIsoOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 187
    return-void

    .line 182
    :cond_0
    iput v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    goto :goto_0
.end method

.method public openManualEnlarge(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    .line 155
    iput v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    .line 159
    :goto_0
    const-string v0, "mIsManualEnlargeOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v0, "mIsIsoOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsIsoOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 162
    return-void

    .line 157
    :cond_0
    iput v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsManualEnlargeOn:I

    goto :goto_0
.end method

.method public setAlarmTemp(I)V
    .locals 2
    .param p1, "temp"    # I

    .prologue
    .line 213
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAlarmTemp:I

    .line 214
    const-string v0, "mAlarmTemp"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAlarmTemp:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 351
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCaptureMode:I

    .line 352
    const-string v0, "mCaptureMode"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public setColorbarSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 106
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mColorbarWidth:I

    .line 107
    iput p2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mColorbarHeight:I

    .line 108
    return-void
.end method

.method public setEnlargeTemp(II)V
    .locals 2
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 164
    iput p2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempHigh:I

    .line 165
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempLow:I

    .line 166
    const-string v0, "mEnlargeTempHigh"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempHigh:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v0, "mEnlargeTempLow"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mEnlargeTempLow:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 169
    return-void
.end method

.method public setIsoTemp(II)V
    .locals 2
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 190
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempLow:I

    .line 191
    iput p2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempHigh:I

    .line 192
    const-string v0, "mIsoTempLow"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempLow:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v0, "mIsoTempHigh"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsoTempHigh:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 195
    return-void
.end method

.method public setMaxTraceOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsMaxTraceOn:I

    .line 134
    const-string v0, "mIsMaxTraceOn"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsMaxTraceOn:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 135
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPaletteIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 126
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mPaletteIndex:I

    .line 127
    const-string v0, "mPaletteIndex"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mPaletteIndex:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public setRefAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 336
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRefAlpha:F

    .line 337
    const-string v0, "mRefAlpha"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putFloatWithCommit(Ljava/lang/String;F)V

    .line 338
    return-void
.end method

.method public setRememberPwd(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 424
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsRememberPwd:I

    .line 425
    const-string v0, "mIsRememberPwd"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsRememberPwd:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 426
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoiType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 138
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRoiType:I

    .line 139
    const-string v0, "mRoiType"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mRoiType:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public setServerAddr(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverAddr"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    .line 403
    const-string v0, "mServerAddr"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setServerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x1bb

    .line 372
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    .line 375
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    .line 377
    const-string v0, "mServerAddr"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "mServerPort"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    const-string v0, "mServerBasicURL"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    .line 387
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    .line 391
    :cond_3
    const-string v0, "mServerAddr"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "mServerPort"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerBasicURL:Ljava/lang/String;

    goto :goto_1
.end method

.method public setServerPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverPort"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mServerPort:Ljava/lang/String;

    .line 412
    const-string v0, "mServerPort"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setShowType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 144
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mShowType:I

    .line 145
    const-string v0, "mShowType"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mShowType:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public setStreamType(I)V
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 117
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mStreamType:I

    .line 118
    const-string v0, "mStreamType"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mStreamType:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method public setTaskEnabled(Z)V
    .locals 2
    .param p1, "bEnabled"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskEnabled:I

    .line 275
    const-string v0, "mIsTaskEnabled"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskEnabled:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 276
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTaskFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFileName:Ljava/lang/String;

    .line 226
    const-string v0, "mTaskFileName"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setTaskFirstName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFirstName:Ljava/lang/String;

    .line 234
    const-string v0, "mTaskFirstName"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskFirstName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setTaskGotoNextAuto(Z)V
    .locals 2
    .param p1, "bEnabled"    # Z

    .prologue
    .line 282
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskGotoNextAuto:I

    .line 283
    const-string v0, "mIsTaskGotoNextAuto"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsTaskGotoNextAuto:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 284
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTaskIds([J)V
    .locals 5
    .param p1, "ids"    # [J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 253
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 254
    :cond_0
    iput-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskParentId:J

    .line 255
    iput-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskChildId:J

    .line 263
    :goto_0
    const-string v0, "mTaskParentId"

    iget-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskParentId:J

    invoke-static {v0, v2, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v0, "mTaskChildId"

    iget-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskChildId:J

    invoke-static {v0, v2, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putLongWithCommit(Ljava/lang/String;J)V

    .line 265
    return-void

    .line 256
    :cond_1
    array-length v0, p1

    if-ne v0, v4, :cond_2

    .line 257
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskParentId:J

    .line 258
    iput-wide v2, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskChildId:J

    goto :goto_0

    .line 260
    :cond_2
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskParentId:J

    .line 261
    aget-wide v0, p1, v4

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskChildId:J

    goto :goto_0
.end method

.method public setTaskLastName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskLastName:Ljava/lang/String;

    .line 246
    const-string v0, "mTaskLastName"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mTaskLastName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public setVisibleAdjustingMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mIsInVisibleAdjustingMode:Z

    .line 348
    return-void
.end method

.method public setVisibleAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 328
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mVisibleAlpha:F

    .line 329
    const-string v0, "mVisibleAlpha"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putFloatWithCommit(Ljava/lang/String;F)V

    .line 330
    return-void
.end method

.method public setVisibleFlashMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 359
    iput p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mVisibleFlashMode:I

    .line 360
    const-string v0, "mVisibleFlashMode"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 361
    return-void
.end method

.method public setVisibleWindowLandscape(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 312
    const-string v0, "mVisibleWindowLandscapeLeft"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    const-string v0, "mVisibleWindowLandscapeTop"

    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    const-string v0, "mVisibleWindowLandscapeRight"

    invoke-static {v0, p3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v0, "mVisibleWindowLandscapeBottom"

    invoke-static {v0, p4}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 317
    return-void
.end method

.method public setVisibleWindowPortrait(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 320
    const-string v0, "mVisibleWindowPortraitLeft"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v0, "mVisibleWindowPortraitTop"

    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 322
    const-string v0, "mVisibleWindowPortraitRight"

    invoke-static {v0, p3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v0, "mVisibleWindowPortraitBottom"

    invoke-static {v0, p4}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 325
    return-void
.end method

.method public setmAppLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "mAppLocale"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mAppLocale:Ljava/lang/String;

    .line 470
    const-string v0, "mAppLocale"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public setmCookiesSet(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cookiesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 437
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    :cond_0
    return-void

    .line 440
    :cond_1
    const-string v3, "mCookiesSet"

    invoke-static {v3, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringSetWithCommit(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 441
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCookiesSet:Ljava/util/HashSet;

    .line 442
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, "s":Ljava/lang/String;
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "tempCookieParts":[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v6, :cond_2

    .line 445
    aget-object v4, v2, v7

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "tempCookieKeyValue":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 447
    aget-object v4, v1, v7

    const-string v5, "csrftoken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    aget-object v4, v1, v6

    iput-object v4, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mCsrfToken:Ljava/lang/String;

    .line 449
    const-string v4, "mCsrfToken"

    aget-object v5, v1, v6

    invoke-static {v4, v5}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_3
    aget-object v4, v1, v7

    const-string v5, "logid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    aget-object v4, v1, v6

    iput-object v4, p0, Lcn/com/magnity/magnitymx/data/LocalConfig;->mLogId:Ljava/lang/String;

    .line 452
    const-string v4, "mLogId"

    aget-object v5, v1, v6

    invoke-static {v4, v5}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putStringWithCommit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
