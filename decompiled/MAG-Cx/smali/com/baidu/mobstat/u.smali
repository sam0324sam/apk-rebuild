.class public final enum Lcom/baidu/mobstat/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/u;

.field public static final enum b:Lcom/baidu/mobstat/u;

.field public static final enum c:Lcom/baidu/mobstat/u;

.field public static final enum d:Lcom/baidu/mobstat/u;

.field public static final enum e:Lcom/baidu/mobstat/u;

.field public static final enum f:Lcom/baidu/mobstat/u;

.field public static final enum g:Lcom/baidu/mobstat/u;

.field public static final enum h:Lcom/baidu/mobstat/u;

.field public static final enum i:Lcom/baidu/mobstat/u;

.field private static final synthetic k:[Lcom/baidu/mobstat/u;


# instance fields
.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "AP_LIST"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/u;

    .line 10
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "APP_USER_LIST"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->b:Lcom/baidu/mobstat/u;

    .line 12
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "APP_SYS_LIST"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->c:Lcom/baidu/mobstat/u;

    .line 14
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "APP_TRACE_CURRENT"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->d:Lcom/baidu/mobstat/u;

    .line 16
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "APP_TRACE_HIS"

    invoke-direct {v0, v1, v7}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->e:Lcom/baidu/mobstat/u;

    .line 18
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "APP_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->f:Lcom/baidu/mobstat/u;

    .line 20
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "APP_APK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->g:Lcom/baidu/mobstat/u;

    .line 22
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "LAST_SEND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->h:Lcom/baidu/mobstat/u;

    .line 24
    new-instance v0, Lcom/baidu/mobstat/u;

    const-string v1, "LAST_UPDATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/u;->i:Lcom/baidu/mobstat/u;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/baidu/mobstat/u;

    sget-object v1, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/u;->b:Lcom/baidu/mobstat/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/u;->c:Lcom/baidu/mobstat/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/u;->d:Lcom/baidu/mobstat/u;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobstat/u;->e:Lcom/baidu/mobstat/u;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/mobstat/u;->f:Lcom/baidu/mobstat/u;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/mobstat/u;->g:Lcom/baidu/mobstat/u;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/mobstat/u;->h:Lcom/baidu/mobstat/u;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/mobstat/u;->i:Lcom/baidu/mobstat/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/u;->k:[Lcom/baidu/mobstat/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/u;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/baidu/mobstat/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/u;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/u;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/baidu/mobstat/u;->k:[Lcom/baidu/mobstat/u;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/u;

    return-object v0
.end method
