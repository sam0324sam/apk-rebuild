.class Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;
.super Landroid/os/Handler;
.source "FragmentMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentMediaHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/com/magnity/magnitymx/media/MediaActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/MediaActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p2, "activity"    # Lcn/com/magnity/magnitymx/media/MediaActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    const-string v6, ""

    .line 110
    .local v6, "name":Ljava/lang/String;
    const-string v5, ""

    .line 111
    .local v5, "messageText":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 114
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v18, "newNum"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 115
    .local v7, "newNum":I
    const-string v18, "oldNum"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 116
    .local v9, "oldNum":I
    const-string v18, "sucNum"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 117
    .local v13, "sucNum":I
    const-string v18, "failNum"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 120
    .local v3, "failNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e00a2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "newTip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e00ae

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "oldTip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0124

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, "sucTip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0063

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "failTip":Ljava/lang/String;
    const-string v15, ""

    .line 125
    .local v15, "tip":Ljava/lang/String;
    if-lez v7, :cond_1

    .line 126
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 128
    :cond_1
    if-lez v9, :cond_2

    .line 129
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 130
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 136
    :cond_2
    :goto_1
    if-lez v13, :cond_3

    .line 137
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7

    .line 138
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 144
    :cond_3
    :goto_2
    if-lez v3, :cond_4

    .line 145
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_8

    .line 146
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 151
    :cond_4
    :goto_3
    if-lez v7, :cond_5

    if-lez v9, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f0e014b

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->isFinishing()Z

    move-result v18

    if-nez v18, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->show()V

    .line 163
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Context;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 132
    :cond_6
    move-object v15, v10

    goto/16 :goto_1

    .line 140
    :cond_7
    move-object v15, v14

    goto/16 :goto_2

    .line 148
    :cond_8
    move-object v15, v4

    goto/16 :goto_3

    .line 171
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "failNum":I
    .end local v4    # "failTip":Ljava/lang/String;
    .end local v7    # "newNum":I
    .end local v8    # "newTip":Ljava/lang/String;
    .end local v9    # "oldNum":I
    .end local v10    # "oldTip":Ljava/lang/String;
    .end local v13    # "sucNum":I
    .end local v14    # "sucTip":Ljava/lang/String;
    .end local v15    # "tip":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 172
    .local v16, "totalProgress":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 173
    .local v11, "remainedNum":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "name":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 174
    .restart local v6    # "name":Ljava/lang/String;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v18

    const v19, 0x7f0e0147

    invoke-virtual/range {v18 .. v19}, Lcn/com/magnity/magnitymx/MagApp;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 175
    .local v17, "uploadRemained":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    div-int/lit8 v19, v16, 0xa

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->isFinishing()Z

    move-result v18

    if-nez v18, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 187
    .end local v11    # "remainedNum":I
    .end local v16    # "totalProgress":I
    .end local v17    # "uploadRemained":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 188
    .local v12, "status":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 189
    .restart local v11    # "remainedNum":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "name":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 192
    .restart local v6    # "name":Ljava/lang/String;
    const v18, 0x30e6e

    move/from16 v0, v18

    if-ne v12, v0, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Context;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v20

    const v21, 0x7f0e0149

    invoke-virtual/range {v20 .. v21}, Lcn/com/magnity/magnitymx/MagApp;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 194
    if-nez v11, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->isFinishing()Z

    move-result v18

    if-nez v18, :cond_9

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Context;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v19

    const v20, 0x7f0e0143

    invoke-virtual/range {v19 .. v20}, Lcn/com/magnity/magnitymx/MagApp;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Context;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v20

    const v21, 0x7f0e0145

    invoke-virtual/range {v20 .. v21}, Lcn/com/magnity/magnitymx/MagApp;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 204
    if-nez v11, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/MediaActivity;->isFinishing()Z

    move-result v18

    if-nez v18, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
