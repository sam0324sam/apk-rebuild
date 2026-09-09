.class Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "DeviceExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/ImageView;

.field private deviceName:Landroid/widget/TextView;

.field private layout:Landroid/view/View;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->this$0:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;)V

    return-void
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->layout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->deviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->deviceName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->checkBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->checkBox:Landroid/widget/ImageView;

    return-object p1
.end method
