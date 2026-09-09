.class Lcn/com/magnity/magnitycx/ImageViewer$1;
.super Lcn/com/magnity/magnitycx/sdk/TimerHelper;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/ImageViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/ImageViewer;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 200
    iput-object p1, p0, Lcn/com/magnity/magnitycx/ImageViewer$1;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$1;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$100(Lcn/com/magnity/magnitycx/ImageViewer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 204
    return-void
.end method
