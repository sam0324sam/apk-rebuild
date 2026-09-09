.class public interface abstract Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;
.super Ljava/lang/Object;
.source "UsbCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProgressCallback"
.end annotation


# virtual methods
.method public abstract progressCancel(I)V
.end method

.method public abstract progressChanged(II)V
.end method

.method public abstract progressFinished(I)V
.end method

.method public abstract progressStart(I)V
.end method
