.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;
.super Ljava/lang/Object;
.source "DialogFragmentDeviceAddEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 145
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 32
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .line 150
    .local v31, "sSN":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    .line 152
    .local v29, "sIP":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$500(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v27

    .line 154
    .local v27, "isCloud":Z
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    const v12, 0x7f0e011c

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v3, 0x0

    .local v3, "sn":I
    const/4 v9, 0x0

    .line 161
    .local v9, "ip":I
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    :try_start_0
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 170
    :cond_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    :try_start_1
    invoke-static/range {v29 .. v29}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 179
    :cond_3
    if-eqz v27, :cond_4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    const v12, 0x7f0e011e

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v26

    .line 165
    .local v26, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    const v12, 0x7f0e011c

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    .end local v26    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v26

    .line 174
    .restart local v26    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    const v12, 0x7f0e0075

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    .end local v26    # "ex":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$600(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 185
    .local v28, "sCmdPort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$700(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 186
    .local v30, "sImgPort":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    :try_start_2
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 193
    .local v10, "cmdPort":I
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 198
    .local v11, "imgPort":I
    if-eqz v27, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v4, 0x0

    .line 200
    .local v4, "camIp":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v5, 0x0

    .line 201
    .local v5, "camCmdPort":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v6, 0x0

    .line 202
    .local v6, "camImgPort":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v7, ""

    .line 203
    .local v7, "camUser":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v8, ""

    .line 205
    .local v8, "camPwd":Ljava/lang/String;
    :goto_5
    new-instance v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 206
    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v2, v31

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 208
    invoke-static {v12}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 209
    invoke-static {v13}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 224
    .end local v4    # "camIp":I
    .end local v5    # "camCmdPort":I
    .end local v6    # "camImgPort":I
    .end local v7    # "camUser":Ljava/lang/String;
    .end local v8    # "camPwd":Ljava/lang/String;
    .local v1, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$900(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)I

    move-result v2

    if-ltz v2, :cond_12

    .line 225
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v12

    const-string v13, "EDIT_DEVICE"

    const-string v14, "PARAMETER1"

    const-string v16, "PARAMETER2"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 226
    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$900(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)I

    move-result v17

    move-object v15, v1

    .line 225
    invoke-virtual/range {v12 .. v17}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 230
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->dismiss()V

    goto/16 :goto_0

    .line 194
    .end local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v10    # "cmdPort":I
    .end local v11    # "imgPort":I
    :catch_2
    move-exception v26

    .line 195
    .restart local v26    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    const v12, 0x7f0e00d5

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 199
    .end local v26    # "ex":Ljava/lang/Exception;
    .restart local v10    # "cmdPort":I
    .restart local v11    # "imgPort":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v4

    goto/16 :goto_1

    .line 200
    .restart local v4    # "camIp":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamCmdPort()I

    move-result v5

    goto/16 :goto_2

    .line 201
    .restart local v5    # "camCmdPort":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamImgPort()I

    move-result v6

    goto/16 :goto_3

    .line 202
    .restart local v6    # "camImgPort":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 203
    .restart local v7    # "camUser":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDevicePwd()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 206
    .restart local v8    # "camPwd":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 211
    .end local v4    # "camIp":I
    .end local v5    # "camCmdPort":I
    .end local v6    # "camImgPort":I
    .end local v7    # "camUser":Ljava/lang/String;
    .end local v8    # "camPwd":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_c

    const/16 v20, 0x0

    .line 212
    .local v20, "cloudIp":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_d

    const/16 v21, 0x0

    .line 213
    .local v21, "cloudCmdPort":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_e

    const/16 v22, 0x0

    .line 214
    .local v22, "cloudImgPort":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v23, ""

    .line 215
    .local v23, "cloudUser":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v24, ""

    .line 217
    .local v24, "cloudPwd":Ljava/lang/String;
    :goto_d
    new-instance v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 218
    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v13

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 219
    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .line 220
    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v25, 0x0

    move-object v12, v1

    move v14, v3

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-direct/range {v12 .. v25}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    goto/16 :goto_7

    .line 211
    .end local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v20    # "cloudIp":I
    .end local v21    # "cloudCmdPort":I
    .end local v22    # "cloudImgPort":I
    .end local v23    # "cloudUser":Ljava/lang/String;
    .end local v24    # "cloudPwd":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudIp()I

    move-result v20

    goto :goto_9

    .line 212
    .restart local v20    # "cloudIp":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudCmdPort()I

    move-result v21

    goto :goto_a

    .line 213
    .restart local v21    # "cloudCmdPort":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudImgPort()I

    move-result v22

    goto :goto_b

    .line 214
    .restart local v22    # "cloudImgPort":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v23

    goto :goto_c

    .line 215
    .restart local v23    # "cloudUser":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v24

    goto :goto_d

    .line 218
    .restart local v24    # "cloudPwd":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_e

    .line 228
    .end local v20    # "cloudIp":I
    .end local v21    # "cloudCmdPort":I
    .end local v22    # "cloudImgPort":I
    .end local v23    # "cloudUser":Ljava/lang/String;
    .end local v24    # "cloudPwd":Ljava/lang/String;
    .restart local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :cond_12
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v2

    const-string v12, "ADD_DEVICE"

    const-string v13, "PARAMETER1"

    invoke-virtual {v2, v12, v13, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_8
.end method
