.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentTitleAboveList.java"


# static fields
.field private static final ARGS_CURRENT_SELECTION:Ljava/lang/String; = "currentSelection"

.field private static final ARGS_ID:Ljava/lang/String; = "id"

.field private static final ARGS_IS_CLOUD:Ljava/lang/String; = "isCloud"

.field private static KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "img"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;ILandroid/widget/Adapter;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/Adapter;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->updateListAdapter(ILandroid/widget/Adapter;)V

    return-void
.end method

.method public static newInstance(II)Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;
    .locals 3
    .param p0, "id"    # I
    .param p1, "currentSelection"    # I

    .prologue
    .line 38
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;-><init>()V

    .line 39
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "currentSelection"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private updateListAdapter(ILandroid/widget/Adapter;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v4, 0x1

    .line 122
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 123
    invoke-interface {p2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 124
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ne v0, p1, :cond_0

    .line 125
    sget-object v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v4

    const v3, 0x7f070061

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v4

    const v3, 0x7f0700ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v2, p2, Landroid/widget/SimpleAdapter;

    if-eqz v2, :cond_2

    .line 132
    check-cast p2, Landroid/widget/SimpleAdapter;

    .end local p2    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    const v1, 0x7f0a0045

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 51
    .local v12, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 55
    .local v6, "args":Landroid/os/Bundle;
    const-string v1, "currentSelection"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 56
    .local v7, "currentSelection":I
    const-string v1, "id"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 57
    .local v8, "id_":I
    const-string v1, "mIsSelectedDeviceCloud"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 59
    .local v9, "isCloud":Z
    const v1, 0x7f080143

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 61
    .local v11, "listView":Landroid/widget/ListView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v10, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    const v1, 0x7f070061

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 73
    .restart local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0110

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v1, 0x4

    if-ne v7, v1, :cond_2

    const v1, 0x7f070061

    .line 75
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 81
    .restart local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v1, 0x6

    if-ne v7, v1, :cond_3

    const v1, 0x7f070061

    .line 83
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 82
    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a004b

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->KEYS:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 90
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    if-eqz v9, :cond_0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 94
    :cond_0
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;

    invoke-direct {v1, p0, v8, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;ILandroid/widget/SimpleAdapter;)V

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    return-object v12

    .line 66
    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    :cond_1
    const v1, 0x7f0700ac

    goto/16 :goto_0

    .line 74
    :cond_2
    const v1, 0x7f0700ac

    goto :goto_1

    .line 82
    :cond_3
    const v1, 0x7f0700ac

    goto :goto_2

    .line 87
    :array_0
    .array-data 4
        0x7f0800d6
        0x7f0800d5
    .end array-data
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 140
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 141
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 148
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 151
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 152
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 154
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 155
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 156
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 157
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 158
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 159
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 160
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    .end local v0    # "alphaValue":Landroid/util/TypedValue;
    .end local v1    # "dimAmount":Landroid/util/TypedValue;
    .end local v3    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
