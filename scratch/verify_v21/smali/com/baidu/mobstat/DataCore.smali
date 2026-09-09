.class public Lcom/baidu/mobstat/DataCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/json/JSONObject;

.field private static b:Lcom/baidu/mobstat/DataCore;


# instance fields
.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;

.field private f:Z

.field private volatile g:I

.field private h:Lcom/baidu/mobstat/StatService$WearListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 35
    new-instance v0, Lcom/baidu/mobstat/DataCore;

    invoke-direct {v0}, Lcom/baidu/mobstat/DataCore;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->b:Lcom/baidu/mobstat/DataCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 46
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 48
    iput-boolean v1, p0, Lcom/baidu/mobstat/DataCore;->f:Z

    .line 49
    iput v1, p0, Lcom/baidu/mobstat/DataCore;->g:I

    .line 57
    return-void
.end method

.method private a(Lorg/json/JSONObject;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 765
    .line 766
    if-nez p1, :cond_0

    .line 798
    :goto_0
    return v1

    .line 771
    :cond_0
    :try_start_0
    const-string v0, "he"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 772
    const-string v2, "sq"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 773
    const-string v4, "ss"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 774
    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    .line 775
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 782
    :goto_2
    :try_start_1
    const-string v0, "pr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 783
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 785
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 786
    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 787
    const-string v6, "e"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 789
    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 790
    add-int/lit8 v0, v2, 0x1

    .line 784
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    .line 777
    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_2

    .line 794
    :catch_1
    move-exception v0

    :cond_1
    move v1, v2

    .line 798
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;JJ)Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 912
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ck;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 916
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 917
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    .line 918
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 919
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 922
    :catch_0
    move-exception v0

    .line 928
    :cond_0
    const/4 v3, 0x1

    .line 929
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 931
    :try_start_1
    const-string v5, "day"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v6

    .line 932
    cmp-long v0, v6, p2

    if-nez v0, :cond_1

    move v0, v2

    .line 940
    :goto_2
    if-eqz v0, :cond_2

    .line 942
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 943
    const-string v2, "day"

    invoke-virtual {v0, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 944
    const-string v2, "count"

    invoke-virtual {v0, v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 945
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 951
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 952
    const/4 v2, 0x5

    if-le v0, v2, :cond_3

    .line 954
    add-int/lit8 v2, v0, -0x5

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 957
    :goto_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 946
    :catch_1
    move-exception v0

    goto :goto_3

    .line 936
    :catch_2
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1096
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 1097
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1100
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    .line 1101
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1103
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1104
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 1105
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1107
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 1108
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1101
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1105
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->h:Lcom/baidu/mobstat/StatService$WearListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->h:Lcom/baidu/mobstat/StatService$WearListener;

    invoke-interface {v0, p2}, Lcom/baidu/mobstat/StatService$WearListener;->onSendLogData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    const-string v0, "log data has been passed to app level"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 1072
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;JI)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 804
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ck;->a(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 806
    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    if-eqz p5, :cond_0

    .line 808
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/baidu/mobstat/ck;->a(Landroid/content/Context;J)V

    move-wide v0, p3

    .line 811
    :cond_0
    const-string v3, "first"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 815
    if-eqz p5, :cond_6

    .line 817
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ck;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 819
    sub-long v0, p3, v6

    .line 821
    cmp-long v3, v6, v4

    if-eqz v3, :cond_5

    cmp-long v3, v0, v4

    if-gtz v3, :cond_5

    .line 823
    const-wide/16 v0, -0x1

    .line 829
    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p4}, Lcom/baidu/mobstat/ck;->b(Landroid/content/Context;J)V

    .line 830
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/baidu/mobstat/ck;->c(Landroid/content/Context;J)V

    .line 836
    :goto_1
    const-string v3, "session_last_interval"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    const-string v1, ""

    .line 840
    const-string v0, ""

    .line 841
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/ck;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 842
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 843
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 844
    if-eqz v3, :cond_2

    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 845
    aget-object v1, v3, v2

    .line 846
    const/4 v0, 0x1

    aget-object v0, v3, v0

    .line 851
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 853
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 861
    :goto_2
    invoke-static {p3, p4}, Lcom/baidu/mobstat/db;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 862
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 863
    :cond_3
    add-int v2, p5, v0

    .line 866
    :goto_3
    if-eqz p5, :cond_4

    .line 867
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lcom/baidu/mobstat/ck;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    :cond_4
    const-string v3, "session_today_cnt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p2, v3, v2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 874
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 876
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    int-to-long v2, v2

    .line 882
    :goto_4
    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p5, :cond_7

    .line 885
    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;JJ)Lorg/json/JSONArray;

    move-result-object v0

    .line 886
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/ck;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 888
    const-string v1, "recent"

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 907
    :goto_5
    return-void

    .line 824
    :cond_5
    cmp-long v3, v6, v4

    if-nez v3, :cond_1

    move-wide v0, v4

    .line 826
    goto/16 :goto_0

    .line 832
    :cond_6
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ck;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_1

    .line 854
    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_2

    .line 877
    :catch_1
    move-exception v2

    move-wide v2, v4

    goto :goto_4

    .line 890
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/ck;->a()Lcom/baidu/mobstat/ck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ck;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 892
    const/4 v1, 0x0

    .line 893
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 895
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 900
    :goto_6
    if-nez v0, :cond_8

    .line 901
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 905
    :cond_8
    const-string v1, "recent"

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 896
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto :goto_6

    :cond_a
    move-wide v2, v4

    goto :goto_4

    :cond_b
    move v2, p5

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_2
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 744
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;)I

    move-result v6

    .line 748
    :try_start_0
    const-string v0, "he"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_1

    .line 750
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    .line 756
    :goto_1
    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 760
    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;JI)V

    .line 761
    return-void

    .line 752
    :catch_0
    move-exception v0

    move-wide v4, v2

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 703
    if-nez p2, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 709
    :try_start_0
    const-string v4, "app_session"

    if-eqz p3, :cond_2

    move v2, v0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 716
    :goto_2
    :try_start_1
    const-string v2, "failed_cnt"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 723
    :goto_3
    :try_start_2
    const-string v2, "circle"

    invoke-static {}, Lcom/baidu/mobstat/autotrace/AutoTrace;->getAndClsRecordTrace()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 730
    :goto_4
    :try_start_3
    const-string v2, "trace"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 736
    :goto_5
    if-eqz v0, :cond_0

    .line 740
    invoke-direct {p0, p1, p2, v3}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 709
    goto :goto_1

    .line 731
    :catch_0
    move-exception v0

    move v0, v1

    .line 732
    goto :goto_5

    .line 724
    :catch_1
    move-exception v2

    goto :goto_4

    .line 717
    :catch_2
    move-exception v2

    goto :goto_3

    .line 710
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method private a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 24

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v10

    .line 108
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 111
    if-eqz p6, :cond_0

    :try_start_1
    const-string v4, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    :cond_0
    const-string v4, "s"

    const-string v5, "0|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_1
    :goto_0
    const/4 v6, 0x0

    move v4, v7

    :goto_1
    if-ge v6, v7, :cond_8

    .line 122
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 124
    const-string v5, "ss"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 125
    const-string v5, "i"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 126
    const-string v5, "l"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 127
    const-string v5, "t"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    div-long v14, v14, v16
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    const/4 v5, 0x0

    .line 131
    :try_start_3
    const-string v16, "d"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    .line 136
    :goto_2
    :try_start_4
    const-string v16, "h"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 137
    const-string v17, "h2"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 138
    const-string v18, "h3"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 139
    const-string v19, "p"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 140
    const-string v20, "p2"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 141
    const-string v21, "rn"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 142
    const-string v22, "v"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    .line 143
    const-string v23, "at"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v23

    .line 147
    cmp-long v14, v14, p7

    if-nez v14, :cond_2

    if-eqz v5, :cond_3

    .line 120
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 114
    :catch_0
    move-exception v4

    .line 115
    :try_start_5
    const-string v4, "event put s fail"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 132
    :catch_1
    move-exception v16

    .line 133
    :try_start_6
    const-string v16, "old version data, No duration Tag"

    invoke-static/range {v16 .. v16}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 182
    :catch_2
    move-exception v5

    .line 183
    :goto_4
    :try_start_7
    invoke-static {v5}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 152
    :cond_3
    cmp-long v5, v8, p2

    if-nez v5, :cond_2

    :try_start_8
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    move-object/from16 v0, v16

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    move-object/from16 v0, v20

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, v21

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v0, v22

    move/from16 v1, p15

    if-ne v0, v1, :cond_2

    move/from16 v0, v23

    move/from16 v1, p16

    if-ne v0, v1, :cond_2

    .line 158
    const-string v5, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v8, "c"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int v12, v5, v8

    .line 159
    const-string v5, "s"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    if-eqz v5, :cond_4

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 161
    :cond_4
    const-string v5, "0|"

    .line 164
    :cond_5
    const-string v8, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 165
    const-string v13, "t"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 166
    sub-long/2addr v8, v14

    .line 169
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gez v13, :cond_6

    .line 170
    const-wide/16 v8, 0x0

    .line 173
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "|"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    .line 176
    :try_start_9
    const-string v5, "c"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v5, "c"

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v5, "s"

    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 187
    :goto_5
    if-ge v6, v7, :cond_7

    .line 188
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 199
    :goto_6
    return-void

    .line 193
    :cond_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 198
    :goto_7
    :try_start_c
    monitor-exit v10

    goto :goto_6

    .line 194
    :catch_3
    move-exception v4

    .line 196
    invoke-static {v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .line 182
    :catch_4
    move-exception v5

    move v4, v6

    goto/16 :goto_4

    :cond_8
    move v6, v4

    goto :goto_5
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 961
    if-nez p1, :cond_0

    .line 979
    :goto_0
    return-void

    .line 965
    :cond_0
    const-string v0, "visit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 967
    :try_start_0
    const-string v0, "visit"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 974
    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "visit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 975
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    goto :goto_0

    .line 968
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/baidu/mobstat/DataCore;->f:Z

    .line 472
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->f:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionSize()I

    move-result v1

    .line 217
    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/DataCore;->g:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 391
    if-nez p0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_1
    if-le v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 202
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static instance()Lcom/baidu/mobstat/DataCore;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/baidu/mobstat/DataCore;->b:Lcom/baidu/mobstat/DataCore;

    return-object v0
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1083
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    .line 1086
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 1087
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 1088
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    .line 1091
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;)V

    .line 1092
    return-void

    .line 1088
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructLogWithEmptyBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 639
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 641
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 642
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/bq;

    move-result-object v3

    .line 643
    iget-object v4, v3, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    invoke-virtual {v3, p1, v2}, Lcom/baidu/mobstat/bq;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 649
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 654
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 655
    const-string v6, "ss"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 656
    const-string v4, "wl2"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    const-string v4, "sq"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    const-string v4, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    const-string v4, "k"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string v4, "he"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :try_start_1
    const-string v2, "pr"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    :try_start_2
    const-string v2, "ev"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 686
    :try_start_3
    const-string v2, "ex"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 692
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    :goto_1
    return-object v0

    .line 646
    :cond_0
    invoke-virtual {v3, p1, v2}, Lcom/baidu/mobstat/bq;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 673
    :catch_1
    move-exception v1

    .line 674
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 680
    :catch_2
    move-exception v1

    .line 681
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 687
    :catch_3
    move-exception v1

    .line 688
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public flush(Landroid/content/Context;)V
    .locals 6

    .prologue
    const v5, 0x32000

    const/4 v4, 0x0

    .line 420
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 422
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 424
    const-string v3, "pr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :try_start_2
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 428
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v3, "ev"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 432
    :try_start_4
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 433
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v3, "he"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 441
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-direct {p0}, Lcom/baidu/mobstat/DataCore;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string v0, "cache.json exceed 204800B,stop flush."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 468
    :goto_1
    return-void

    .line 425
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v0, "flushLogWithoutHeader() construct cache error"

    .line 438
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 435
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 450
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 451
    if-lt v1, v5, :cond_1

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    goto :goto_1

    .line 456
    :cond_1
    iput v1, p0, Lcom/baidu/mobstat/DataCore;->g:I

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush:cacheFileSize is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/DataCore;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capacity is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 459
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {p1, v1, v0, v4}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 464
    :try_start_c
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush wifi data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 466
    const-string v2, "__local_ap_info_cache.json"

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 467
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0
.end method

.method public getCacheFileSzie()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/mobstat/DataCore;->g:I

    return v0
.end method

.method public installHeader(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 409
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 410
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/bq;

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/bq;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 411
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPartEmpty()Z
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadLastSession(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 482
    if-nez p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    const-string v0, "loadLastSession(): last_session.json file not found."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 500
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public loadStatData(Landroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/32 v10, 0x240c8400

    const/4 v0, 0x0

    .line 555
    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-static {p1, v1}, Lcom/baidu/mobstat/co;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-static {p1, v1}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    const-string v0, "stat_cache file not found."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_2
    const-string v2, "loadStatData, "

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 580
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/baidu/mobstat/DataCore;->g:I

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Stat Data:cacheFileSize is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/DataCore;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 583
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 591
    const-string v1, "pr"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    .line 592
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 593
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 596
    const-string v7, "s"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 592
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 600
    :cond_3
    invoke-virtual {p0, v6}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 633
    :catch_0
    move-exception v0

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load stat data error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :cond_4
    :try_start_1
    const-string v1, "ev"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 607
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 609
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 611
    const-string v6, "t"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    .line 607
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 615
    :cond_5
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v3, v6}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    goto :goto_4

    .line 618
    :cond_6
    invoke-virtual {p0}, Lcom/baidu/mobstat/DataCore;->isPartEmpty()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 623
    :try_start_2
    const-string v0, "he"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 625
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 626
    :try_start_3
    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 627
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 628
    :catch_1
    move-exception v0

    .line 629
    :try_start_5
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public loadWifiData(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 515
    if-nez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const-string v0, "__local_ap_info_cache.json"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "__local_ap_info_cache.json"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 528
    const/16 v0, 0xa

    if-lt v3, v0, :cond_2

    .line 529
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 530
    add-int/lit8 v2, v3, -0xa

    :goto_1
    if-ge v2, v3, :cond_3

    .line 531
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 537
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/cz;->g(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 539
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :try_start_1
    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiPart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 545
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v15, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    invoke-virtual/range {v1 .. v21}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 388
    return-void
.end method

.method public putEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 329
    :try_start_0
    const-string v2, "ss"

    invoke-virtual {v4, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    const-string v2, "i"

    invoke-virtual {v4, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v2, "l"

    invoke-virtual {v4, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v2, "c"

    invoke-virtual {v4, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v2, "t"

    move-wide/from16 v0, p7

    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 334
    const-string v2, "d"

    move-wide/from16 v0, p9

    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 335
    const-string v2, "h"

    move-object/from16 v0, p11

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v2, "h2"

    move-object/from16 v0, p12

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v2, "h3"

    move-object/from16 v0, p13

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v2, "p"

    move-object/from16 v0, p14

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v2, "p2"

    move-object/from16 v0, p15

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v2, "rn"

    move-object/from16 v0, p16

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v2, "v"

    move/from16 v0, p17

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    const-string v2, "at"

    move/from16 v0, p18

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    if-eqz p19, :cond_0

    invoke-virtual/range {p19 .. p19}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "ext"

    invoke-virtual/range {p19 .. p19}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_0
    if-eqz p20, :cond_3

    .line 349
    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 350
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 351
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 356
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 360
    const/16 v7, 0x400

    invoke-static {v2, v7}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;I)Z

    move-result v7

    .line 361
    if-nez v7, :cond_1

    .line 365
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 366
    const-string v8, "k"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v3, "v"

    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v2

    .line 379
    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 381
    :goto_1
    return-void

    .line 371
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    const-string v2, "attribute"

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v4, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public putEvent(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 22

    .prologue
    .line 224
    if-nez p2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    const-string v2, "data to put exceed limit, will not put"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    const/4 v2, 0x0

    .line 241
    const-string v3, ""

    .line 244
    const-string v3, ""

    .line 245
    const-string v3, ""

    .line 246
    const-string v3, ""

    .line 248
    sget-object v3, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v3}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    .line 250
    const-string v3, ""

    .line 251
    const-string v3, ""

    .line 255
    :try_start_0
    const-string v3, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 256
    const-string v3, "i"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    const-string v3, "l"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    const-string v3, "t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    div-long v9, v8, v10

    .line 259
    const-string v3, "s"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    const-string v3, "h"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 262
    const-string v3, "h2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 263
    const-string v3, "h3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 265
    const-string v3, "p"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 266
    const-string v3, "p2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 268
    const-string v3, "rn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 270
    const-string v3, "v"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 271
    const-string v3, "at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 272
    const-string v3, "ext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 273
    const-string v3, "attribute"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 280
    :try_start_1
    const-string v3, "d"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 285
    :goto_1
    const/4 v3, 0x0

    .line 286
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 287
    const/4 v3, 0x1

    .line 290
    :cond_2
    const/16 v19, 0x0

    .line 291
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 292
    const/16 v19, 0x1

    .line 296
    :cond_3
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v19, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 297
    invoke-direct/range {v2 .. v18}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 281
    :catch_1
    move-exception v3

    .line 282
    const-string v3, "old version data, No duration Tag"

    invoke-static {v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v3

    .line 302
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 304
    :try_start_3
    const-string v4, "s"

    const-string v5, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :goto_2
    :try_start_4
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 306
    :catch_2
    move-exception v2

    .line 307
    :try_start_5
    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public putSession(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load last session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putSession(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "data to put exceed limit, will not put"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_3
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public saveLogDataToSend(Landroid/content/Context;ZZ)V
    .locals 6

    .prologue
    .line 987
    const-string v0, "sendLogData() begin."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 988
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/bq;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_1

    .line 990
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 991
    :try_start_0
    iget-object v2, v0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/bq;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 997
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructHeader() begin."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 998
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    iget-object v0, v0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    const-string v0, "\u4e0d\u80fd\u5728manifest.xml\u4e2d\u627e\u5230APP Key||can\'t find app key in manifest.xml."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 1064
    :goto_1
    return-void

    .line 994
    :cond_0
    :try_start_1
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/bq;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1006
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1007
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v2

    .line 1008
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    .line 1010
    :try_start_3
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v3, "t"

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1011
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v4, "sq"

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1012
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v3, "ss"

    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1014
    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1015
    :try_start_4
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v4, "wl2"

    iget-object v5, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1019
    :try_start_5
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v3, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1021
    const-string v0, "he"

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1027
    :try_start_6
    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1029
    :try_start_7
    const-string v0, "pr"

    iget-object v4, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1035
    :try_start_8
    iget-object v4, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1037
    :try_start_9
    const-string v0, "ev"

    iget-object v5, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1044
    :try_start_a
    const-string v0, "ex"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1051
    :try_start_b
    invoke-direct {p0, p1, v1, p3}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 1053
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---Send Data is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->clearCache(Landroid/content/Context;)V

    .line 1060
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1061
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1062
    :try_start_d
    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 1011
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 1016
    :catchall_2
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    :try_start_10
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 1024
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    .line 1030
    :catch_1
    move-exception v0

    .line 1031
    :try_start_11
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 1032
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    .line 1038
    :catch_2
    move-exception v0

    .line 1039
    :try_start_13
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 1040
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_1

    .line 1045
    :catch_3
    move-exception v0

    .line 1046
    :try_start_16
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 1047
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_1

    .line 1060
    :catchall_3
    move-exception v0

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v0

    .line 1061
    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :try_start_1b
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
.end method
