.class public Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;
.super Lcn/com/magnity/magnitymx/base/ElementActivity;
.source "LanguageActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguageActivity"


# instance fields
.field private autoLayout:Landroid/widget/LinearLayout;

.field private chineseSimplifiedLayout:Landroid/widget/LinearLayout;

.field private chineseTraditionalLayout:Landroid/widget/LinearLayout;

.field private englishLayout:Landroid/widget/LinearLayout;

.field private mPresenter:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;

.field private selectedLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;-><init>()V

    .line 28
    const-string v0, "auto"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    return-void
.end method

.method private select(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 104
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 106
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 109
    :cond_2
    return-void
.end method

.method private unselect(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 115
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 117
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 120
    :cond_2
    return-void
.end method

.method private unselectAll()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->autoLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->unselect(Landroid/widget/LinearLayout;)V

    .line 124
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseSimplifiedLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->unselect(Landroid/widget/LinearLayout;)V

    .line 125
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseTraditionalLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->unselect(Landroid/widget/LinearLayout;)V

    .line 126
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->englishLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->unselect(Landroid/widget/LinearLayout;)V

    .line 127
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 161
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 162
    return-void
.end method

.method public initData(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->unselectAll()V

    .line 63
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->autoLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->englishLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseSimplifiedLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseTraditionalLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 75
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->unselectAll()V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->autoLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 83
    const-string v0, "auto"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseSimplifiedLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 87
    const-string v0, "zh_CN"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseTraditionalLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 91
    const-string v0, "zh_TW"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->englishLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->select(Landroid/widget/LinearLayout;)V

    .line 95
    const-string v0, "en"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f08014f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    :cond_0
    const v1, 0x7f0e0103

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->setTitle(I)V

    .line 42
    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->autoLayout:Landroid/widget/LinearLayout;

    .line 43
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->autoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f080150

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseSimplifiedLayout:Landroid/widget/LinearLayout;

    .line 45
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseSimplifiedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f080151

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseTraditionalLayout:Landroid/widget/LinearLayout;

    .line 47
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->chineseTraditionalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f080152

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->englishLayout:Landroid/widget/LinearLayout;

    .line 49
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->englishLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v1, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;-><init>(Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 151
    :goto_0
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 145
    :sswitch_0
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onBackPressed()V

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->mPresenter:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->selectedLanguage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;->save(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08009c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->mPresenter:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;

    .line 56
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;->setPresenter(Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;)V

    return-void
.end method
