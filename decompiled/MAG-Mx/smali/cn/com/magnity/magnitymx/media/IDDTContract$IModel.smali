.class public interface abstract Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;
.super Ljava/lang/Object;
.source "IDDTContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/IDDTContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IModel"
.end annotation


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract loadBufferDDT([B)Z
.end method

.method public abstract loadDDT(Ljava/lang/String;)Z
.end method

.method public abstract loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z
.end method

.method public abstract saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z
.end method

.method public abstract unloadDDT()V
.end method
