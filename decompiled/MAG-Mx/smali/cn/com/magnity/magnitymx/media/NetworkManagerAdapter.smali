.class public Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NetworkManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;,
        Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagerAdapter"


# instance fields
.field private mCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

.field private mUploadItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;)V
    .locals 1
    .param p2, "callback"    # Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkItem;",
            ">;",
            "Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    .line 37
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mUploadItemList:Ljava/util/ArrayList;

    .line 38
    iput-object p2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 157
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->onBindViewHolder(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;I)V
    .locals 26
    .param p1, "holder"    # Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 52
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800f2

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 53
    .local v11, "preview":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800f1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 54
    .local v10, "name":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800f3

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 55
    .local v12, "progress":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800f4

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    .line 56
    .local v13, "progressBar":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mUploadItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 57
    .local v9, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v8

    .line 59
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 60
    .local v18, "totalSize":J
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmProgress()D

    move-result-wide v24

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v2, v0

    .line 62
    .local v2, "completeSize":J
    const-string v17, ""

    .line 63
    .local v17, "totalSizeUnit":Ljava/lang/String;
    const-wide/32 v22, 0x40000000

    cmp-long v22, v18, v22

    if-lez v22, :cond_1

    .line 64
    const-string v17, "GB"

    .line 65
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x41d0000000000000L    # 1.073741824E9

    div-double v20, v22, v24

    .line 74
    .local v20, "totalSizeNum":D
    :goto_0
    const-string v6, ""

    .line 75
    .local v6, "completeSizeUnit":Ljava/lang/String;
    const-wide/32 v22, 0x40000000

    cmp-long v22, v2, v22

    if-lez v22, :cond_3

    .line 76
    const-string v6, "GB"

    .line 77
    long-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v22, v24

    .line 85
    .local v4, "completeSizeNum":D
    :goto_1
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v22, "##0.00"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 87
    .local v7, "df":Ljava/text/DecimalFormat;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmProgress()D

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 88
    .local v14, "progressText":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->mUploadItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual/range {v22 .. v22}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmProgress()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 90
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800f6

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 105
    .local v16, "retryButton":Landroid/widget/ImageView;
    new-instance v22, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;-><init>(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;Lcn/com/magnity/magnitymx/media/NetworkItem;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 119
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800f5

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 124
    .local v15, "result":Landroid/widget/TextView;
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmResultCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    .line 148
    :goto_2
    return-void

    .line 66
    .end local v4    # "completeSizeNum":D
    .end local v6    # "completeSizeUnit":Ljava/lang/String;
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v14    # "progressText":Ljava/lang/String;
    .end local v15    # "result":Landroid/widget/TextView;
    .end local v16    # "retryButton":Landroid/widget/ImageView;
    .end local v20    # "totalSizeNum":D
    :cond_1
    const-wide/32 v22, 0x100000

    cmp-long v22, v18, v22

    if-lez v22, :cond_2

    .line 67
    const-string v17, "MB"

    .line 68
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4130000000000000L    # 1048576.0

    div-double v20, v22, v24

    .restart local v20    # "totalSizeNum":D
    goto/16 :goto_0

    .line 70
    .end local v20    # "totalSizeNum":D
    :cond_2
    const-string v17, "KB"

    .line 71
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4090000000000000L    # 1024.0

    div-double v20, v22, v24

    .restart local v20    # "totalSizeNum":D
    goto/16 :goto_0

    .line 78
    .restart local v6    # "completeSizeUnit":Ljava/lang/String;
    :cond_3
    const-wide/32 v22, 0x100000

    cmp-long v22, v18, v22

    if-lez v22, :cond_4

    .line 79
    const-string v6, "MB"

    .line 80
    long-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4130000000000000L    # 1048576.0

    div-double v4, v22, v24

    .restart local v4    # "completeSizeNum":D
    goto/16 :goto_1

    .line 82
    .end local v4    # "completeSizeNum":D
    :cond_4
    const-string v6, "KB"

    .line 83
    long-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4090000000000000L    # 1024.0

    div-double v4, v22, v24

    .restart local v4    # "completeSizeNum":D
    goto/16 :goto_1

    .line 126
    .restart local v7    # "df":Ljava/text/DecimalFormat;
    .restart local v14    # "progressText":Ljava/lang/String;
    .restart local v15    # "result":Landroid/widget/TextView;
    .restart local v16    # "retryButton":Landroid/widget/ImageView;
    :sswitch_0
    const v22, 0x7f0e0064

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    const/high16 v22, -0x10000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 130
    :sswitch_1
    const v22, 0x7f0e0066

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const/high16 v22, -0x10000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 134
    :sswitch_2
    const v22, 0x7f0e0067

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 137
    :sswitch_3
    const v22, 0x7f0e0068

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 138
    const/high16 v22, -0x10000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 141
    :sswitch_4
    const v22, 0x7f0e012c

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const/high16 v22, -0x10000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 145
    :sswitch_5
    const v22, 0x7f0e014b

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x30e6e -> :sswitch_2
        0x61bae -> :sswitch_1
        0x61bb3 -> :sswitch_0
        0x61bc6 -> :sswitch_3
        0x61c10 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a005b

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "rootView":Landroid/view/View;
    new-instance v0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    .local v0, "networkManagerViewHolder":Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;
    return-object v0
.end method
