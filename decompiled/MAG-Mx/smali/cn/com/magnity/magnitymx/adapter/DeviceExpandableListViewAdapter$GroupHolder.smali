.class Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "DeviceExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/ImageView;

.field private groupIndicatorImage:Landroid/widget/ImageView;

.field private groupName:Landroid/widget/TextView;

.field private layout:Landroid/view/View;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->this$0:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;)V

    return-void
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->layout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->groupName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->groupName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->groupIndicatorImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->groupIndicatorImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->checkBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->checkBox:Landroid/widget/ImageView;

    return-object p1
.end method
