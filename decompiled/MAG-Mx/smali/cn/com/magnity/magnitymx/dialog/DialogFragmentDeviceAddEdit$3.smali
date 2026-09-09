.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$3;
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
    .line 234
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->dismiss()V

    .line 238
    return-void
.end method
