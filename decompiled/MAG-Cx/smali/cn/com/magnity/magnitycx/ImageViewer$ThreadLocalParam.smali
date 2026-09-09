.class Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadLocalParam"
.end annotation


# instance fields
.field centerTemp:I

.field state:Lcn/com/magnity/magnitycx/sdk/State;

.field final synthetic this$0:Lcn/com/magnity/magnitycx/ImageViewer;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/ImageViewer$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    .line 92
    .local v0, "param":Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->state:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->state:Lcn/com/magnity/magnitycx/sdk/State;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/sdk/State;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/sdk/State;

    iput-object v1, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->state:Lcn/com/magnity/magnitycx/sdk/State;

    .line 95
    :cond_0
    return-object v0
.end method
