.class Lcom/baidu/mobstat/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bx;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bx;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/mobstat/by;->a:Lcom/baidu/mobstat/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    const-string v0, "__send_data_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
