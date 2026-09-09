.class Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$002(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;I)I

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 57
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$100(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;)Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$000(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;->save(I)V

    .line 58
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$002(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;I)I

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$002(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;I)I

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$002(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;I)I

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->access$002(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;I)I

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x7f080030
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
