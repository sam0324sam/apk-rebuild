.class Lcn/com/magnity/magnitycx/sdk/DeviceController$1;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 279
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->access$000()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_0
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->access$102(Z)Z

    .line 284
    goto :goto_1

    .line 280
    :catchall_0
    move-exception v1

    .line 281
    :try_start_1
    const-string v2, "DeviceController"

    const-string v3, "FFC worker error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 285
    :goto_1
    return-void

    .line 283
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->access$102(Z)Z

    .line 284
    throw v1
.end method
