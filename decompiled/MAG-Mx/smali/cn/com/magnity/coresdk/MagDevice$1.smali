.class Lcn/com/magnity/coresdk/MagDevice$1;
.super Ljava/lang/Object;
.source "MagDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/coresdk/MagDevice;->postResult(Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/coresdk/MagDevice;

.field final synthetic val$cb:Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/com/magnity/coresdk/MagDevice;Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/coresdk/MagDevice;

    .prologue
    .line 176
    iput-object p1, p0, Lcn/com/magnity/coresdk/MagDevice$1;->this$0:Lcn/com/magnity/coresdk/MagDevice;

    iput-object p2, p0, Lcn/com/magnity/coresdk/MagDevice$1;->val$cb:Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    iput p3, p0, Lcn/com/magnity/coresdk/MagDevice$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice$1;->val$cb:Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice$1;->val$cb:Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice$1;->val$result:I

    invoke-interface {v0, v1}, Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;->linkResult(I)V

    .line 182
    :cond_0
    return-void
.end method
