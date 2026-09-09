.class public Lcn/com/magnity/magnitymx/util/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static mIsInit:Z

.field private static mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 24
    sget-object v0, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/util/log/ILogger;->d(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 36
    sget-object v0, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/util/log/ILogger;->e(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 28
    sget-object v0, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/util/log/ILogger;->i(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static init(Ljava/lang/String;I)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    .line 9
    sget-boolean v1, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mIsInit:Z

    if-eqz v1, :cond_0

    .line 17
    :goto_0
    return-void

    .line 13
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitymx/util/log/LoggerFactory;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/util/log/LoggerFactory;-><init>()V

    .line 14
    .local v0, "loggerFactory":Lcn/com/magnity/magnitymx/util/log/LoggerFactory;
    const-string v1, "log"

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/log/LoggerFactory;->createLogger(Ljava/lang/String;)Lcn/com/magnity/magnitymx/util/log/ILogger;

    move-result-object v1

    sput-object v1, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    .line 15
    sget-object v1, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    invoke-interface {v1, p0, p1}, Lcn/com/magnity/magnitymx/util/log/ILogger;->init(Ljava/lang/String;I)V

    .line 16
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mIsInit:Z

    goto :goto_0
.end method

.method public static t(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 20
    sget-object v0, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/util/log/ILogger;->t(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 32
    sget-object v0, Lcn/com/magnity/magnitymx/util/log/LogUtils;->mLogger:Lcn/com/magnity/magnitymx/util/log/ILogger;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/util/log/ILogger;->w(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
