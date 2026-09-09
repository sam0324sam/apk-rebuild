.class Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;
.super Ljava/lang/Object;
.source "AboutAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/AboutAboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/AboutAboutActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/AboutAboutActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/AboutAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/AboutAboutActivity;Lcn/com/magnity/magnitycx/AboutAboutActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/AboutAboutActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/AboutAboutActivity$1;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;-><init>(Lcn/com/magnity/magnitycx/AboutAboutActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 264
    :pswitch_0
    const-string v2, "http://www.magnity.com.cn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/com/magnity/magnitycx/AboutAboutActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/AboutAboutActivity;

    invoke-virtual {v2, v0}, Lcn/com/magnity/magnitycx/AboutAboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0080
        :pswitch_0
    .end packed-switch
.end method
