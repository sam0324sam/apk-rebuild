.class public abstract Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "CloudDeviceRoomDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field private static INSTANCE:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

.field private static onOpenCallback:Landroidx/room/RoomDatabase$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase$1;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase$1;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->onOpenCallback:Landroidx/room/RoomDatabase$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-class v1, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->INSTANCE:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    const-string v3, "cloud_device"

    invoke-static {v0, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    sget-object v2, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->onOpenCallback:Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    sput-object v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->INSTANCE:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    .line 25
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->INSTANCE:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract cloudDeviceDao()Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;
.end method
