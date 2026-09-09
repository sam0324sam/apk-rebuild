.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1028
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1014
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1018
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$102(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;I)I

    .line 1019
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaUtils;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1102(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Z)Z

    .line 1021
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    .line 1022
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$2000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    .line 1024
    return-void

    .line 1019
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
