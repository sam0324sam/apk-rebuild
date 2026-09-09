.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;->stitching(Landroid/graphics/Bitmap;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

.field final synthetic val$handled:I

.field final synthetic val$received:I

.field final synthetic val$ret:I

.field final synthetic val$succeeded:I


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    .prologue
    .line 944
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    iput p2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$ret:I

    iput p3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$received:I

    iput p4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$handled:I

    iput p5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$succeeded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 947
    const-string v0, ""

    .line 948
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$ret:I

    if-nez v1, :cond_0

    .line 949
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    iget-object v1, v1, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->stopStitching(Z)V

    .line 951
    :cond_0
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$received:I

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$handled:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$received:I

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$succeeded:I

    if-ne v1, v2, :cond_2

    .line 952
    const-string v0, "\u56fe\u50cf\u62fc\u63a5\u6210\u529f"

    .line 958
    :cond_1
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 959
    const-string v1, "stitching finished..."

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 960
    return-void

    .line 953
    :cond_2
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$received:I

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$handled:I

    if-eq v1, v2, :cond_3

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9700\u8981\u62fc\u63a5\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$received:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5b9e\u9645\u62fc\u63a5\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$handled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u6210\u529f\u62fc\u63a5\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$succeeded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 955
    :cond_3
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$handled:I

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$succeeded:I

    if-eq v1, v2, :cond_1

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9700\u8981\u62fc\u63a5\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$received:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5b9e\u9645\u62fc\u63a5\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$handled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u6210\u529f\u62fc\u63a5\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;->val$succeeded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
