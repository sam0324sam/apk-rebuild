.class public Lcn/com/magnity/magnitymx/settings/AboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutActivity.java"


# instance fields
.field private packInfo_:Landroid/content/pm/PackageInfo;

.field private tvCompanyCaption_:Landroid/widget/TextView;

.field private tvCompany_:Landroid/widget/TextView;

.field private tvCooperatedCaption_:Landroid/widget/TextView;

.field private tvCooperatedPhoneCaption_:Landroid/widget/TextView;

.field private tvCooperatedPhone_:Landroid/widget/TextView;

.field private tvCooperated_:Landroid/widget/TextView;

.field private tvHWVersionCaption_:Landroid/widget/TextView;

.field private tvHWVersion_:Landroid/widget/TextView;

.field private tvMagPhoneCaption_:Landroid/widget/TextView;

.field private tvMagPhone_:Landroid/widget/TextView;

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
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/settings/AboutActivity;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/AboutActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->setCompanyRelatedVisible(Ljava/lang/Boolean;)V

    return-void
.end method

.method private setCompanyRelatedVisible(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isShow"    # Ljava/lang/Boolean;

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 178
    .local v0, "action":I
    :goto_0
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const v1, 0x7f080094

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const v1, 0x7f080080

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void

    .line 176
    .end local v0    # "action":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v8, 0x7f0a001c

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 38
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 39
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    :cond_0
    const v8, 0x7f0e001f

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->setTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 44
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 46
    .local v4, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    const v8, 0x7f0800b0

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 52
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductTypeCaption_:Landroid/widget/TextView;

    .line 53
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductTypeCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e00d7

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductType_:Landroid/widget/TextView;

    .line 55
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v9, 0x7f0e0030

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 56
    const-string v9, "mag"

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 90
    :goto_2
    const v8, 0x7f0800b5

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 91
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvSWVersionCaption_:Landroid/widget/TextView;

    .line 92
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvSWVersionCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e0126

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 93
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvSWVersion_:Landroid/widget/TextView;

    .line 94
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_2

    .line 95
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvSWVersion_:Landroid/widget/TextView;

    iget-object v9, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_2
    const v8, 0x7f080098

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 99
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvHWVersionCaption_:Landroid/widget/TextView;

    .line 100
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvHWVersion_:Landroid/widget/TextView;

    .line 101
    const-string v9, "mag"

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_3
    :goto_3
    packed-switch v8, :pswitch_data_1

    .line 112
    :goto_4
    const v8, 0x7f0800b1

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 113
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvRightCaption_:Landroid/widget/TextView;

    .line 114
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvRightCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e00dd

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 115
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvRight_:Landroid/widget/TextView;

    .line 116
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvRight_:Landroid/widget/TextView;

    const v9, 0x7f0e0078

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v8, 0x7f08009d

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 119
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvMagPhoneCaption_:Landroid/widget/TextView;

    .line 120
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvMagPhoneCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e0085

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 121
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvMagPhone_:Landroid/widget/TextView;

    .line 122
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvMagPhone_:Landroid/widget/TextView;

    const-string v9, "400-808-1320"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v8, 0x7f080092

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 125
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCompanyCaption_:Landroid/widget/TextView;

    .line 126
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCompanyCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e004e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 127
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCompany_:Landroid/widget/TextView;

    .line 128
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCompany_:Landroid/widget/TextView;

    const-string v9, "http://www.magnity.com.cn"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCompany_:Landroid/widget/TextView;

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 130
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCompany_:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 132
    const-string v9, "mag"

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    :cond_4
    :goto_5
    packed-switch v8, :pswitch_data_2

    .line 166
    :goto_6
    const v8, 0x7f0800a7

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcn/com/magnity/magnitymx/settings/AboutActivity$1;

    invoke-direct {v9, p0}, Lcn/com/magnity/magnitymx/settings/AboutActivity$1;-><init>(Lcn/com/magnity/magnitymx/settings/AboutActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void

    .line 47
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->packInfo_:Landroid/content/pm/PackageInfo;

    goto/16 :goto_0

    .line 56
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "view":Landroid/view/View;
    :sswitch_0
    const-string v10, "mag"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "skld"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "zhongxing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x2

    goto/16 :goto_1

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 59
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "camType":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 61
    const-class v8, Lcn/com/magnity/magnitymx/C$CameraType;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 63
    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_3

    :cond_5
    :goto_7
    packed-switch v8, :pswitch_data_3

    .line 75
    move-object v1, v6

    .line 79
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    :goto_8
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductType_:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 63
    .restart local v6    # "s":Ljava/lang/String;
    :sswitch_3
    const-string v9, "C1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x0

    goto :goto_7

    :sswitch_4
    const-string v9, "C1Pro"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x1

    goto :goto_7

    :sswitch_5
    const-string v9, "C1ProLt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x2

    goto :goto_7

    :sswitch_6
    const-string v9, "160Core"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x3

    goto :goto_7

    :sswitch_7
    const-string v9, "M3"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x4

    goto :goto_7

    :sswitch_8
    const-string v9, "M3Pro"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x5

    goto :goto_7

    :sswitch_9
    const-string v9, "M6"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x6

    goto :goto_7

    :sswitch_a
    const-string v9, "Mx"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x7

    goto :goto_7

    .line 72
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAG"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    goto :goto_8

    .line 83
    .end local v1    # "camType":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "s":Ljava/lang/String;
    :pswitch_2
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v9, 0x7f0e0031

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 86
    :pswitch_3
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvProductType_:Landroid/widget/TextView;

    const v9, 0x7f0e0032

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 101
    :sswitch_b
    const-string v10, "mag"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x0

    goto/16 :goto_3

    :sswitch_c
    const-string v10, "skld"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 103
    :pswitch_4
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvHWVersionCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e0070

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvHWVersion_:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 107
    :pswitch_5
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvHWVersionCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e0089

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvHWVersion_:Landroid/widget/TextView;

    const v9, 0x7f0e0078

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 132
    :sswitch_d
    const-string v10, "mag"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x0

    goto/16 :goto_5

    :sswitch_e
    const-string v10, "skld"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x1

    goto/16 :goto_5

    :sswitch_f
    const-string v10, "zhongxing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x2

    goto/16 :goto_5

    :sswitch_10
    const-string v10, "hidelogo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x3

    goto/16 :goto_5

    .line 134
    :pswitch_6
    const v8, 0x7f0800b2

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 135
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const v8, 0x7f080094

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 137
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const v8, 0x7f080094

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 139
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 142
    :pswitch_7
    const v8, 0x7f080094

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 143
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperatedCaption_:Landroid/widget/TextView;

    .line 144
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperatedCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e0052

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 145
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperated_:Landroid/widget/TextView;

    .line 146
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperated_:Landroid/widget/TextView;

    const v9, 0x7f0e011b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 148
    const v8, 0x7f080095

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 149
    const v8, 0x7f0800b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperatedPhoneCaption_:Landroid/widget/TextView;

    .line 150
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperatedPhoneCaption_:Landroid/widget/TextView;

    const v9, 0x7f0e0053

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 151
    const v8, 0x7f0800b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperatedPhone_:Landroid/widget/TextView;

    .line 152
    iget-object v8, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity;->tvCooperatedPhone_:Landroid/widget/TextView;

    const-string v9, "0531-88160071"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v8, 0x7f08007f

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v8, 0x7f080080

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 158
    :pswitch_8
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->setCompanyRelatedVisible(Ljava/lang/Boolean;)V

    .line 159
    const v8, 0x7f0800a7

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 162
    :pswitch_9
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->setCompanyRelatedVisible(Ljava/lang/Boolean;)V

    .line 163
    const v8, 0x7f0800a7

    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        -0x727c801c -> :sswitch_2
        0x1a553 -> :sswitch_0
        0x35e5d0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 101
    :sswitch_data_1
    .sparse-switch
        0x1a553 -> :sswitch_b
        0x35e5d0 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 132
    :sswitch_data_2
    .sparse-switch
        -0x727c801c -> :sswitch_f
        -0x69b0ce13 -> :sswitch_10
        0x1a553 -> :sswitch_d
        0x35e5d0 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 63
    :sswitch_data_3
    .sparse-switch
        0x84e -> :sswitch_3
        0x986 -> :sswitch_7
        0x989 -> :sswitch_9
        0x9cb -> :sswitch_a
        0x3c7a77f -> :sswitch_4
        0x4557b47 -> :sswitch_8
        0x307bcd67 -> :sswitch_5
        0x7efb94ea -> :sswitch_6
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 192
    :pswitch_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
