.class public final Lcom/baidu/mobstat/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/bb;->a:Z

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    const-string v0, "http://datax.baidu.com/xs.gif"

    :goto_0
    sput-object v0, Lcom/baidu/mobstat/bb;->b:Ljava/lang/String;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string v0, "http://dxp.baidu.com/upgrade"

    :goto_1
    sput-object v0, Lcom/baidu/mobstat/bb;->c:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    const-string v0, "https://datax.baidu.com/xs.gif"

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "https://dxp.baidu.com/upgrade"

    goto :goto_1
.end method
