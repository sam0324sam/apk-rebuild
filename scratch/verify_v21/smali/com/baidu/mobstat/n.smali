.class public Lcom/baidu/mobstat/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/m;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Lcom/baidu/mobstat/q;->a:Lcom/baidu/mobstat/q;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/baidu/mobstat/u;->f:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/mobstat/r;->a:Lcom/baidu/mobstat/r;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Z)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v1

    .line 54
    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/u;->c:Lcom/baidu/mobstat/u;

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 55
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/u;->b:Lcom/baidu/mobstat/u;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcom/baidu/mobstat/o;->a:Lcom/baidu/mobstat/o;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/baidu/mobstat/u;->g:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 80
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 63
    sget-object v0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/s;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/s;->a(Landroid/content/Context;Z)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v1

    .line 67
    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/u;->d:Lcom/baidu/mobstat/u;

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 68
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/u;->e:Lcom/baidu/mobstat/u;

    goto :goto_0
.end method
