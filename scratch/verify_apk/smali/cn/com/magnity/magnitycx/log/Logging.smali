.class public Lcn/com/magnity/magnitycx/log/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field private static logger_:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 26
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 44
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 50
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->fatal(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 32
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

.method public static init(Lorg/apache/log4j/Level;)Z
    .locals 8
    .param p0, "level"    # Lorg/apache/log4j/Level;

    .prologue
    const/4 v5, 0x0

    .line 56
    sget-object v6, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v6, v6, Lcn/com/magnity/magnitycx/sdk/MagParameter;->logDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    :goto_0
    return v5

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v2, "fileName":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, "Android_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v7, v7, Lcn/com/magnity/magnitycx/sdk/MagParameter;->logDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "pathName":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/apache/log4j/PatternLayout;

    invoke-direct {v4}, Lorg/apache/log4j/PatternLayout;-><init>()V

    .line 75
    .local v4, "patternLayout":Lorg/apache/log4j/PatternLayout;
    const-string v6, "%d{yyyy-MM-dd HH:mm:ss} -%-5.5p- %m %n"

    invoke-virtual {v4, v6}, Lorg/apache/log4j/PatternLayout;->setConversionPattern(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lorg/apache/log4j/FileAppender;

    invoke-direct {v1, v4, v3}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V

    .line 77
    .local v1, "fileAppender":Lorg/apache/log4j/FileAppender;
    const-class v6, Lcn/com/magnity/magnitycx/log/Logging;

    invoke-static {v6}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v6

    sput-object v6, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    .line 78
    sget-object v6, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v6, v1}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    sget-object v5, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v5, p0}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 85
    const/4 v5, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "fileAppender":Lorg/apache/log4j/FileAppender;
    .end local v4    # "patternLayout":Lorg/apache/log4j/PatternLayout;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    sput-object v6, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    goto :goto_0
.end method

.method public static trace(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 20
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 38
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcn/com/magnity/magnitycx/log/Logging;->logger_:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method
