.class Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;
.super Ljava/lang/Object;
.source "GlobalFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/GlobalFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public lastModified:J

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;-><init>()V

    return-void
.end method
