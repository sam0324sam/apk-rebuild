.class Lcom/baidu/mobstat/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/SessionAnalysis;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/SessionAnalysis;JJJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 495
    iput-object p1, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/cj;->i:I

    .line 496
    iput-wide p2, p0, Lcom/baidu/mobstat/cj;->b:J

    .line 497
    iput-wide p4, p0, Lcom/baidu/mobstat/cj;->c:J

    .line 499
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cj;->d:Ljava/lang/ref/WeakReference;

    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cj;->e:Ljava/lang/ref/WeakReference;

    .line 501
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cj;->f:Ljava/lang/ref/WeakReference;

    .line 503
    iput-wide p6, p0, Lcom/baidu/mobstat/cj;->g:J

    .line 504
    iput p11, p0, Lcom/baidu/mobstat/cj;->h:I

    .line 505
    iput p12, p0, Lcom/baidu/mobstat/cj;->i:I

    .line 506
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 512
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 513
    iget-object v1, p0, Lcom/baidu/mobstat/cj;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 514
    iget-object v4, p0, Lcom/baidu/mobstat/cj;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 516
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v5, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const/4 v4, 0x0

    .line 521
    iget v6, p0, Lcom/baidu/mobstat/cj;->i:I

    if-ne v6, v3, :cond_4

    move-object v1, v0

    .line 529
    :goto_1
    if-eqz v1, :cond_0

    .line 534
    iget-wide v4, p0, Lcom/baidu/mobstat/cj;->c:J

    iget-wide v6, p0, Lcom/baidu/mobstat/cj;->b:J

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionPeriod()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    move v0, v3

    .line 535
    :goto_2
    if-eqz v0, :cond_0

    .line 540
    iget-wide v4, p0, Lcom/baidu/mobstat/cj;->b:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_8

    .line 542
    iget v0, p0, Lcom/baidu/mobstat/cj;->i:I

    if-eq v0, v9, :cond_2

    iget v0, p0, Lcom/baidu/mobstat/cj;->i:I

    if-ne v0, v8, :cond_7

    :cond_2
    move v0, v3

    .line 545
    :goto_3
    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v0

    iget-wide v4, p0, Lcom/baidu/mobstat/cj;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mobstat/ca;->d(J)V

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0, v1, v3}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;Z)V

    .line 552
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    iget-wide v2, p0, Lcom/baidu/mobstat/cj;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->setTrackStartTime(J)V

    .line 554
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    iget v1, p0, Lcom/baidu/mobstat/cj;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->setInvokeType(I)V

    goto :goto_0

    .line 523
    :cond_4
    iget v0, p0, Lcom/baidu/mobstat/cj;->i:I

    if-ne v0, v8, :cond_5

    .line 524
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 525
    :cond_5
    iget v0, p0, Lcom/baidu/mobstat/cj;->i:I

    if-ne v0, v9, :cond_9

    .line 526
    invoke-static {v5}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    move v0, v2

    .line 534
    goto :goto_2

    :cond_7
    move v0, v2

    .line 542
    goto :goto_3

    .line 555
    :cond_8
    iget-wide v0, p0, Lcom/baidu/mobstat/cj;->b:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Lcom/baidu/mobstat/SessionAnalysis;

    iget v1, p0, Lcom/baidu/mobstat/cj;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->setInvokeType(I)V

    goto :goto_0

    :cond_9
    move-object v1, v4

    goto :goto_1
.end method
