.class public abstract Lcn/com/magnity/magnitycx/sdk/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final observers_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    .local p0, "this":Lcn/com/magnity/magnitycx/sdk/Observable;, "Lcn/com/magnity/magnitycx/sdk/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public registerObserver(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcn/com/magnity/magnitycx/sdk/Observable;, "Lcn/com/magnity/magnitycx/sdk/Observable<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 18
    :goto_0
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    monitor-exit v1

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Lcn/com/magnity/magnitycx/sdk/Observable;, "Lcn/com/magnity/magnitycx/sdk/Observable<TT;>;"
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterObserver(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcn/com/magnity/magnitycx/sdk/Observable;, "Lcn/com/magnity/magnitycx/sdk/Observable<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 26
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 27
    monitor-exit v2

    goto :goto_0

    .line 30
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    .restart local v0    # "index":I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/Observable;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
