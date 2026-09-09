.class public Lcn/com/magnity/magnitycx/sdk/MsgBus;
.super Ljava/lang/Object;
.source "MsgBus.java"


# static fields
.field private static mInstance:Lcn/com/magnity/magnitycx/sdk/MsgBus;

.field private static mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/com/magnity/magnitycx/sdk/MsgBus;
    .locals 3

    .prologue
    .line 17
    const-class v1, Lcn/com/magnity/magnitycx/sdk/MsgBus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mInstance:Lcn/com/magnity/magnitycx/sdk/MsgBus;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;

    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/com/magnity/magnitycx/sdk/MsgBus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mInstance:Lcn/com/magnity/magnitycx/sdk/MsgBus;

    .line 20
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mInstance:Lcn/com/magnity/magnitycx/sdk/MsgBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public postEmptytMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 47
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "val"    # I

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 53
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 65
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag1"    # Ljava/lang/String;
    .param p3, "parcel"    # Landroid/os/Parcelable;
    .param p4, "tag2"    # Ljava/lang/String;
    .param p5, "val"    # I

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 72
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 59
    return-void
.end method

.method public register(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 31
    return-void
.end method

.method public register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "actions"    # [Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 36
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 39
    return-void
.end method

.method public unregister(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 42
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    return-void
.end method
