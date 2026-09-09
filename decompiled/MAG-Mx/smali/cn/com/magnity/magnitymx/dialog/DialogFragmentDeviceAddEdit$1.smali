.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;
.super Ljava/lang/Object;
.source "DialogFragmentDeviceAddEdit.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 111
    const-string v1, ""

    .line 112
    .local v1, "ip":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 113
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    const v5, 0x7f0e0074

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "hint":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "userName":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "userPwd":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudIp()I

    move-result v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :goto_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .line 119
    .end local v2    # "userName":Ljava/lang/String;
    .end local v3    # "userPwd":Ljava/lang/String;
    :cond_0
    const-string v2, "magnity"

    .line 120
    .restart local v2    # "userName":Ljava/lang/String;
    const-string v3, "any123"

    .line 121
    .restart local v3    # "userPwd":Ljava/lang/String;
    const-string v1, "121.43.190.114"

    goto :goto_0

    .line 124
    .end local v0    # "hint":Ljava/lang/String;
    .end local v2    # "userName":Ljava/lang/String;
    .end local v3    # "userPwd":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    const v5, 0x7f0e0073

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "hint":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "userName":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDevicePwd()Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3    # "userPwd":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    .end local v2    # "userName":Ljava/lang/String;
    .end local v3    # "userPwd":Ljava/lang/String;
    :cond_2
    const-string v2, "admin"

    .line 131
    .restart local v2    # "userName":Ljava/lang/String;
    const-string v3, "admin123"

    .restart local v3    # "userPwd":Ljava/lang/String;
    goto :goto_0
.end method
