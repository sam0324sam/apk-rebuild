.class public Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;
.super Ljava/lang/Object;
.source "ReflectionRewritePolicy.java"

# interfaces
.implements Lorg/apache/log4j/rewrite/RewritePolicy;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public rewrite(Lorg/apache/log4j/spi/LoggingEvent;)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 19
    .param p1, "source"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v16

    .line 47
    .local v16, "msg":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 48
    move-object/from16 v9, v16

    .line 49
    .local v9, "newMsg":Ljava/lang/Object;
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .local v14, "rewriteProps":Ljava/util/Map;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.Object"

    invoke-static {v3}, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    :goto_0
    invoke-static {v4, v3}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v3

    invoke-interface {v3}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v18

    .line 54
    .local v18, "props":[Ljava/beans/PropertyDescriptor;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_2

    .line 55
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v15, v3, :cond_3

    .line 57
    :try_start_1
    aget-object v3, v18, v15

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 60
    .local v17, "propertyValue":Ljava/lang/Object;
    const-string v3, "message"

    aget-object v4, v18, v15

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    move-object/from16 v9, v17

    .line 55
    .end local v17    # "propertyValue":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 52
    .end local v15    # "i":I
    .end local v18    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_0
    :try_start_2
    sget-object v3, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 63
    .restart local v15    # "i":I
    .restart local v17    # "propertyValue":Ljava/lang/Object;
    .restart local v18    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_1
    :try_start_3
    aget-object v3, v18, v15

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v14, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 65
    .end local v17    # "propertyValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to evaluate property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v18, v15

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v18    # "props":[Ljava/beans/PropertyDescriptor;
    :catch_1
    move-exception v2

    .line 83
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Unable to get property descriptors"

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "newMsg":Ljava/lang/Object;
    .end local v14    # "rewriteProps":Ljava/util/Map;
    :cond_2
    move-object/from16 v3, p1

    .line 87
    :goto_3
    return-object v3

    .line 70
    .restart local v9    # "newMsg":Ljava/lang/Object;
    .restart local v14    # "rewriteProps":Ljava/util/Map;
    .restart local v15    # "i":I
    .restart local v18    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_3
    :try_start_5
    new-instance v3, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getFQNOfLoggerClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v5

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v13

    invoke-direct/range {v3 .. v14}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v5

    goto :goto_4
.end method
