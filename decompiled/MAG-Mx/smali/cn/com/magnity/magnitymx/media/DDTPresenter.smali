.class public Lcn/com/magnity/magnitymx/media/DDTPresenter;
.super Ljava/lang/Object;
.source "DDTPresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/IDDTContract$IPresenter;


# instance fields
.field private mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

.field private mView:Lcn/com/magnity/magnitymx/media/IDDTContract$IView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadBufferDDT([B)Z
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;->loadBufferDDT([B)Z

    move-result v0

    return v0
.end method

.method public loadDDT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;->loadDDT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mdt"    # Lcn/com/magnity/coresdk/types/MDT;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    invoke-interface {v0, p1, p2}, Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;->loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z

    move-result v0

    return v0
.end method

.method public saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mdt"    # Lcn/com/magnity/coresdk/types/MDT;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    invoke-interface {v0, p1, p2}, Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;->saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setView(Lcn/com/magnity/magnitymx/media/IDDTContract$IView;)V
    .locals 1
    .param p1, "view"    # Lcn/com/magnity/magnitymx/media/IDDTContract$IView;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mView:Lcn/com/magnity/magnitymx/media/IDDTContract$IView;

    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mView:Lcn/com/magnity/magnitymx/media/IDDTContract$IView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/media/IDDTContract$IView;->setPresenter(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcn/com/magnity/magnitymx/media/DDTModel;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/media/DDTModel;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    .line 15
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    .line 20
    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mView:Lcn/com/magnity/magnitymx/media/IDDTContract$IView;

    .line 21
    return-void
.end method

.method public unloadDDT()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DDTPresenter;->mModel:Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/media/IDDTContract$IModel;->unloadDDT()V

    .line 42
    return-void
.end method
