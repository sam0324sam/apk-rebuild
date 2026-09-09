.class public interface abstract Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;
.super Ljava/lang/Object;
.source "ILoginContract.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/login/ILoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoginView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/com/magnity/magnitymx/base/IBaseView",
        "<",
        "Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract onResponse(I)V
.end method
