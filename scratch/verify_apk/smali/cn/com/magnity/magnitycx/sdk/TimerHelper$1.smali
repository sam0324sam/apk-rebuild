.class Lcn/com/magnity/magnitycx/sdk/TimerHelper$1;
.super Ljava/util/TimerTask;
.source "TimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/sdk/TimerHelper;->start(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/TimerHelper;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/sdk/TimerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    .prologue
    .line 14
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper$1;->this$0:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper$1;->this$0:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->run()V

    .line 18
    return-void
.end method
