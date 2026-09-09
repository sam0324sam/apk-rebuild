.class final synthetic Lcn/com/magnity/magnitymx/live/LiveFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcn/com/magnity/magnitymx/live/LiveFragment;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/LiveFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$$Lambda$0;->arg$1:Lcn/com/magnity/magnitymx/live/LiveFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$$Lambda$0;->arg$1:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->lambda$onStop$0$LiveFragment()V

    return-void
.end method
