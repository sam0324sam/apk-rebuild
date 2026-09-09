.class public abstract enum Lcom/baidu/mobstat/ao;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/ao;

.field public static final enum b:Lcom/baidu/mobstat/ao;

.field public static final enum c:Lcom/baidu/mobstat/ao;

.field public static final enum d:Lcom/baidu/mobstat/ao;

.field private static final synthetic f:[Lcom/baidu/mobstat/ao;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 16
    new-instance v0, Lcom/baidu/mobstat/ap;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/mobstat/ap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/ao;

    .line 36
    new-instance v0, Lcom/baidu/mobstat/aq;

    const-string v1, "NO_SERVICE"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobstat/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/ao;->b:Lcom/baidu/mobstat/ao;

    .line 52
    new-instance v0, Lcom/baidu/mobstat/ar;

    const-string v1, "RECEIVER"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/mobstat/ar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/ao;

    .line 68
    new-instance v0, Lcom/baidu/mobstat/as;

    const-string v1, "ERISED"

    invoke-direct {v0, v1, v4, v6}, Lcom/baidu/mobstat/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/ao;

    .line 14
    new-array v0, v6, [Lcom/baidu/mobstat/ao;

    sget-object v1, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/ao;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/ao;->b:Lcom/baidu/mobstat/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/ao;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/ao;->f:[Lcom/baidu/mobstat/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/baidu/mobstat/ao;->e:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/ap;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/ao;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/baidu/mobstat/ao;
    .locals 5

    .prologue
    .line 102
    invoke-static {}, Lcom/baidu/mobstat/ao;->values()[Lcom/baidu/mobstat/ao;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 103
    iget v4, v0, Lcom/baidu/mobstat/ao;->e:I

    if-ne v4, p0, :cond_0

    .line 108
    :goto_1
    return-object v0

    .line 102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/ao;->b:Lcom/baidu/mobstat/ao;

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 113
    if-eqz v0, :cond_1

    .line 116
    const v2, 0x7fffffff

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 117
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 118
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 119
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v4, "com.baidu.bottom.service.BottomService"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 129
    :goto_1
    return v0

    .line 117
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    .line 129
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/ao;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/baidu/mobstat/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ao;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/ao;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/baidu/mobstat/ao;->f:[Lcom/baidu/mobstat/ao;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ao;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/baidu/mobstat/ao;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
