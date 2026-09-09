.class Lcn/com/magnity/magnitycx/sdk/DeviceController$2;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/sdk/DeviceController;->showCalibrationDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 950
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 954
    :try_start_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->access$200()Lcn/com/magnity/magnitycx/sdk/State;

    move-result-object v0

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 955
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->access$300()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 956
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v3, "\u4e00\u9375\u6821\u6e96\u70ba 36.4\u00b0C (\u6a19\u6e96\u984d\u6eab)"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "\u4e00\u9375\u6821\u6e96\u70ba 36.8\u00b0C (\u9ad4\u6eab\u504f\u9ad8)"

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string v3, "\u5fae\u8abf\u589e\u52a0 +0.5\u00b0C"

    const/4 v6, 0x2

    aput-object v3, v1, v6

    const-string v3, "\u5fae\u8abf\u6e1b\u5c11 -0.5\u00b0C"

    const/4 v7, 0x3

    aput-object v3, v1, v7

    const-string v3, "\u91cd\u7f6e\u88dc\u511f\u70ba 0.0\u00b0C"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 963
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 964
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "\u6eab\u5ea6\u6821\u6e96 (\u76ee\u524d: %.1f\u00b0C | \u88dc\u511f: %+.1f\u00b0C)"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object v2, v6, v5

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 965
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController$2$1;-><init>(Lcn/com/magnity/magnitycx/sdk/DeviceController$2;Landroid/app/Activity;)V

    invoke-virtual {v3, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 987
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 988
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    goto :goto_0

    .line 989
    :catchall_0
    move-exception v0

    .line 990
    const-string v1, "DeviceController"

    const-string v2, "showCalibrationDialog error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    :goto_0
    return-void
.end method
