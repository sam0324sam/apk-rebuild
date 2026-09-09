.class Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "TaskExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupHolder"
.end annotation


# instance fields
.field private img:Landroid/widget/ImageView;

.field private layout:Landroid/view/View;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

.field private txt:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->this$0:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$1;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;

    .prologue
    .line 187
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->layout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;

    .prologue
    .line 187
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;

    .prologue
    .line 187
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->img:Landroid/widget/ImageView;

    return-object p1
.end method
