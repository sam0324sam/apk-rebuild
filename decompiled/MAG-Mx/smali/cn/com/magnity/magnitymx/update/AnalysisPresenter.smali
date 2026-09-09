.class public Lcn/com/magnity/magnitymx/update/AnalysisPresenter;
.super Ljava/lang/Object;
.source "AnalysisPresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;


# instance fields
.field private mView:Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;)V
    .locals 1
    .param p1, "view"    # Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/AnalysisPresenter;->mView:Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;

    .line 8
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/AnalysisPresenter;->mView:Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;->setPresenter(Ljava/lang/Object;)V

    .line 9
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
