.class Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;
.super Ljava/lang/Object;
.source "DialogOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/DialogOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/DialogOption;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/DialogOption;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/DialogOption;Lcn/com/magnity/magnitycx/DialogOption$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/DialogOption;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/DialogOption$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;-><init>(Lcn/com/magnity/magnitycx/DialogOption;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 135
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/DialogOption;->access$200(Lcn/com/magnity/magnitycx/DialogOption;)Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/DialogOption;->access$100(Lcn/com/magnity/magnitycx/DialogOption;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;->onOptionSelected(II)V

    .line 138
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogOption;->dismiss()V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/DialogOption;->access$200(Lcn/com/magnity/magnitycx/DialogOption;)Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/DialogOption;->access$100(Lcn/com/magnity/magnitycx/DialogOption;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;->onOptionSelected(II)V

    .line 142
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogOption;->dismiss()V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/DialogOption;->access$200(Lcn/com/magnity/magnitycx/DialogOption;)Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/DialogOption;->access$100(Lcn/com/magnity/magnitycx/DialogOption;)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;->onOptionSelected(II)V

    .line 146
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogOption;->dismiss()V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/DialogOption;->access$200(Lcn/com/magnity/magnitycx/DialogOption;)Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/DialogOption;->access$100(Lcn/com/magnity/magnitycx/DialogOption;)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;->onOptionSelected(II)V

    .line 150
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogOption;->dismiss()V

    goto :goto_0

    .line 153
    :pswitch_5
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/DialogOption;->access$200(Lcn/com/magnity/magnitycx/DialogOption;)Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/DialogOption;->access$100(Lcn/com/magnity/magnitycx/DialogOption;)I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;->onOptionSelected(II)V

    .line 154
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogOption;->dismiss()V

    goto :goto_0

    .line 157
    :pswitch_6
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;->this$0:Lcn/com/magnity/magnitycx/DialogOption;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/DialogOption;->dismiss()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0e00a4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
