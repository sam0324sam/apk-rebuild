.class Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 250
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 230
    :sswitch_0
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 234
    :pswitch_1
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->swVersion:I

    const/16 v3, 0x64

    if-le v1, v3, :cond_1

    .line 238
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "state":Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const-string v1, "ring"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->deinit(Z)V

    goto :goto_1

    .line 242
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    const-string v1, "hang up"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 244
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->init()Z

    goto :goto_1

    .line 245
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "hang on"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_1

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f0a83a5 -> :sswitch_1
        0x714f24ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
