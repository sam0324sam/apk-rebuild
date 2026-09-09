.class public Lorg/apache/log4j/rewrite/MapRewritePolicy;
.super Ljava/lang/Object;
.source "MapRewritePolicy.java"

# interfaces
.implements Lorg/apache/log4j/rewrite/RewritePolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Lorg/apache/log4j/spi/LoggingEvent;)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 16
    .param p1, "source"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v15

    .line 47
    .local v15, "msg":Ljava/lang/Object;
    instance-of v1, v15, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 48
    new-instance v12, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .local v12, "props":Ljava/util/Map;
    move-object v13, v15

    .line 49
    check-cast v13, Ljava/util/Map;

    .line 55
    .local v13, "eventProps":Ljava/util/Map;
    const-string v1, "message"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 56
    .local v7, "newMsg":Ljava/lang/Object;
    if-nez v7, :cond_0

    .line 57
    move-object v7, v15

    .line 60
    :cond_0
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 61
    .local v14, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "entry":Ljava/util/Map$Entry;
    const-string v1, "message"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_2
    new-instance v1, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getFQNOfLoggerClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v11

    invoke-direct/range {v1 .. v12}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V

    .line 81
    .end local v7    # "newMsg":Ljava/lang/Object;
    .end local v12    # "props":Ljava/util/Map;
    .end local v13    # "eventProps":Ljava/util/Map;
    .end local v14    # "iter":Ljava/util/Iterator;
    :goto_2
    return-object v1

    .line 69
    .restart local v7    # "newMsg":Ljava/lang/Object;
    .restart local v12    # "props":Ljava/util/Map;
    .restart local v13    # "eventProps":Ljava/util/Map;
    .restart local v14    # "iter":Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v3

    goto :goto_1

    .end local v7    # "newMsg":Ljava/lang/Object;
    .end local v12    # "props":Ljava/util/Map;
    .end local v13    # "eventProps":Ljava/util/Map;
    .end local v14    # "iter":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v1, p1

    .line 81
    goto :goto_2
.end method
