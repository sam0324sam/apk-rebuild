.class Lcn/com/magnity/magnitymx/settings/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/settings/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/settings/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/settings/AboutActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/AboutActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->access$000(Lcn/com/magnity/magnitymx/settings/AboutActivity;Ljava/lang/Boolean;)V

    .line 170
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/AboutActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/AboutActivity;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void
.end method
