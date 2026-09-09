.class Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/MediaSingleActivity$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 435
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 421
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 425
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v0, p1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$502(Lcn/com/magnity/magnitycx/MediaSingleActivity;I)I

    .line 426
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$402(Lcn/com/magnity/magnitycx/MediaSingleActivity;Z)Z

    .line 428
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$900(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V

    .line 431
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
