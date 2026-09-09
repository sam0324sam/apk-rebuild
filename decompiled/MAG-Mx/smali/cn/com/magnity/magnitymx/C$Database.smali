.class public final Lcn/com/magnity/magnitymx/C$Database;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Database"
.end annotation


# static fields
.field public static final CLOUD_DEVICE_DATABASE_NAME:Ljava/lang/String; = "cloud_device"

.field public static final LOCAL_DEVICE_DATABASE_NAME:Ljava/lang/String; = "local_device"


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/C;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/C;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/C;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/com/magnity/magnitymx/C$Database;->this$0:Lcn/com/magnity/magnitymx/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
