.class public Lcn/com/magnity/magnitycx/FragmentSupportAbout;
.super Landroid/support/v4/app/Fragment;
.source "FragmentSupportAbout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;
    }
.end annotation


# instance fields
.field private packInfo_:Landroid/content/pm/PackageInfo;

.field private settingClickListener_:Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;

.field private tvCompanyCaption_:Landroid/widget/TextView;

.field private tvCompany_:Landroid/widget/TextView;

.field private tvHWVersionCaption_:Landroid/widget/TextView;

.field private tvHWVersion_:Landroid/widget/TextView;

.field private tvProductTypeCaption_:Landroid/widget/TextView;

.field private tvProductType_:Landroid/widget/TextView;

.field private tvRightCaption_:Landroid/widget/TextView;

.field private tvRight_:Landroid/widget/TextView;

.field private tvSWVersionCaption_:Landroid/widget/TextView;

.field private tvSWVersion_:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v3, Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;

    invoke-direct {v3, p0, v5}, Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentSupportAbout;Lcn/com/magnity/magnitycx/FragmentSupportAbout$1;)V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->settingClickListener_:Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;

    .line 34
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 35
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 37
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->packInfo_:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v5, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->packInfo_:Landroid/content/pm/PackageInfo;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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
    const v5, 0x7f0e0101

    const v4, 0x7f0e0100

    .line 46
    const v2, 0x7f04003f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f0e007b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductTypeCaption_:Landroid/widget/TextView;

    .line 50
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductTypeCaption_:Landroid/widget/TextView;

    const v3, 0x7f08004f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    .line 52
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    packed-switch v2, :pswitch_data_0

    .line 73
    :pswitch_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    const v2, 0x7f0e007c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvSWVersionCaption_:Landroid/widget/TextView;

    .line 82
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvSWVersionCaption_:Landroid/widget/TextView;

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvSWVersion_:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->packInfo_:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvSWVersion_:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->packInfo_:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    const v2, 0x7f0e007f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvRightCaption_:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvRightCaption_:Landroid/widget/TextView;

    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvRight_:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvRight_:Landroid/widget/TextView;

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v2, 0x7f0e007e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvHWVersionCaption_:Landroid/widget/TextView;

    .line 96
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvHWVersionCaption_:Landroid/widget/TextView;

    const v3, 0x7f080023

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvHWVersion_:Landroid/widget/TextView;

    .line 98
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvHWVersion_:Landroid/widget/TextView;

    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v3, v3, Lcn/com/magnity/magnitycx/sdk/BasePara1;->hwVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    const v2, 0x7f0e0080

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvCompanyCaption_:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvCompanyCaption_:Landroid/widget/TextView;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvCompany_:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvCompany_:Landroid/widget/TextView;

    const-string v3, "http://www.magnity.com.cn"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvCompany_:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 110
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvCompany_:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 112
    return-object v0

    .line 55
    :pswitch_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 58
    :pswitch_2
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 61
    :pswitch_3
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 64
    :pswitch_4
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 67
    :pswitch_5
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 70
    :pswitch_6
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvProductType_:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout;->tvHWVersion_:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
