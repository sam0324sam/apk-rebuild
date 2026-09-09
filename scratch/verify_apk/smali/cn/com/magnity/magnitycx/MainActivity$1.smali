.class Lcn/com/magnity/magnitycx/MainActivity$1;
.super Landroid/view/OrientationEventListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MainActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/MainActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/MainActivity;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 77
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MainActivity$1;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 80
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    .local v0, "degree":I
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getPreviewOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 97
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setPreviewOrientation(I)V

    .line 98
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    goto :goto_0

    .line 86
    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_1

    .line 87
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_1

    .line 89
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
