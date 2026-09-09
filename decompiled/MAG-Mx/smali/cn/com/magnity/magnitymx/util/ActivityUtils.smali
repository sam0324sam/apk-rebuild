.class public final Lcn/com/magnity/magnitymx/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field private static final PARCELABLE_EXTRA_KEY:Ljava/lang/String; = "PARCELABLE_EXTRA_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;IZ)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "frameId"    # I
    .param p3, "addToBackstack"    # Z

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 140
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    :cond_0
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    return-void
.end method

.method public static addNonUIFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "nonUIFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 161
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 163
    return-void
.end method

.method public static forward(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    const/4 p0, 0x0

    .line 99
    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static forward(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Parcelable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->setFlags(Landroid/content/Intent;I)V

    .line 68
    const-string v1, "PARCELABLE_EXTRA_KEY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 72
    const/4 p0, 0x0

    .line 73
    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static forward(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Parcelable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    const/4 p0, 0x0

    .line 82
    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static forward(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putSerializableExtra(Landroid/content/Intent;Ljava/io/Serializable;)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    const/4 p0, 0x0

    .line 91
    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static getParcelableExtra(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PARCELABLE_EXTRA_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 33
    .local v0, "parcelable":Landroid/os/Parcelable;
    const/4 p0, 0x0

    .line 34
    return-object v0
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 227
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 232
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private static isActivity(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static overlay(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 p0, 0x0

    .line 63
    return-void
.end method

.method public static overlay(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Parcelable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->setFlags(Landroid/content/Intent;I)V

    .line 40
    invoke-static {v0, p3}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    const/4 p0, 0x0

    .line 43
    return-void
.end method

.method public static overlay(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    const/4 p0, 0x0

    .line 50
    return-void
.end method

.method public static overlay(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putSerializableExtra(Landroid/content/Intent;Ljava/io/Serializable;)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    const/4 p0, 0x0

    .line 57
    return-void
.end method

.method private static putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "PARCELABLE_EXTRA_KEY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static putSerializableExtra(Landroid/content/Intent;Ljava/io/Serializable;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "serializable"    # Ljava/io/Serializable;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "PARCELABLE_EXTRA_KEY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static removeFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 132
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 134
    return-void
.end method

.method public static replaceFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;IZ)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "frameId"    # I
    .param p3, "addToBackstack"    # Z

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 151
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    :cond_0
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 156
    return-void
.end method

.method public static requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissionTypes"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 176
    if-nez p1, :cond_0

    move v3, v4

    .line 193
    :goto_0
    return v3

    .line 179
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 181
    aget-object v1, p1, v0

    .line 182
    .local v1, "permissionType":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v1    # "permissionType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    const/4 v3, 0x1

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {p0, v3, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    move v3, v4

    .line 193
    goto :goto_0
.end method

.method public static setEffect(Landroid/content/Context;FF)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alpha"    # F
    .param p2, "dim"    # F

    .prologue
    .line 167
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 168
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 169
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 170
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 171
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private static setFlags(Landroid/content/Intent;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I

    .prologue
    .line 204
    if-gez p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setResult(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Parcelable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->setFlags(Landroid/content/Intent;I)V

    .line 123
    invoke-static {v0, p3}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 124
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    move-object v1, p0

    .line 125
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 126
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static startForResult(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    const/4 p0, 0x0

    .line 108
    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static startForResult(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Parcelable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->isActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {v0, p3}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->putParcelableExtra(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 116
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    const/4 p0, 0x0

    .line 118
    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method
