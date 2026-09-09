.class Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/online/DeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/online/DeviceListActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/online/DeviceListActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/online/DeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/online/DeviceListActivity;Lcn/com/magnity/magnitymx/online/DeviceListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/online/DeviceListActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/online/DeviceListActivity$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/online/DeviceListActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 81
    :sswitch_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/online/DeviceListActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->onBackPressed()V

    goto :goto_0

    .line 84
    :sswitch_1
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->newInstance(Lcn/com/magnity/magnitymx/data/DeviceInfo;I)Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    move-result-object v0

    .line 85
    .local v0, "d":Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/online/DeviceListActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "d":Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
    :sswitch_2
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;-><init>()V

    .line 89
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/online/DeviceListActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08000b -> :sswitch_2
        0x7f080015 -> :sswitch_1
        0x7f080196 -> :sswitch_0
    .end sparse-switch
.end method
