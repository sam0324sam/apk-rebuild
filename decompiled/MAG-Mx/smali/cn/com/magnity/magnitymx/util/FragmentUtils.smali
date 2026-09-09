.class public final Lcn/com/magnity/magnitymx/util/FragmentUtils;
.super Ljava/lang/Object;
.source "FragmentUtils.java"


# static fields
.field private static final PARCELABLE_EXTRA_KEY:Ljava/lang/String; = "PARCELABLE_EXTRA_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Landroid/content/Intent;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "PARCELABLE_EXTRA_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static hideSoftKeyboard(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 64
    :cond_0
    return-void

    .line 56
    :cond_1
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 62
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private static putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "PARCELABLE_EXTRA_KEY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static setFlags(Landroid/content/Intent;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I

    .prologue
    .line 40
    if-gez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setResult(Landroid/support/v4/app/Fragment;Ljava/lang/Class;ILandroid/os/Parcelable;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "targetClazz"    # Ljava/lang/Class;
    .param p2, "flags"    # I
    .param p3, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 29
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1, p2}, Lcn/com/magnity/magnitymx/util/FragmentUtils;->setFlags(Landroid/content/Intent;I)V

    .line 31
    invoke-static {v1, p3}, Lcn/com/magnity/magnitymx/util/FragmentUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public static startActivityForResult(Landroid/support/v4/app/Fragment;Ljava/lang/Class;I)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 19
    return-void
.end method

.method public static startActivityForResult(Landroid/support/v4/app/Fragment;Ljava/lang/Class;ILandroid/os/Parcelable;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "flags"    # I
    .param p3, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p3}, Lcn/com/magnity/magnitymx/util/FragmentUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 24
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    return-void
.end method
