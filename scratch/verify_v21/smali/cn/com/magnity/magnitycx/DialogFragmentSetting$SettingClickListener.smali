.class Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;
.super Ljava/lang/Object;
.source "DialogFragmentSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/DialogFragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/DialogFragmentSetting;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/DialogFragmentSetting;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/DialogFragmentSetting;Lcn/com/magnity/magnitycx/DialogFragmentSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/DialogFragmentSetting;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/DialogFragmentSetting$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;-><init>(Lcn/com/magnity/magnitycx/DialogFragmentSetting;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 93
    :sswitch_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentSetting;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogFragmentSetting;->dismiss()V

    goto :goto_0

    .line 96
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentSetting;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogFragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitycx/SupportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentSetting;

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitycx/DialogFragmentSetting;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentSetting$SettingClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentSetting;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogFragmentSetting;->dismiss()V

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x7f0e007a -> :sswitch_0
        0x7f0e00b7 -> :sswitch_1
    .end sparse-switch
.end method
