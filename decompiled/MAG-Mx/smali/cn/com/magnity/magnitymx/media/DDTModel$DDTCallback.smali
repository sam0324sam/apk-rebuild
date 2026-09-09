.class Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;
.super Ljava/lang/Object;
.source "DDTModel.java"

# interfaces
.implements Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/DDTModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DDTCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/DDTModel;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/DDTModel;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;->this$0:Lcn/com/magnity/magnitymx/media/DDTModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/DDTModel;Lcn/com/magnity/magnitymx/media/DDTModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/DDTModel;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/DDTModel$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/DDTModel$DDTCallback;-><init>(Lcn/com/magnity/magnitymx/media/DDTModel;)V

    return-void
.end method


# virtual methods
.method public newFrame(II)V
    .locals 0
    .param p1, "cameraState"    # I
    .param p2, "streamType"    # I

    .prologue
    .line 67
    return-void
.end method
