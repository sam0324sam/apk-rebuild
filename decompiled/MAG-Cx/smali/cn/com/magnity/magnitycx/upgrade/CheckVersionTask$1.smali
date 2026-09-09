.class Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;
.super Landroid/os/Handler;
.source "CheckVersionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 116
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$000(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 125
    .local v7, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    const-string v1, "forceUpgrade"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$102(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Z)Z

    .line 126
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    const-string v1, "description"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 127
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionName"

    .line 128
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "versionCode"

    .line 129
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .line 130
    invoke-static {v5}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$100(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Z

    move-result v5

    .line 126
    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$200(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 133
    .end local v7    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$300(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$402(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 142
    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f080083

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 144
    const v0, 0x7f080029

    new-instance v1, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$1;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 151
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 156
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$402(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 157
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;-><init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 170
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 171
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "%1d KB/%2d KB"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 174
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 175
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 176
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 179
    :pswitch_4
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 184
    :pswitch_5
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$400(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$402(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 188
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$300(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    .line 189
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {v1, v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$700(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/io/File;)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
