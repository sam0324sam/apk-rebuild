.class Lcn/com/magnity/magnitymx/media/DDTModel;
.super Ljava/lang/Object;
.source "DDTModel.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;
    }
.end annotation


# instance fields
.field private mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

.field private mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

.field private mDevice:Lcn/com/magnity/coresdk/MagDevice;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcn/com/magnity/coresdk/MagDevice;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/MagDevice;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    .line 16
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->getOutputImage2()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadBufferDDT([B)Z
    .locals 7
    .param p1, "buffer"    # [B

    .prologue
    const/4 v6, 0x0

    .line 20
    new-instance v0, Lcn/com/magnity/coresdk/types/DDTPara;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/DDTPara;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    .line 21
    new-instance v0, Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    invoke-direct {v0, p0, v6}, Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;-><init>(Lcn/com/magnity/magnitymx/media/DDTModel;Lcn/com/magnity/magnitymx/media/DDTModel$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    .line 22
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    const/16 v1, 0x20

    const/16 v2, 0x10

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->loadBufferedDDT(II[BLcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iput-object v6, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    .line 24
    iput-object v6, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDDT(Ljava/lang/String;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 37
    new-instance v0, Lcn/com/magnity/coresdk/types/DDTPara;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/DDTPara;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    .line 38
    new-instance v0, Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    invoke-direct {v0, p0, v6}, Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;-><init>(Lcn/com/magnity/magnitymx/media/DDTModel;Lcn/com/magnity/magnitymx/media/DDTModel$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    const/16 v2, 0x20

    const/16 v3, 0x10

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->loadDDT(Ljava/lang/String;IILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object v6, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    .line 41
    iput-object v6, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mdt"    # Lcn/com/magnity/coresdk/types/MDT;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z

    move-result v0

    return v0
.end method

.method public saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mdt"    # Lcn/com/magnity/coresdk/types/MDT;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unloadDDT()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTPara:Lcn/com/magnity/coresdk/types/DDTPara;

    .line 50
    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDDTCallback:Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;

    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->unloadDDT()V

    .line 52
    return-void
.end method
