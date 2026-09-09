.class public Lcom/baidu/mobstat/autotrace/AutoTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndClsRecordTrace()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public static setAutoTrackWebview(Z)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
