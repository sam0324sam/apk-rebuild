.class Lcn/com/magnity/magnitymx/util/LocationUtils$3;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/util/LocationUtils;->openLocationSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/util/LocationUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/util/LocationUtils;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/util/LocationUtils;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils$3;->this$0:Lcn/com/magnity/magnitymx/util/LocationUtils;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/util/LocationUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/LocationUtils$3;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method
