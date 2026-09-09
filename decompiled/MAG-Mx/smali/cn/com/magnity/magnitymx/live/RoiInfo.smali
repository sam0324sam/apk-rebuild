.class public Lcn/com/magnity/magnitymx/live/RoiInfo;
.super Ljava/lang/Object;
.source "RoiInfo.java"


# static fields
.field public static final MIN_LIMIT:I = 0x10

.field public static final TYPE_LINE:I = 0x2

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_POINT:I = 0x0

.field public static final TYPE_RECT:I = 0x1

.field private static volatile lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private aveTemp_:I

.field private higherAlarmTemp:I

.field private isBigEnouth_:Z

.field private isFinished_:Z

.field private isTempValid_:Z

.field private lowerAlarmTemp:I

.field private maxTempPos_:I

.field private maxTemp_:I

.field private minTempPos_:I

.field private minTemp_:I

.field private name_:Ljava/lang/String;

.field private type_:I

.field private x0_:I

.field private x1_:I

.field private y0_:I

.field private y1_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    .line 38
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isFinished_:Z

    .line 39
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth_:Z

    .line 40
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isTempValid_:Z

    .line 41
    return-void
.end method

.method public static lock()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 187
    return-void
.end method

.method public static unlock()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    return-void
.end method


# virtual methods
.method public getAveTemp()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->aveTemp_:I

    return v0
.end method

.method public getBeginPointX()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    .line 111
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    iget v1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    goto :goto_0
.end method

.method public getBeginPointY()I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    .line 118
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    iget v1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    goto :goto_0
.end method

.method public getEndPointX()I
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 123
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    .line 125
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    iget v1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    goto :goto_0
.end method

.method public getEndPointY()I
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 130
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    .line 132
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    iget v1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    goto :goto_0
.end method

.method public getHigherAlarmTemp()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->higherAlarmTemp:I

    return v0
.end method

.method public getLowerAlarmTemp()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->lowerAlarmTemp:I

    return v0
.end method

.method public getMaxPos()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->maxTempPos_:I

    return v0
.end method

.method public getMaxTemp()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->maxTemp_:I

    return v0
.end method

.method public getMinPos()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->minTempPos_:I

    return v0
.end method

.method public getMinTemp()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->minTemp_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    return v0
.end method

.method public isBigEnouth()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth_:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isFinished_:Z

    return v0
.end method

.method public isPointIn(II)Z
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "radius":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 90
    :cond_0
    const/16 v2, 0x10

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 94
    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    sub-int v3, p2, v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    sub-int v3, p1, v3

    int-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    sub-int v8, v8, p1

    mul-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    move-object/from16 v0, p0

    iget v9, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    sub-int v9, v9, p2

    mul-int/2addr v8, v9

    add-int/2addr v3, v8

    int-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 95
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    move-object/from16 v0, p0

    iget v10, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    sub-int/2addr v3, v10

    int-to-double v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    sub-int/2addr v3, v12

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    sub-double v4, v6, v8

    .line 96
    .local v4, "squareDistance":D
    int-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    const/4 v3, 0x1

    .line 98
    .end local v4    # "squareDistance":D
    :goto_0
    return v3

    .line 96
    .restart local v4    # "squareDistance":D
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    .end local v4    # "squareDistance":D
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    move/from16 v0, p1

    if-ge v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v2

    move/from16 v0, p1

    if-le v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    .line 99
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    move/from16 v0, p2

    if-ge v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v2

    move/from16 v0, p2

    if-le v0, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isTempValid()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isTempValid_:Z

    return v0
.end method

.method public setAlarmTempInfo(II)V
    .locals 0
    .param p1, "lowerAlarmTemp"    # I
    .param p2, "higherAlarmTemp"    # I

    .prologue
    .line 83
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->lowerAlarmTemp:I

    .line 84
    iput p2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->higherAlarmTemp:I

    .line 85
    return-void
.end method

.method public setBeginPoint(II)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "y0"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    .line 45
    iput p2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    .line 47
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth_:Z

    .line 48
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isFinished_:Z

    .line 49
    return-void
.end method

.method public setEndPoint(II)V
    .locals 8
    .param p1, "x1"    # I
    .param p2, "y1"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 59
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    .line 60
    iput p2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    .line 62
    iget v2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    if-nez v2, :cond_1

    .line 63
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    .line 64
    iput p2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    .line 65
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth_:Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    if-ne v2, v0, :cond_3

    .line 67
    iget v2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    iget v3, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_2

    iget v2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    iget v3, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth_:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 68
    :cond_3
    iget v2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 69
    iget v2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    iget v3, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    iget v5, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth_:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public setFinished()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isFinished_:Z

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->name_:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setTempInfo(IIIII)V
    .locals 1
    .param p1, "minTemp"    # I
    .param p2, "maxTemp"    # I
    .param p3, "aveTemp"    # I
    .param p4, "minPos"    # I
    .param p5, "maxPos"    # I

    .prologue
    .line 74
    iput p2, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->maxTemp_:I

    .line 75
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->minTemp_:I

    .line 76
    iput p3, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->aveTemp_:I

    .line 77
    iput p5, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->maxTempPos_:I

    .line 78
    iput p4, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->minTempPos_:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->isTempValid_:Z

    .line 80
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 139
    iput p1, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->type_:I

    return-void
.end method

.method public translate(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 52
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x0_:I

    .line 53
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    add-int/2addr v0, p2

    iput v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y0_:I

    .line 54
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->x1_:I

    .line 55
    iget v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    add-int/2addr v0, p2

    iput v0, p0, Lcn/com/magnity/magnitymx/live/RoiInfo;->y1_:I

    .line 56
    return-void
.end method
