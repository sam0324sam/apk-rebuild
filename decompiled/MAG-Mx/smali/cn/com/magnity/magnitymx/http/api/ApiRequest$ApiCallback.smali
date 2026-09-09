.class public interface abstract Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiCallback"
.end annotation


# virtual methods
.method public abstract error()V
.end method

.method public abstract fail(Ljava/lang/Throwable;)V
.end method

.method public abstract success(Lcn/com/magnity/magnitymx/http/api/CommonResponse;)V
.end method
