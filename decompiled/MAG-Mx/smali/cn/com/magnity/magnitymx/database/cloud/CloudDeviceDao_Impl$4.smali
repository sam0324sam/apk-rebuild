.class Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "CloudDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$4;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "DELETE FROM cloud_device WHERE user_id=?"

    .line 110
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE FROM cloud_device WHERE user_id=?"

    return-object v1
.end method
