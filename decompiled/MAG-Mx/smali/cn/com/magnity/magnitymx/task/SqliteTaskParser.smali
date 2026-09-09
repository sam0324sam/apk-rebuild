.class public Lcn/com/magnity/magnitymx/task/SqliteTaskParser;
.super Ljava/lang/Object;
.source "SqliteTaskParser.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/task/ITaskParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChildName(Lcn/com/magnity/magnitymx/task/SqliteTask$Task;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "task"    # Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    .param p2, "isDeviceTypeIncluded"    # Z
    .param p3, "isNullReserved"    # Z
    .param p4, "hyphen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getDeviceId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findDevice(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Device;

    move-result-object v1

    .line 71
    .local v1, "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    if-nez v1, :cond_1

    .line 72
    const-string v0, ""

    .line 104
    .end local p4    # "hyphen":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 74
    .restart local p4    # "hyphen":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->getName()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->getVoltageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findVoltage(J)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "deviceVoltage":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->getDeviceTypeId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findDeviceType(J)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "deviceType":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getPhaseId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findPhase(J)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "phase":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getPartId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findPart(J)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "part":Ljava/lang/String;
    const-string v0, ""

    .line 81
    .local v0, "childName":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 82
    move-object v0, v4

    .line 83
    if-eqz p2, :cond_2

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    const-string v7, "null"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 89
    move-object v0, v4

    .line 91
    :cond_4
    if-eqz p2, :cond_5

    const-string v7, "null"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, ""

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_5
    const-string v7, "null"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_6
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, ""

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_7
    const-string v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string p4, ""

    .end local p4    # "hyphen":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .restart local p4    # "hyphen":Ljava/lang/String;
    :cond_9
    move-object v7, p4

    .line 92
    goto :goto_1

    :cond_a
    move-object v7, p4

    .line 95
    goto :goto_2

    :cond_b
    move-object v7, p4

    .line 98
    goto :goto_3
.end method

.method private getFirstName(Ljava/lang/StringBuilder;Ljava/lang/String;)J
    .locals 11
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "hyphen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    .line 11
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findRegionByParentId(J)Ljava/util/List;

    move-result-object v2

    .line 12
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Region;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-wide v6

    .line 15
    :cond_1
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    .line 18
    .local v1, "provinceRegion":Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findRegionByParentId(J)Ljava/util/List;

    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 22
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    .line 25
    .local v0, "cityRegion":Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findRegionByParentId(J)Ljava/util/List;

    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 29
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    .line 32
    .local v4, "workAreaRegion":Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findRegionByParentId(J)Ljava/util/List;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    .line 38
    .local v3, "substationRegion":Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getVoltageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findVoltage(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getId()J

    move-result-wide v6

    goto :goto_0
.end method

.method private getParentName(Lcn/com/magnity/magnitymx/task/SqliteTask$Region;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "intervalRegion"    # Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    .param p2, "isNullReserved"    # Z
    .param p3, "hyphen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "intervalRegion cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    const-string v1, ""

    .line 56
    .local v1, "parentName":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getVoltageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findVoltage(J)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "intervalVoltage":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .end local p3    # "hyphen":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 60
    .restart local p3    # "hyphen":Ljava/lang/String;
    :cond_2
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p3, ""

    .end local p3    # "hyphen":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseTaskIntern(J[JZZLjava/lang/String;)[Ljava/lang/String;
    .locals 15
    .param p1, "taskId"    # J
    .param p3, "ids"    # [J
    .param p4, "isDeviceTypeIncluded"    # Z
    .param p5, "isNullReserved"    # Z
    .param p6, "hyphen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->getFirstName(Ljava/lang/StringBuilder;Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 160
    const/4 v9, 0x0

    .line 181
    :goto_0
    return-object v9

    .line 163
    :cond_0
    invoke-static/range {p1 .. p2}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findTaskByTaskId(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Task;

    move-result-object v8

    .line 164
    .local v8, "task":Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    if-nez v8, :cond_1

    .line 165
    const/4 v9, 0x0

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getRegionId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findRegionByRegionId(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    move-result-object v6

    .line 169
    .local v6, "intervalRegion":Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    if-nez v6, :cond_2

    .line 170
    const/4 v9, 0x0

    goto :goto_0

    .line 173
    :cond_2
    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v6, v0, v1}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->getParentName(Lcn/com/magnity/magnitymx/task/SqliteTask$Region;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "parentName":Ljava/lang/String;
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {p0, v8, v0, v1, v2}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->getChildName(Lcn/com/magnity/magnitymx/task/SqliteTask$Task;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "childName":Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v9, v0

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 177
    const/4 v9, 0x0

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->getId()J

    move-result-wide v10

    aput-wide v10, p3, v9

    .line 178
    const/4 v9, 0x1

    aput-wide p1, p3, v9

    .line 181
    :cond_3
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lcn/com/magnity/magnitymx/task/TaskData;
    .locals 21
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const-string v7, " - "

    .line 111
    .local v7, "hyphen":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcn/com/magnity/magnitymx/task/SqliteTask;->open(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_0

    .line 112
    const/4 v13, 0x0

    .line 153
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    .line 149
    :goto_0
    return-object v13

    .line 115
    :cond_0
    :try_start_1
    new-instance v13, Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-direct {v13}, Lcn/com/magnity/magnitymx/task/TaskData;-><init>()V

    .line 117
    .local v13, "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v4, "builder":Ljava/lang/StringBuilder;
    const-string v15, " - "

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->getFirstName(Ljava/lang/StringBuilder;Ljava/lang/String;)J

    move-result-wide v10

    .line 119
    .local v10, "substationRegionId":J
    const-wide/16 v16, 0x0

    cmp-long v15, v10, v16

    if-gez v15, :cond_1

    .line 120
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v13, 0x0

    .line 153
    .end local v13    # "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_0

    .line 125
    .restart local v13    # "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcn/com/magnity/magnitymx/task/TaskData;->setBaseName(Ljava/lang/String;)V

    .line 128
    const-string v5, ""

    .line 129
    .local v5, "currentParentName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 130
    .local v8, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findTasksByOrder()Ljava/util/List;

    move-result-object v14

    .line 132
    .local v14, "tasks":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Task;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;

    .line 133
    .local v12, "task":Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getRegionId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v10, v11}, Lcn/com/magnity/magnitymx/task/SqliteTask;->regionParentIs(JJ)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 136
    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getRegionId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findRegionByRegionId(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    move-result-object v16

    const/16 v17, 0x0

    const-string v18, " - "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->getParentName(Lcn/com/magnity/magnitymx/task/SqliteTask$Region;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "parentName":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 138
    :cond_3
    move-object v5, v9

    .line 139
    new-instance v8, Lcn/com/magnity/magnitymx/task/TreeItem;

    .end local v8    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getRegionId()J

    move-result-wide v16

    const/16 v18, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, v18

    invoke-direct {v8, v9, v0, v1, v2}, Lcn/com/magnity/magnitymx/task/TreeItem;-><init>(Ljava/lang/String;JLjava/lang/Object;)V

    .line 140
    .restart local v8    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v13, v8}, Lcn/com/magnity/magnitymx/task/TaskData;->addParent(Lcn/com/magnity/magnitymx/task/TreeItem;)V

    .line 143
    :cond_4
    if-nez v8, :cond_5

    .line 144
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "task parent should not be empty"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "currentParentName":Ljava/lang/String;
    .end local v8    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    .end local v9    # "parentName":Ljava/lang/String;
    .end local v10    # "substationRegionId":J
    .end local v12    # "task":Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    .end local v13    # "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    .end local v14    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Task;>;"
    :catch_0
    move-exception v6

    .line 151
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v15, Ljava/lang/Exception;

    invoke-direct {v15, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    throw v15

    .line 146
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "currentParentName":Ljava/lang/String;
    .restart local v8    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    .restart local v9    # "parentName":Ljava/lang/String;
    .restart local v10    # "substationRegionId":J
    .restart local v12    # "task":Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    .restart local v13    # "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    .restart local v14    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Task;>;"
    :cond_5
    :try_start_4
    new-instance v16, Lcn/com/magnity/magnitymx/task/TreeItem;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, " - "

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v12, v1, v2, v3}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->getChildName(Lcn/com/magnity/magnitymx/task/SqliteTask$Task;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getId()J

    move-result-wide v18

    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->getCaptureStatus()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v16 .. v20}, Lcn/com/magnity/magnitymx/task/TreeItem;-><init>(Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->addChild(Lcn/com/magnity/magnitymx/task/TreeItem;)V

    goto/16 :goto_1

    .line 148
    .end local v9    # "parentName":Ljava/lang/String;
    .end local v12    # "task":Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    :cond_6
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcn/com/magnity/magnitymx/task/TaskData;->setSqliteFlag(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto/16 :goto_0
.end method

.method public parseFirstTask(Ljava/io/File;[J)[Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "ids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    invoke-static {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask;->open(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 208
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    .line 204
    :goto_0
    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findFirstTaskIdByOrder()J

    move-result-wide v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, " - "

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->parseTaskIntern(J[JZZLjava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 208
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    throw v1
.end method

.method public parseTask(Ljava/io/File;J[J)[Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "taskId"    # J
    .param p4, "ids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    invoke-static {p1}, Lcn/com/magnity/magnitymx/task/SqliteTask;->open(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 194
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    .line 190
    :goto_0
    return-object v1

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_1
    const-string v7, " - "

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->parseTaskIntern(J[JZZLjava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 194
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    throw v1
.end method
