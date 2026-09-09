.class public Lcn/com/magnity/magnitycx/FragmentSetting;
.super Landroid/support/v4/app/Fragment;
.source "FragmentSetting.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;
    }
.end annotation


# instance fields
.field private rootView_:Landroid/view/View;

.field private settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/FragmentSetting;II)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateRoiTraceParameter(II)V

    return-void
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/FragmentSetting;III)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateFlipParameter(III)V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/FragmentSetting;II)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateMovingCrossValue(II)V

    return-void
.end method

.method private initUi(Landroid/view/View;)V
    .locals 13
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 46
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v11, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    .line 48
    .local v11, "devType":I
    const v0, 0x7f0e00d4

    const v1, 0x7f080071

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 50
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndSize:I

    packed-switch v0, :pswitch_data_0

    .line 61
    const v4, 0x7f080075

    .line 64
    .local v4, "id":I
    :goto_0
    const v2, 0x7f0e00d5

    const v3, 0x7f080072

    const v5, 0x7f03000c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0e00d7

    const v1, 0x7f08006d

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 69
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    packed-switch v0, :pswitch_data_1

    .line 83
    const v4, 0x7f080068

    .line 86
    :goto_1
    const v2, 0x7f0e00d9

    const v3, 0x7f080070

    const v5, 0x7f03000c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    packed-switch v11, :pswitch_data_2

    .line 97
    :goto_2
    :pswitch_0
    const v0, 0x7f0e00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v0, 0x7f0e00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v0, 0x7f0e00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_3
    const v0, 0x7f0e00dd

    const v1, 0x7f080064

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 130
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v12, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I

    .line 131
    .local v12, "imageFlip":I
    const v7, 0x7f0e00de

    const v8, 0x7f080065

    const-string v9, ""

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_5

    const v10, 0x7f03001b

    :goto_4
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v7, 0x7f0e00df

    const v8, 0x7f080066

    const-string v9, ""

    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_6

    const v10, 0x7f03001b

    :goto_5
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq v11, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne v11, v0, :cond_7

    .line 140
    :cond_1
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    packed-switch v0, :pswitch_data_3

    .line 143
    const v4, 0x7f080059

    .line 158
    :goto_6
    const v2, 0x7f0e00e0

    const v3, 0x7f080063

    const v5, 0x7f03000c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_7
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    if-ne v11, v0, :cond_8

    .line 167
    const v0, 0x7f0e00e3

    const v1, 0x7f08006e

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 168
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    sparse-switch v0, :sswitch_data_0

    .line 182
    const v4, 0x7f080055

    .line 185
    :goto_8
    const v2, 0x7f0e00e5

    const v3, 0x7f08005e

    const v5, 0x7f03000c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :goto_9
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    if-eq v11, v0, :cond_2

    const/4 v0, 0x2

    if-ne v11, v0, :cond_9

    .line 198
    :cond_2
    const v0, 0x7f0e00e8

    const v1, 0x7f08005f

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 199
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    packed-switch v0, :pswitch_data_4

    .line 202
    const v4, 0x7f080060

    .line 208
    :goto_a
    const v2, 0x7f0e00ea

    const v3, 0x7f08005f

    const v5, 0x7f03000c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :goto_b
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    if-ne v11, v0, :cond_b

    .line 220
    const v0, 0x7f0e00ed

    const v1, 0x7f08006a

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 221
    const v7, 0x7f0e00ef

    const v8, 0x7f08006b

    const-string v9, ""

    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    if-eqz v0, :cond_a

    const v10, 0x7f03001b

    :goto_c
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :goto_d
    const v0, 0x7f0e00d1

    const v1, 0x7f080052

    invoke-direct {p0, p1, v0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting;->setText1_(Landroid/view/View;II)Landroid/view/View;

    .line 234
    const v7, 0x7f0e00d2

    const v8, 0x7f080054

    const-string v9, ""

    const v10, 0x7f03000c

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v7, 0x7f0e00d3

    const v8, 0x7f080053

    const-string v9, ""

    const v10, 0x7f03000c

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void

    .line 52
    .end local v4    # "id":I
    .end local v12    # "imageFlip":I
    :pswitch_1
    const v4, 0x7f080075

    .line 53
    .restart local v4    # "id":I
    goto/16 :goto_0

    .line 55
    .end local v4    # "id":I
    :pswitch_2
    const v4, 0x7f080074

    .line 56
    .restart local v4    # "id":I
    goto/16 :goto_0

    .line 58
    .end local v4    # "id":I
    :pswitch_3
    const v4, 0x7f080073

    .line 59
    .restart local v4    # "id":I
    goto/16 :goto_0

    .line 71
    :pswitch_4
    const v4, 0x7f08006c

    .line 72
    goto/16 :goto_1

    .line 74
    :pswitch_5
    const v4, 0x7f080068

    .line 75
    goto/16 :goto_1

    .line 77
    :pswitch_6
    const v4, 0x7f080069

    .line 78
    goto/16 :goto_1

    .line 80
    :pswitch_7
    const v4, 0x7f080067

    .line 81
    goto/16 :goto_1

    .line 94
    :pswitch_8
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "C1"

    const-string v2, "c1\u8bbe\u5907\u542f\u52a8"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 102
    :pswitch_9
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "C3"

    const-string v2, "c3\u8bbe\u5907\u542f\u52a8"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const v0, 0x7f0e00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v0, 0x7f0e00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v0, 0x7f0e00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v0, 0x7f0e00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v0, 0x7f0e00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const v0, 0x7f0e00d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v0, 0x7f0e00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 112
    :pswitch_a
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "C3"

    const-string v2, "c3\u8bbe\u5907\u542f\u52a8"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const v7, 0x7f0e00db

    const v8, 0x7f08006f

    const-string v9, ""

    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-eqz v0, :cond_3

    const v10, 0x7f03001b

    :goto_e
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 113
    :cond_3
    const v10, 0x7f03001c

    goto :goto_e

    .line 119
    :cond_4
    const v0, 0x7f0e00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v0, 0x7f0e00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const v0, 0x7f0e00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const v0, 0x7f0e00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    const v0, 0x7f0e00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v0, 0x7f0e00d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const v0, 0x7f0e00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 131
    .restart local v12    # "imageFlip":I
    :cond_5
    const v10, 0x7f03001c

    goto/16 :goto_4

    .line 134
    :cond_6
    const v10, 0x7f03001c

    goto/16 :goto_5

    .line 146
    :pswitch_b
    const v4, 0x7f08005b

    .line 147
    goto/16 :goto_6

    .line 149
    :pswitch_c
    const v4, 0x7f08005c

    .line 150
    goto/16 :goto_6

    .line 152
    :pswitch_d
    const v4, 0x7f08005d

    .line 153
    goto/16 :goto_6

    .line 155
    :pswitch_e
    const v4, 0x7f08005a

    goto/16 :goto_6

    .line 161
    :cond_7
    const v0, 0x7f0e00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v0, 0x7f0e00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 170
    :sswitch_0
    const v4, 0x7f080055

    .line 171
    goto/16 :goto_8

    .line 173
    :sswitch_1
    const v4, 0x7f080056

    .line 174
    goto/16 :goto_8

    .line 176
    :sswitch_2
    const v4, 0x7f080057

    .line 177
    goto/16 :goto_8

    .line 179
    :sswitch_3
    const v4, 0x7f080058

    .line 180
    goto/16 :goto_8

    .line 188
    :cond_8
    const v0, 0x7f0e00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const v0, 0x7f0e00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const v0, 0x7f0e00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v0, 0x7f0e00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const v0, 0x7f0e00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 205
    :pswitch_f
    const v4, 0x7f080061

    goto/16 :goto_a

    .line 211
    :cond_9
    const v0, 0x7f0e00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const v0, 0x7f0e00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v0, 0x7f0e00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const v0, 0x7f0e00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v0, 0x7f0e00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 221
    :cond_a
    const v10, 0x7f03001c

    goto/16 :goto_c

    .line 225
    :cond_b
    const v0, 0x7f0e00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    const v0, 0x7f0e00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    const v0, 0x7f0e00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v0, 0x7f0e00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v0, 0x7f0e00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 69
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 90
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 140
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_3
        0x50 -> :sswitch_2
        0x5a -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 199
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method private setText1_(Landroid/view/View;II)Landroid/view/View;
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "itemId"    # I
    .param p3, "stringId"    # I

    .prologue
    .line 460
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "item":Landroid/view/View;
    const v2, 0x7f0e00fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 462
    .local v1, "txtView":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 463
    return-object v0
.end method

.method private setTextIcon(Landroid/view/View;IIII)Landroid/view/View;
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "itemId"    # I
    .param p3, "stringId1"    # I
    .param p4, "stringId2"    # I
    .param p5, "iconId"    # I

    .prologue
    .line 467
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, "item":Landroid/view/View;
    const v3, 0x7f0e00fd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 469
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 470
    const v3, 0x7f0e00ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "txtView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 471
    .restart local v2    # "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 472
    const v3, 0x7f0e00fe

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 473
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    return-object v0
.end method

.method private setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "itemId"    # I
    .param p3, "stringId1"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "iconId"    # I

    .prologue
    .line 478
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, "item":Landroid/view/View;
    const v3, 0x7f0e00fd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 480
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 481
    const v3, 0x7f0e00ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "txtView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 482
    .restart local v2    # "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    const v3, 0x7f0e00fe

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 484
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    return-object v0
.end method

.method private updateEmissivity(I)V
    .locals 9
    .param p1, "opt"    # I

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0x5a

    const/16 v6, 0x50

    const/16 v5, 0x46

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 351
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v8, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    .line 352
    const-string v4, "emissivity"

    invoke-static {v4, v8}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 353
    const v0, 0x7f080055

    .line 372
    .local v0, "id":I
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 373
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/ExtPara;

    invoke-direct {v2}, Lcn/com/magnity/magnitycx/sdk/ExtPara;-><init>()V

    .line 374
    .local v2, "param":Lcn/com/magnity/magnitycx/sdk/ExtPara;
    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V

    .line 375
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    iget v5, v2, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    invoke-static {v4, v5}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setEmissivity(II)V

    .line 376
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 378
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const v5, 0x7f0e00e5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, "item":Landroid/view/View;
    const v4, 0x7f0e00ff

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 380
    .local v3, "txtView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 381
    return-void

    .line 356
    .end local v0    # "id":I
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "param":Lcn/com/magnity/magnitycx/sdk/ExtPara;
    .end local v3    # "txtView":Landroid/widget/TextView;
    :pswitch_0
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v7, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    .line 357
    const-string v4, "emissivity"

    invoke-static {v4, v7}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 358
    const v0, 0x7f080056

    .line 359
    .restart local v0    # "id":I
    goto :goto_0

    .line 361
    .end local v0    # "id":I
    :pswitch_1
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v6, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    .line 362
    const-string v4, "emissivity"

    invoke-static {v4, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 363
    const v0, 0x7f080057

    .line 364
    .restart local v0    # "id":I
    goto :goto_0

    .line 366
    .end local v0    # "id":I
    :pswitch_2
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v5, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    .line 367
    const-string v4, "emissivity"

    invoke-static {v4, v5}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 368
    const v0, 0x7f080058

    .restart local v0    # "id":I
    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFlipParameter(III)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "itemId"    # I
    .param p3, "stringId"    # I

    .prologue
    .line 428
    const/4 v8, 0x0

    .line 429
    .local v8, "selected":Z
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v6, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I

    .line 430
    .local v6, "imageFlip":I
    and-int v0, v6, p1

    if-nez v0, :cond_0

    .line 431
    or-int/2addr v6, p1

    .line 432
    const/4 v8, 0x1

    .line 437
    :goto_0
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v6, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I

    .line 438
    const-string v0, "flipMode"

    invoke-static {v0, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 439
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const-string v4, ""

    if-eqz v8, :cond_1

    const v5, 0x7f03001b

    :goto_1
    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    .line 442
    new-instance v7, Lcn/com/magnity/magnitycx/sdk/ExtPara;

    invoke-direct {v7}, Lcn/com/magnity/magnitycx/sdk/ExtPara;-><init>()V

    .line 443
    .local v7, "param":Lcn/com/magnity/magnitycx/sdk/ExtPara;
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 444
    invoke-static {v7}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V

    .line 445
    iput v6, v7, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 446
    invoke-static {v7}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V

    .line 447
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 448
    return-void

    .line 434
    .end local v7    # "param":Lcn/com/magnity/magnitycx/sdk/ExtPara;
    :cond_0
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v6, v0

    .line 435
    const/4 v8, 0x0

    goto :goto_0

    .line 439
    :cond_1
    const v5, 0x7f03001c

    goto :goto_1
.end method

.method private updateFpsUi(I)V
    .locals 6
    .param p1, "opt"    # I

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 391
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v4, 0x0

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    .line 392
    const v0, 0x7f080060

    .line 393
    .local v0, "id":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FRAME_RATE_HIGH"

    const-string v5, "\u5e27\u7387\u9ad8"

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    const-string v3, "fpsMode"

    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    invoke-static {v3, v4}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 405
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const v4, 0x7f0e00ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 406
    .local v1, "item":Landroid/view/View;
    const v3, 0x7f0e00ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 407
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 409
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/MsgBus;->getInstance()Lcn/com/magnity/magnitycx/sdk/MsgBus;

    move-result-object v3

    const-string v4, "set_baseparameter"

    invoke-virtual {v3, v4}, Lcn/com/magnity/magnitycx/sdk/MsgBus;->postEmptytMsg(Ljava/lang/String;)V

    .line 410
    return-void

    .line 396
    .end local v0    # "id":I
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "txtView":Landroid/widget/TextView;
    :pswitch_0
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v4, 0x1

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    .line 397
    const v0, 0x7f080061

    .line 398
    .restart local v0    # "id":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FRAME_RATE_LOW"

    const-string v5, "\u5e27\u7387\u4f4e"

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateImageEX(I)V
    .locals 5
    .param p1, "opt"    # I

    .prologue
    .line 311
    packed-switch p1, :pswitch_data_0

    .line 314
    const v0, 0x7f080059

    .line 330
    .local v0, "id":I
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isProcessImage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const v4, 0x7f0e00e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, "item":Landroid/view/View;
    const v3, 0x7f0e00ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 335
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput p1, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    .line 336
    const-string v3, "exMode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 338
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v3, v3, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v4, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v4, v4, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {p1, v3, v4}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setEX(III)V

    .line 341
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "txtView":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 317
    .end local v0    # "id":I
    :pswitch_0
    const v0, 0x7f08005b

    .line 318
    .restart local v0    # "id":I
    goto :goto_0

    .line 320
    .end local v0    # "id":I
    :pswitch_1
    const v0, 0x7f08005c

    .line 321
    .restart local v0    # "id":I
    goto :goto_0

    .line 323
    .end local v0    # "id":I
    :pswitch_2
    const v0, 0x7f08005d

    .line 324
    .restart local v0    # "id":I
    goto :goto_0

    .line 326
    .end local v0    # "id":I
    :pswitch_3
    const v0, 0x7f08005a

    .restart local v0    # "id":I
    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateMovingCrossValue(II)V
    .locals 7
    .param p1, "itemId"    # I
    .param p2, "stringId"    # I

    .prologue
    .line 451
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    if-nez v0, :cond_0

    const/4 v6, 0x1

    .line 452
    .local v6, "selected":Z
    :goto_0
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput-boolean v6, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    .line 453
    const-string v0, "isShowMovingCross"

    invoke-static {v0, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 455
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const-string v4, ""

    if-eqz v6, :cond_1

    const v5, 0x7f03001b

    :goto_1
    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    .line 457
    return-void

    .line 451
    .end local v6    # "selected":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 455
    .restart local v6    # "selected":Z
    :cond_1
    const v5, 0x7f03001c

    goto :goto_1
.end method

.method private updateRoiTraceParameter(II)V
    .locals 8
    .param p1, "itemId"    # I
    .param p2, "stringId"    # I

    .prologue
    const/4 v7, 0x1

    .line 413
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-nez v0, :cond_1

    move v6, v7

    .line 415
    .local v6, "isTraceRoi":Z
    :goto_0
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput-boolean v6, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    .line 416
    const-string v0, "isTraceRoi"

    invoke-static {v0, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 418
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const-string v4, ""

    if-eqz v6, :cond_2

    const v5, 0x7f03001b

    :goto_1
    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentSetting;->setTextIcon(Landroid/view/View;IILjava/lang/String;I)Landroid/view/View;

    .line 421
    if-eqz v6, :cond_0

    .line 422
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08007c

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 423
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ROIT_TRACE"

    const-string v2, "\u77e9\u5f62\u6d4b\u6e29"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void

    .line 413
    .end local v6    # "isTraceRoi":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 418
    .restart local v6    # "isTraceRoi":Z
    :cond_2
    const v5, 0x7f03001c

    goto :goto_1
.end method

.method private updateTempTraceUi(I)V
    .locals 8
    .param p1, "opt"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 286
    :pswitch_0
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v5, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 287
    const-string v3, "maxMinTrace"

    invoke-static {v3, v5}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 288
    const v0, 0x7f080068

    .line 301
    .local v0, "id":I
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const v4, 0x7f0e00d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 302
    .local v1, "item":Landroid/view/View;
    const v3, 0x7f0e00ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 303
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 304
    return-void

    .line 280
    .end local v0    # "id":I
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "txtView":Landroid/widget/TextView;
    :pswitch_1
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 281
    const-string v3, "maxMinTrace"

    invoke-static {v3, v4}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 282
    const v0, 0x7f08006c

    .line 283
    .restart local v0    # "id":I
    goto :goto_0

    .line 291
    .end local v0    # "id":I
    :pswitch_2
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v6, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 292
    const-string v3, "maxMinTrace"

    invoke-static {v3, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 293
    const v0, 0x7f080069

    .line 294
    .restart local v0    # "id":I
    goto :goto_0

    .line 296
    .end local v0    # "id":I
    :pswitch_3
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v7, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 297
    const-string v3, "maxMinTrace"

    invoke-static {v3, v7}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 298
    const v0, 0x7f080067

    .restart local v0    # "id":I
    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateVisibleUi(I)V
    .locals 7
    .param p1, "opt"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 245
    packed-switch p1, :pswitch_data_0

    .line 253
    :pswitch_0
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v4, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndSize:I

    .line 254
    const-string v3, "visWndSize"

    invoke-static {v3, v4}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 255
    const v0, 0x7f080074

    .line 263
    .local v0, "id":I
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    const v4, 0x7f0e00d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "item":Landroid/view/View;
    const v3, 0x7f0e00ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 267
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->dispMode:I

    if-nez v3, :cond_0

    .line 268
    sget-object v3, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    .line 269
    sget-object v3, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    invoke-virtual {v3, v5}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    .line 271
    :cond_0
    return-void

    .line 247
    .end local v0    # "id":I
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "txtView":Landroid/widget/TextView;
    :pswitch_1
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v5, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndSize:I

    .line 248
    const-string v3, "visWndSize"

    invoke-static {v3, v5}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 249
    const v0, 0x7f080075

    .line 250
    .restart local v0    # "id":I
    goto :goto_0

    .line 258
    .end local v0    # "id":I
    :pswitch_2
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v6, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndSize:I

    .line 259
    const-string v3, "visWndSize"

    invoke-static {v3, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 260
    const v0, 0x7f080073

    .restart local v0    # "id":I
    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;-><init>(Lcn/com/magnity/magnitycx/FragmentSetting;Lcn/com/magnity/magnitycx/FragmentSetting$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->settingClickListner_:Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    const v0, 0x7f04003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->initUi(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting;->rootView_:Landroid/view/View;

    return-object v0
.end method

.method public onOptionSelected(II)V
    .locals 0
    .param p1, "itemId"    # I
    .param p2, "opt"    # I

    .prologue
    .line 490
    sparse-switch p1, :sswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 492
    :sswitch_0
    invoke-direct {p0, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateVisibleUi(I)V

    goto :goto_0

    .line 495
    :sswitch_1
    invoke-direct {p0, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateTempTraceUi(I)V

    goto :goto_0

    .line 498
    :sswitch_2
    invoke-direct {p0, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateImageEX(I)V

    goto :goto_0

    .line 501
    :sswitch_3
    invoke-direct {p0, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateEmissivity(I)V

    goto :goto_0

    .line 504
    :sswitch_4
    invoke-direct {p0, p2}, Lcn/com/magnity/magnitycx/FragmentSetting;->updateFpsUi(I)V

    goto :goto_0

    .line 490
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d5 -> :sswitch_0
        0x7f0e00d9 -> :sswitch_1
        0x7f0e00e0 -> :sswitch_2
        0x7f0e00e5 -> :sswitch_3
        0x7f0e00ea -> :sswitch_4
    .end sparse-switch
.end method
