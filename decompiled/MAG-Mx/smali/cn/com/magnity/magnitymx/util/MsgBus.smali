.class public Lcn/com/magnity/magnitymx/util/MsgBus;
.super Ljava/lang/Object;
.source "MsgBus.java"


# static fields
.field private static mInstance:Lcn/com/magnity/magnitymx/util/MsgBus;

.field private static mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;
    .locals 3

    .prologue
    .line 16
    const-class v1, Lcn/com/magnity/magnitymx/util/MsgBus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitymx/util/MsgBus;->mInstance:Lcn/com/magnity/magnitymx/util/MsgBus;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcn/com/magnity/magnitymx/util/MsgBus;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/com/magnity/magnitymx/util/MsgBus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/magnity/magnitymx/util/MsgBus;->mInstance:Lcn/com/magnity/magnitymx/util/MsgBus;

    .line 19
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/util/MsgBus;->mInstance:Lcn/com/magnity/magnitymx/util/MsgBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
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
    .line 45
    sget-object v0, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 46
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "val"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 52
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag1"    # Ljava/lang/String;
    .param p3, "val1"    # I
    .param p4, "tag2"    # Ljava/lang/String;
    .param p5, "val2"    # I

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 59
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 71
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
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 85
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 65
    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;[JLjava/lang/String;[J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag1"    # Ljava/lang/String;
    .param p3, "val1s"    # [J
    .param p4, "tag2"    # Ljava/lang/String;
    .param p5, "val2s"    # [J

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 77
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 78
    return-void
.end method

.method public register(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    return-void
.end method

.method public register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "actions"    # [Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 35
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 38
    return-void
.end method

.method public unregister(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 41
    sget-object v0, Lcn/com/magnity/magnitymx/util/MsgBus;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    return-void
.end method
