.class public Lcn/com/magnity/sdk/MagDevice$StreamType;
.super Ljava/lang/Object;
.source "MagDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/sdk/MagDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamType"
.end annotation


# static fields
.field public static final StreamHybrid:I = 0x6

.field public static final StreamTemperature:I = 0x2

.field public static final StreamVideo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
