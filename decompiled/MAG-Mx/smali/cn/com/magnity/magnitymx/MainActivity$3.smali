.class Lcn/com/magnity/magnitymx/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$3;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x7f07009d

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 330
    const-string v6, "MainActivity"

    const-string v7, "wifi\u4fe1\u53f7\u5f3a\u5ea6\u53d8\u5316"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 335
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 336
    iget-object v6, p0, Lcn/com/magnity/magnitymx/MainActivity$3;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/MainActivity;->access$400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    const-string v6, "mIsPTZConnected"

    invoke-static {v6, v9}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 338
    const-string v6, "MainActivity"

    const-string v7, "wifi\u65ad\u5f00"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 360
    .local v5, "wifistate":I
    if-ne v5, v10, :cond_5

    .line 361
    iget-object v6, p0, Lcn/com/magnity/magnitymx/MainActivity$3;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/MainActivity;->access$400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    const-string v6, "mIsPTZConnected"

    invoke-static {v6, v9}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 363
    const-string v6, "MainActivity"

    const-string v7, "\u7cfb\u7edf\u5173\u95edwifi"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v5    # "wifistate":I
    :cond_2
    :goto_1
    return-void

    .line 339
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 341
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 343
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "ssid":Ljava/lang/String;
    const-string v6, "MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8fde\u63a5\u5230\u7f51\u7edc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v6, "HERO-RC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 347
    .local v1, "match":Z
    const-string v6, "MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", match:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-eqz v1, :cond_4

    .line 349
    iget-object v6, p0, Lcn/com/magnity/magnitymx/MainActivity$3;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/MainActivity;->access$400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f07009f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    const-string v6, "mIsPTZConnected"

    invoke-static {v6, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 352
    :cond_4
    iget-object v6, p0, Lcn/com/magnity/magnitymx/MainActivity$3;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/MainActivity;->access$400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    const-string v6, "mIsPTZConnected"

    invoke-static {v6, v9}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 364
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "match":Z
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v5    # "wifistate":I
    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 365
    const-string v6, "MainActivity"

    const-string v7, "\u7cfb\u7edf\u5f00\u542fwifi"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
