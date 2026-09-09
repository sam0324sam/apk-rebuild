.class Lcn/com/magnity/magnitymx/media/MediaActivity$1$2;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/MediaActivity$1;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/MediaActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    .prologue
    .line 165
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$2;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$2;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$2;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v1, v1, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    const v2, 0x7f0e012a

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    return-void
.end method
