.class public Lcn/com/magnity/magnitymx/util/log/LogPrintImpl;
.super Ljava/lang/Object;
.source "LogPrintImpl.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/util/log/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    .end local p1    # "msg":Ljava/lang/Object;
    :cond_0
    const-string v0, "magnity"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 51
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    .end local p1    # "msg":Ljava/lang/Object;
    :cond_0
    const-string v0, "magnity"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    .end local p1    # "msg":Ljava/lang/Object;
    :cond_0
    const-string v0, "magnity"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public init(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 11
    return-void
.end method

.method public t(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 15
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    .end local p1    # "msg":Ljava/lang/Object;
    :cond_0
    const-string v0, "magnity"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    .end local p1    # "msg":Ljava/lang/Object;
    :cond_0
    const-string v0, "magnity"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
