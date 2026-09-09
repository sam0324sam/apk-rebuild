.class Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/login/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/login/LoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 136
    :sswitch_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$000(Lcn/com/magnity/magnitymx/login/LoginDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$002(Lcn/com/magnity/magnitymx/login/LoginDialog;Z)Z

    .line 137
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$000(Lcn/com/magnity/magnitymx/login/LoginDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$200(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    move v2, v3

    .line 136
    goto :goto_1

    .line 141
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$200(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 147
    :sswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$300(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$500(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$600(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/com/magnity/magnitymx/util/FragmentUtils;->hideSoftKeyboard(Landroid/content/Context;Ljava/util/List;)V

    .line 154
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$300(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$702(Lcn/com/magnity/magnitymx/login/LoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$802(Lcn/com/magnity/magnitymx/login/LoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$500(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$902(Lcn/com/magnity/magnitymx/login/LoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$600(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "serverPortStr":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    const/16 v4, 0x50

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1002(Lcn/com/magnity/magnitymx/login/LoginDialog;I)I

    .line 163
    :goto_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$700(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$300(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 165
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/util/ToastUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0151

    invoke-virtual {v2, v3, v4}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1002(Lcn/com/magnity/magnitymx/login/LoginDialog;I)I

    goto :goto_2

    .line 168
    :cond_3
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$800(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 170
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/util/ToastUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0155

    invoke-virtual {v2, v3, v4}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1000(Lcn/com/magnity/magnitymx/login/LoginDialog;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1000(Lcn/com/magnity/magnitymx/login/LoginDialog;)I

    move-result v2

    const v4, 0xffff

    if-le v2, v4, :cond_6

    .line 174
    :cond_5
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$600(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 175
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/util/ToastUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00ea

    invoke-virtual {v2, v3, v4}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 178
    :cond_6
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1200(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1300(Lcn/com/magnity/magnitymx/login/LoginDialog;)V

    .line 180
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$700(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$800(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$900(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1000(Lcn/com/magnity/magnitymx/login/LoginDialog;)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "serverPortStr":Ljava/lang/String;
    .end local v1    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :sswitch_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->access$1500(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;->remember(Z)V

    goto/16 :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800e1 -> :sswitch_1
        0x7f080121 -> :sswitch_2
        0x7f080147 -> :sswitch_0
    .end sparse-switch
.end method
