.class public Lcn/com/magnity/magnitymx/util/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLogger(Ljava/lang/String;)Lcn/com/magnity/magnitymx/util/log/ILogger;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 9
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-nez v1, :cond_0

    .line 10
    new-instance v0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;

    invoke-direct {v0, p1}, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "ins":Lcn/com/magnity/magnitymx/util/log/ILogger;
    :goto_0
    return-object v0

    .line 12
    .end local v0    # "ins":Lcn/com/magnity/magnitymx/util/log/ILogger;
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitymx/util/log/LogPrintImpl;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/util/log/LogPrintImpl;-><init>()V

    .restart local v0    # "ins":Lcn/com/magnity/magnitymx/util/log/ILogger;
    goto :goto_0
.end method
