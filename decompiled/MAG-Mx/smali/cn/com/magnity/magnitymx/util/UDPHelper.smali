.class public Lcn/com/magnity/magnitymx/util/UDPHelper;
.super Ljava/lang/Object;
.source "UDPHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HEX_ARRAY:[C

.field private static final LISTENING_PORT:I = 0x2124

.field private static final TAG:Ljava/lang/String; = "UDPHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWorking:Z

.field private mLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitymx/util/UDPHelper;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mIsWorking:Z

    .line 27
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "localWifi"

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 29
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 142
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 143
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 144
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 145
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcn/com/magnity/magnitymx/util/UDPHelper;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 146
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcn/com/magnity/magnitymx/util/UDPHelper;->HEX_ARRAY:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private reply(Ljava/net/DatagramPacket;)V
    .locals 14
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    const/16 v13, 0xe

    const/4 v12, 0x1

    const/16 v11, 0xd

    .line 68
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    .line 69
    .local v7, "targetAddress":Ljava/net/SocketAddress;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mIsWorking:Z

    if-eqz v8, :cond_4

    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, "replyBytes":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 73
    .local v5, "receiveBytes":[B
    array-length v8, v5

    if-ne v8, v13, :cond_5

    .line 74
    const/16 v8, 0x8

    aget-byte v8, v5, v8

    if-ne v8, v12, :cond_0

    const/16 v8, 0xd

    aget-byte v8, v5, v8

    if-ne v8, v12, :cond_0

    .line 75
    const-string v8, "UDPHelper"

    const-string v9, "receive broadcast"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v8, 0xe

    new-array v6, v8, [B

    .line 77
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-static {v5, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/16 v8, 0xd

    const/4 v9, 0x0

    aput-byte v9, v6, v8

    .line 80
    :cond_0
    const/16 v8, 0x8

    aget-byte v8, v5, v8

    if-ne v8, v12, :cond_1

    const/16 v8, 0xd

    aget-byte v8, v5, v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 81
    const-string v8, "UDPHelper"

    const-string v9, "receive snap"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/16 v8, 0xf

    new-array v6, v8, [B

    .line 83
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    invoke-static {v5, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "currentTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nreceive snap:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/UDPHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 86
    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/UDPHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nwill be replied"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "msg":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "ptz_command"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v8, "ptz_command_value"

    const/4 v9, 0x2

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object v8, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "currentTime":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x8

    aget-byte v8, v5, v8

    if-nez v8, :cond_3

    const/16 v8, 0xd

    aget-byte v8, v5, v8

    if-eqz v8, :cond_2

    const/16 v8, 0xd

    aget-byte v8, v5, v8

    if-eq v8, v12, :cond_2

    const/16 v8, 0xd

    aget-byte v8, v5, v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 95
    :cond_2
    const-string v8, "UDPHelper"

    const-string v9, "receive mode switch"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v8, 0xf

    new-array v6, v8, [B

    .line 97
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static {v5, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/16 v8, 0xe

    const/4 v9, 0x1

    aput-byte v9, v6, v8

    .line 99
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "currentTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nreceive mode switch:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/UDPHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 101
    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/UDPHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nwill be replied"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "ptz_command"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v8, "ptz_command_value"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v8, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    .end local v0    # "currentTime":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    :goto_0
    if-nez v6, :cond_6

    .line 115
    const-string v8, "UDPHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\nreceive unknown packet:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/UDPHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v5    # "receiveBytes":[B
    .end local v6    # "replyBytes":[B
    :cond_4
    :goto_1
    return-void

    .line 108
    .restart local v5    # "receiveBytes":[B
    .restart local v6    # "replyBytes":[B
    :cond_5
    array-length v8, v5

    if-ne v8, v11, :cond_3

    .line 109
    const-string v8, "UDPHelper"

    const-string v9, "receive keep-alive"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v8, 0x14

    new-array v6, v8, [B

    .line 111
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    invoke-static {v5, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    const/16 v8, 0x10

    const/4 v9, 0x1

    aput-byte v9, v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v5    # "receiveBytes":[B
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const-string v8, "UDPHelper"

    const-string v9, "send udp packet exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "receiveBytes":[B
    :cond_6
    :try_start_1
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v8, v6

    invoke-direct {v4, v6, v8, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 119
    .local v4, "newPacket":Ljava/net/DatagramPacket;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public killThread()V
    .locals 2

    .prologue
    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mIsWorking:Z

    .line 131
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    .line 133
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/UDPHelper;->startListen()V

    .line 35
    return-void
.end method

.method public startListen()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 39
    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mIsWorking:Z

    .line 40
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 42
    .local v1, "message":[B
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    if-nez v3, :cond_0

    .line 43
    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    .line 44
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 45
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    const/16 v5, 0x2124

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 47
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mIsWorking:Z

    if-eqz v3, :cond_1

    .line 48
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 49
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 50
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v2, "packet":Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/util/UDPHelper;->reply(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 59
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 63
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/UDPHelper;->killThread()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 53
    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 63
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/UDPHelper;->killThread()V

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 63
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/UDPHelper;->killThread()V

    throw v3
.end method
