.class Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "TaskExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field private layout:Landroid/view/View;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

.field private txt:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->this$0:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;)V

    return-void
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;

    .prologue
    .line 193
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 193
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->layout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;

    .prologue
    .line 193
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 193
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->txt:Landroid/widget/TextView;

    return-object p1
.end method
