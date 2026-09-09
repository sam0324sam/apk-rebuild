.class Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "CloudDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter",
        "<",
        "Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$2;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .locals 4
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    .prologue
    .line 71
    const/4 v0, 0x1

    iget v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 72
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "DELETE FROM `cloud_device` WHERE `id` = ?"

    return-object v0
.end method
