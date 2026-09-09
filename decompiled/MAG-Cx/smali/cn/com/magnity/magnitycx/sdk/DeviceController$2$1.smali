.class Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/sdk/DeviceController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/DeviceController$2;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/sdk/DeviceController$2;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1027
    iput-object p2, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->this$0:Lcn/com/magnity/magnitycx/sdk/DeviceController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1030
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1047
    :pswitch_0
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->resetCalibration(Landroid/content/Context;)V

    goto :goto_0

    .line 1044
    :pswitch_1
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->toggleHorizontalFlip(Landroid/content/Context;)V

    .line 1045
    goto :goto_0

    .line 1041
    :pswitch_2
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffsetDown(Landroid/content/Context;)V

    .line 1042
    goto :goto_0

    .line 1038
    :pswitch_3
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffsetUp(Landroid/content/Context;)V

    .line 1039
    goto :goto_0

    .line 1035
    :pswitch_4
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    const p2, 0x8fc0

    invoke-static {p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calibrateToTarget(Landroid/content/Context;I)V

    .line 1036
    goto :goto_0

    .line 1032
    :pswitch_5
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;->val$activity:Landroid/app/Activity;

    const p2, 0x8e30

    invoke-static {p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calibrateToTarget(Landroid/content/Context;I)V

    .line 1033
    nop

    .line 1050
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
