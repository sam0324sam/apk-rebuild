.class Lcom/baidu/mobstat/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/SessionAnalysis;

.field private b:J

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/baidu/mobstat/ExtraInfo;

.field private o:Lcom/baidu/mobstat/cg;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cg;)V
    .locals 2

    .prologue
    .line 755
    iput-object p1, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-wide p2, p0, Lcom/baidu/mobstat/ci;->b:J

    .line 757
    iput-wide p6, p0, Lcom/baidu/mobstat/ci;->f:J

    .line 759
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ci;->c:Ljava/lang/ref/WeakReference;

    .line 760
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ci;->g:Ljava/lang/ref/WeakReference;

    .line 761
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ci;->d:Ljava/lang/ref/WeakReference;

    .line 762
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ci;->h:Ljava/lang/ref/WeakReference;

    .line 763
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ci;->i:Ljava/lang/ref/WeakReference;

    .line 764
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ci;->e:Ljava/lang/ref/WeakReference;

    .line 766
    iput p10, p0, Lcom/baidu/mobstat/ci;->j:I

    .line 768
    iput-object p11, p0, Lcom/baidu/mobstat/ci;->k:Ljava/lang/String;

    .line 769
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/baidu/mobstat/ci;->l:Ljava/lang/String;

    .line 770
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/baidu/mobstat/ci;->m:Z

    .line 772
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/baidu/mobstat/ci;->n:Lcom/baidu/mobstat/ExtraInfo;

    .line 773
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    .line 774
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 777
    iget v0, p0, Lcom/baidu/mobstat/ci;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 778
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    .line 779
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 781
    if-eqz v10, :cond_0

    if-nez v0, :cond_2

    .line 782
    :cond_0
    const-string v0, "onPause, WeakReference is already been released"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 937
    :cond_1
    :goto_0
    return-void

    .line 788
    :cond_2
    if-eq v10, v0, :cond_4

    .line 789
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 790
    const-string v0, "onPageStart() or onPageEnd() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_3
    const-string v0, "onPause() or onResume() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_4
    const-string v2, ""

    .line 799
    iget-wide v0, p0, Lcom/baidu/mobstat/ci;->b:J

    iget-wide v4, p0, Lcom/baidu/mobstat/ci;->f:J

    sub-long v4, v0, v4

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 803
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    if-eqz v0, :cond_7

    .line 805
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    iget-wide v4, v0, Lcom/baidu/mobstat/cg;->d:J

    iget-object v0, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    iget-wide v6, v0, Lcom/baidu/mobstat/cg;->c:J

    sub-long/2addr v4, v6

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    iget-object v3, v3, Lcom/baidu/mobstat/cg;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 807
    const-wide/16 v6, 0x14

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 808
    const-string v0, "page time little than 20 mills."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_5
    instance-of v0, v10, Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 814
    const-string v0, "onPause, pause is not a Activity"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, v10

    .line 818
    check-cast v0, Landroid/app/Activity;

    .line 819
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_7

    .line 822
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 826
    :cond_7
    instance-of v0, v10, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, v10

    .line 827
    check-cast v0, Landroid/app/Activity;

    .line 828
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_8

    .line 830
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new page view, page name = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", stay time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(ms)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->k:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 838
    iput-object v1, p0, Lcom/baidu/mobstat/ci;->l:Ljava/lang/String;

    .line 842
    :cond_9
    new-instance v0, Lcom/baidu/mobstat/cb;

    iget-object v3, p0, Lcom/baidu/mobstat/ci;->l:Ljava/lang/String;

    iget-wide v6, p0, Lcom/baidu/mobstat/ci;->f:J

    iget-boolean v8, p0, Lcom/baidu/mobstat/ci;->m:Z

    iget-object v9, p0, Lcom/baidu/mobstat/ci;->n:Lcom/baidu/mobstat/ExtraInfo;

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/cb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V

    .line 845
    iget-object v1, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/cb;)V

    .line 848
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 849
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ci;->o:Lcom/baidu/mobstat/cg;

    iget-wide v2, v1, Lcom/baidu/mobstat/cg;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ca;->d(J)V

    .line 851
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0, v10}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 854
    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/mobstat/ci;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ca;->d(J)V

    .line 855
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0, v10}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 858
    :cond_b
    iget v0, p0, Lcom/baidu/mobstat/ci;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 859
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 860
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 862
    if-eqz v10, :cond_c

    if-nez v0, :cond_d

    .line 863
    :cond_c
    const-string v0, "onPause, WeakReference is already been released"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    :cond_d
    if-eq v10, v0, :cond_e

    .line 868
    const-string v0, "onPause() or onResume() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 872
    :cond_e
    const-string v2, ""

    .line 873
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_f

    .line 875
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    :cond_f
    iget-wide v0, p0, Lcom/baidu/mobstat/ci;->b:J

    iget-wide v4, p0, Lcom/baidu/mobstat/ci;->f:J

    sub-long v4, v0, v4

    .line 879
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 880
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 881
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment new page view, page name = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", stay time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(ms)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/baidu/mobstat/cb;

    iget-wide v6, p0, Lcom/baidu/mobstat/ci;->f:J

    iget-boolean v8, p0, Lcom/baidu/mobstat/ci;->m:Z

    iget-object v9, p0, Lcom/baidu/mobstat/ci;->n:Lcom/baidu/mobstat/ExtraInfo;

    move-object v3, v1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/cb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V

    .line 888
    iget-object v1, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/cb;)V

    .line 890
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/mobstat/ci;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ca;->d(J)V

    .line 891
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 892
    :cond_10
    iget v0, p0, Lcom/baidu/mobstat/ci;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 893
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 894
    iget-object v1, p0, Lcom/baidu/mobstat/ci;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 896
    if-eqz v0, :cond_11

    if-nez v1, :cond_12

    .line 897
    :cond_11
    const-string v0, "onPause, WeakReference is already been released"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :cond_12
    if-eq v0, v1, :cond_13

    .line 902
    const-string v0, "onPause() or onResume() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    :cond_13
    const-string v2, ""

    .line 907
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 908
    if-eqz v1, :cond_14

    .line 909
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    :cond_14
    iget-wide v4, p0, Lcom/baidu/mobstat/ci;->b:J

    iget-wide v6, p0, Lcom/baidu/mobstat/ci;->f:J

    sub-long/2addr v4, v6

    .line 914
    invoke-static {v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v10

    .line 915
    if-nez v10, :cond_15

    .line 916
    const-string v0, "getContxtFromReverse faild."

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 920
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 922
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.app.Fragment new page view, page name = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; stay time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(ms)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 926
    new-instance v0, Lcom/baidu/mobstat/cb;

    iget-wide v6, p0, Lcom/baidu/mobstat/ci;->f:J

    iget-boolean v8, p0, Lcom/baidu/mobstat/ci;->m:Z

    iget-object v9, p0, Lcom/baidu/mobstat/ci;->n:Lcom/baidu/mobstat/ExtraInfo;

    move-object v3, v1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/cb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V

    .line 929
    iget-object v1, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/cb;)V

    .line 931
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/mobstat/ci;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ca;->d(J)V

    .line 932
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v0, v10}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
