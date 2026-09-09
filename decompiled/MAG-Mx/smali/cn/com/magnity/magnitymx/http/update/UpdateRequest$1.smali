.class Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;
.super Ljava/lang/Object;
.source "UpdateRequest.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->checkForUpdate(Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function",
        "<",
        "Lokhttp3/ResponseBody;",
        "Lio/reactivex/ObservableSource",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/update/UpdateRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/update/UpdateRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/update/UpdateRequest;

    .prologue
    .line 83
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;->this$0:Lcn/com/magnity/magnitymx/http/update/UpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;
    .locals 8
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lio/reactivex/ObservableSource",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-object v4

    .line 90
    :cond_0
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;

    .line 91
    .local v3, "item":Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 92
    .local v0, "currentVersionCode":I
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->getVerCode()I

    move-result v5

    if-le v5, v0, :cond_1

    const/4 v2, 0x1

    .line 94
    .local v2, "hasNew":Z
    :goto_1
    const-string v5, "verCode"

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->getVerCode()I

    move-result v6

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v5, "verName"

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->getVerName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v5, "forceUpgrade"

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->isForceUpgrade()Z

    move-result v6

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v5, "apkUrl"

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->getApkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v5, "description"

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v5, "descriptionEn"

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->getDescriptionEn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v5, "mxHasNew"

    invoke-static {v5, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 103
    new-instance v5, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1$1;

    invoke-direct {v5, p0, v2}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1$1;-><init>(Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;Z)V

    invoke-static {v5}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 92
    .end local v2    # "hasNew":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 110
    .end local v0    # "currentVersionCode":I
    .end local v3    # "item":Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;->apply(Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
