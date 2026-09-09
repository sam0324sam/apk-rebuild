.class public Lcn/com/magnity/magnitymx/task/XmlTaskParser;
.super Ljava/lang/Object;
.source "XmlTaskParser.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/task/ITaskParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lcn/com/magnity/magnitymx/task/TaskData;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 16
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    .local v4, "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    const/4 v2, 0x0

    .line 22
    .local v2, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 23
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .local v1, "is":Ljava/io/InputStream;
    const-string v5, "UTF-8"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 27
    .local v0, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    .line 28
    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v4, Lcn/com/magnity/magnitymx/task/TaskData;

    .end local v4    # "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    invoke-direct {v4}, Lcn/com/magnity/magnitymx/task/TaskData;-><init>()V

    .line 31
    .restart local v4    # "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    goto :goto_1

    .line 33
    :pswitch_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 34
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 35
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/task/TaskData;->setBaseName(Ljava/lang/String;)V

    goto :goto_1

    .line 36
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "target"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 37
    new-instance v2, Lcn/com/magnity/magnitymx/task/TreeItem;

    .end local v2    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-direct {v2}, Lcn/com/magnity/magnitymx/task/TreeItem;-><init>()V

    .restart local v2    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    goto :goto_1

    .line 38
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 39
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 40
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcn/com/magnity/magnitymx/task/TreeItem;->setId(I)V

    goto :goto_1

    .line 41
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 42
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 43
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/com/magnity/magnitymx/task/TreeItem;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "part"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 46
    new-instance v5, Lcn/com/magnity/magnitymx/task/TreeItem;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-direct {v5, v6, v8, v9, v7}, Lcn/com/magnity/magnitymx/task/TreeItem;-><init>(Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcn/com/magnity/magnitymx/task/TreeItem;->addChild(Lcn/com/magnity/magnitymx/task/TreeItem;)V

    goto/16 :goto_1

    .line 50
    :pswitch_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "target"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    invoke-virtual {v4, v2}, Lcn/com/magnity/magnitymx/task/TaskData;->addParent(Lcn/com/magnity/magnitymx/task/TreeItem;)V

    goto/16 :goto_1

    .line 59
    :cond_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 60
    if-eqz v4, :cond_7

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/task/TaskData;->setSqliteFlag(Z)V

    .line 63
    :cond_7
    return-object v4

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public parseFirstTask(Ljava/io/File;[J)[Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "ids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public parseTask(Ljava/io/File;J[J)[Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "taskId"    # J
    .param p4, "ids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
