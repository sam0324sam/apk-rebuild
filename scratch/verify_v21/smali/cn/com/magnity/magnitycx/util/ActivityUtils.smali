.class public final Lcn/com/magnity/magnitycx/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissionTypes"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 13
    if-nez p1, :cond_0

    move v3, v4

    .line 30
    :goto_0
    return v3

    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 18
    aget-object v1, p1, v0

    .line 19
    .local v1, "permissionType":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    .end local v1    # "permissionType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    const/4 v3, 0x1

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {p0, v3, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    move v3, v4

    .line 30
    goto :goto_0
.end method
