.class public abstract Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "DeviceInfoRoomDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcn/com/magnity/magnitymx/data/DeviceInfo;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field private static INSTANCE:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

.field private static onOpenCallback:Landroidx/room/RoomDatabase$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase$1;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase$1;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->onOpenCallback:Landroidx/room/RoomDatabase$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v1, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->INSTANCE:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    const-string v3, "local_device"

    invoke-static {v0, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    sget-object v2, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->onOpenCallback:Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    sput-object v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->INSTANCE:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    .line 27
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->INSTANCE:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract deviceInfoDao()Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;
.end method
