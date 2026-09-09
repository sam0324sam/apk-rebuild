.class public Lcn/com/magnity/magnitymx/login/LoginPresenter;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;


# static fields
.field private static final LOGIN_ERROR:I = 0x3

.field private static final LOGIN_FAILED:I = 0x1

.field private static final LOGIN_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LoginPresenter"


# instance fields
.field private isHttpRunning:Z

.field private isRemember:Z

.field private mAddr:Ljava/lang/String;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mGroupId:I

.field private mGroupName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mServerAddr:Ljava/lang/String;

.field private mServerPort:I

.field private mUserId:I

.field private mUserRank:I

.field private mView:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;)V
    .locals 7
    .param p1, "view"    # Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v6, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isHttpRunning:Z

    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->getUserData()V

    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mView:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    .line 58
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mView:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;->setPresenter(Ljava/lang/Object;)V

    .line 59
    const-string v2, ""

    .line 60
    .local v2, "pwd":Ljava/lang/String;
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isRemember:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPassword:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mView:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mAddr:Ljava/lang/String;

    iget v4, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPort:I

    iget-boolean v5, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isRemember:Z

    invoke-interface/range {v0 .. v5}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 64
    iput-boolean v6, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isHttpRunning:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/login/LoginPresenter;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mView:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/login/LoginPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;

    .prologue
    .line 26
    iget v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mUserId:I

    return v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/login/LoginPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mUserId:I

    return p1
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/login/LoginPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/login/LoginPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mUserRank:I

    return p1
.end method

.method static synthetic access$402(Lcn/com/magnity/magnitymx/login/LoginPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mGroupId:I

    return p1
.end method

.method static synthetic access$502(Lcn/com/magnity/magnitymx/login/LoginPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/login/LoginPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isHttpRunning:Z

    return p1
.end method

.method private getServerURL(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 213
    iput p2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mServerPort:I

    .line 214
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mServerAddr:Ljava/lang/String;

    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    const-string v0, "https://cloudapi.magnity.com.cn"

    .line 230
    :goto_0
    return-object v0

    .line 219
    :cond_1
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    move-object v0, p1

    .line 228
    .local v0, "serverURL":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    goto :goto_0

    .line 222
    .end local v0    # "serverURL":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x1bb

    if-ne p2, v1, :cond_3

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "serverURL":Ljava/lang/String;
    goto :goto_1

    .line 225
    .end local v0    # "serverURL":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "serverURL":Ljava/lang/String;
    goto :goto_1
.end method

.method private getUserData()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    .line 198
    .local v0, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->load()V

    .line 199
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v2

    .line 200
    .local v2, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mName:Ljava/lang/String;

    .line 201
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserPwd()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPassword:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getServerAddr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mAddr:Ljava/lang/String;

    .line 203
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getServerPort()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "portStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPort:I

    .line 209
    :goto_0
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isRememberPwd()Z

    move-result v3

    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isRemember:Z

    .line 210
    return-void

    .line 207
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPort:I

    goto :goto_0
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 69
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->getServerURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "serverUrl":Ljava/lang/String;
    new-instance v2, Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {v2, v10}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "apiRequest":Lcn/com/magnity/magnitymx/http/api/ApiRequest;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPassword:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 73
    .local v9, "location":Landroid/location/Location;
    const-string v5, ""

    .line 74
    .local v5, "latitude":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 75
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    .line 77
    :cond_0
    const-string v6, ""

    .line 78
    .local v6, "longitude":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 79
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    .line 81
    :cond_1
    const-string v7, ""

    .line 82
    .local v7, "altitude":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 83
    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .line 85
    :cond_2
    const-string v8, ""

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userLoginRx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v3

    .line 86
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    .line 87
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;

    invoke-direct {v4, p0}, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;-><init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;)V

    .line 88
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v3

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;

    invoke-direct {v4, p0, v2}, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;-><init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V

    .line 111
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcn/com/magnity/magnitymx/login/LoginPresenter$3;

    invoke-direct {v4, p0}, Lcn/com/magnity/magnitymx/login/LoginPresenter$3;-><init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;)V

    .line 123
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v3

    .line 146
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcn/com/magnity/magnitymx/login/LoginPresenter$1;

    invoke-direct {v4, p0}, Lcn/com/magnity/magnitymx/login/LoginPresenter$1;-><init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;)V

    new-instance v8, Lcn/com/magnity/magnitymx/login/LoginPresenter$2;

    invoke-direct {v8, p0}, Lcn/com/magnity/magnitymx/login/LoginPresenter$2;-><init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;)V

    invoke-virtual {v3, v4, v8}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 162
    return-void
.end method

.method public remember(Z)V
    .locals 1
    .param p1, "isRemember"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isRemember:Z

    .line 167
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    .line 168
    .local v0, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setRememberPwd(Z)V

    .line 169
    return-void
.end method

.method public saveData()V
    .locals 8

    .prologue
    .line 173
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v7

    .line 174
    .local v7, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mServerAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mServerAddr:Ljava/lang/String;

    const-string v2, "cloudapi.magnity.com.cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mServerAddr:Ljava/lang/String;

    iget v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mServerPort:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setServerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    .line 180
    .local v0, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/UserInfo;->setLoginStatus(Z)V

    .line 181
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mPassword:Ljava/lang/String;

    iget v3, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mUserRank:I

    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mGroupName:Ljava/lang/String;

    iget v5, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mUserId:I

    iget v6, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mGroupId:I

    invoke-virtual/range {v0 .. v6}, Lcn/com/magnity/magnitymx/data/UserInfo;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 182
    return-void

    .line 177
    .end local v0    # "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    :cond_0
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setServerParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->isHttpRunning:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 194
    :cond_0
    return-void
.end method
