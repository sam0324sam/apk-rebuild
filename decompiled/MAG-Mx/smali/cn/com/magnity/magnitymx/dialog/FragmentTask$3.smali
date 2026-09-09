.class Lcn/com/magnity/magnitymx/dialog/FragmentTask$3;
.super Ljava/lang/Object;
.source "FragmentTask.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/FragmentTask;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .prologue
    .line 226
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$3;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method
