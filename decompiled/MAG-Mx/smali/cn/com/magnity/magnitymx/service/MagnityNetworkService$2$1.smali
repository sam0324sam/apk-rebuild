.class Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;
.super Ljava/lang/Object;
.source "MagnityNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;

    .prologue
    .line 194
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;->this$1:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;->this$1:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;->this$1:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;

    iget-object v1, v1, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    const v2, 0x7f0e012a

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;->this$1:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iput-boolean v3, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isNetworkErrorToasted:Z

    .line 198
    return-void
.end method
