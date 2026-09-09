.class public Lcn/com/magnity/magnitymx/util/log/Log4jImpl;
.super Ljava/lang/Object;
.source "Log4jImpl.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/util/log/ILogger;


# static fields
.field private static final MAX_FILE_SIZE:I = 0xa00000


# instance fields
.field private mLogger:Lorg/apache/log4j/Logger;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mTag:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 25
    new-instance v1, Lorg/apache/log4j/PatternLayout;

    invoke-direct {v1}, Lorg/apache/log4j/PatternLayout;-><init>()V

    .line 26
    .local v1, "patternLayout":Lorg/apache/log4j/PatternLayout;
    const-string v4, "%d{yyyy-MM-dd HH:mm:ss} -%-5.5p- %m %n"

    invoke-virtual {v1, v4}, Lorg/apache/log4j/PatternLayout;->setConversionPattern(Ljava/lang/String;)V

    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    :try_start_0
    new-instance v3, Lorg/apache/log4j/RollingFileAppender;

    const/4 v4, 0x1

    invoke-direct {v3, v1, p1, v4}, Lorg/apache/log4j/RollingFileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v2    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    .local v3, "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    const-wide/32 v4, 0xa00000

    :try_start_1
    invoke-virtual {v3, v4, v5}, Lorg/apache/log4j/RollingFileAppender;->setMaximumFileSize(J)V

    .line 32
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/log4j/RollingFileAppender;->setMaxBackupIndex(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 36
    .end local v3    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    .restart local v2    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    :goto_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mTag:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v4

    iput-object v4, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    .line 37
    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v4, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 40
    packed-switch p2, :pswitch_data_0

    .line 57
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    .line 61
    .local v0, "l":Lorg/apache/log4j/Level;
    :goto_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v4, v0}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 62
    return-void

    .line 42
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :pswitch_0
    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    .line 43
    .restart local v0    # "l":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 45
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :pswitch_1
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 46
    .restart local v0    # "l":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 48
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :pswitch_2
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    .line 49
    .restart local v0    # "l":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 51
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :pswitch_3
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    .line 52
    .restart local v0    # "l":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 54
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :pswitch_4
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    .line 55
    .restart local v0    # "l":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 33
    .end local v0    # "l":Lorg/apache/log4j/Level;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    .restart local v3    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    .restart local v2    # "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public t(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/log/Log4jImpl;->mLogger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method
