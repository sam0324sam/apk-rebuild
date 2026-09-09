.class Lcom/baidu/mobstat/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/bp;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/baidu/mobstat/bp;

    invoke-direct {v0}, Lcom/baidu/mobstat/bp;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bp;->a:Lcom/baidu/mobstat/bp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/bp;->b:Z

    .line 26
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bp;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/mobstat/bp;->a:Lcom/baidu/mobstat/bp;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "openExceptonAnalysis"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 33
    iget-boolean v0, p0, Lcom/baidu/mobstat/bp;->b:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/bp;->b:Z

    .line 38
    invoke-static {}, Lcom/baidu/mobstat/bh;->a()Lcom/baidu/mobstat/bh;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bh;->a(Landroid/content/Context;)V

    .line 40
    if-nez p2, :cond_0

    .line 41
    invoke-static {p1}, Lcom/baidu/mobstat/NativeCrashHandler;->init(Landroid/content/Context;)V

    goto :goto_0
.end method
