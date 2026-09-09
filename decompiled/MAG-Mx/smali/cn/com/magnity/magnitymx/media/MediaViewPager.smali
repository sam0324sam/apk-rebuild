.class public Lcn/com/magnity/magnitymx/media/MediaViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "MediaViewPager.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/OnChildActionListener;


# instance fields
.field private mIsChildAction:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaViewPager;->mIsChildAction:Z

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaViewPager;->mIsChildAction:Z

    .line 18
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaViewPager;->mIsChildAction:Z

    .line 23
    return-void
.end method
