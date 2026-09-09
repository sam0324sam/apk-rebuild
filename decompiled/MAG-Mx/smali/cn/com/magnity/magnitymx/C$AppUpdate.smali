.class public final Lcn/com/magnity/magnitymx/C$AppUpdate;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppUpdate"
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "http://www.magnity.com.cn/"

.field public static final MX_APK_NAME_FORMAT:Ljava/lang/String; = "MAG-Mx-%s.apk"

.field public static final MX_DOWNLOAD_URL_FORMAT:Ljava/lang/String; = "http://www.magnity.com.cn/APPs/MAG-Mx-%s.apk"

.field public static final THERMOSCOPE_DOWNLOAD_URL:Ljava/lang/String; = "http://www.magnity.com.cn/APPs/Thermoscope.apk"

.field public static final THERMOSCOPE_NAME:Ljava/lang/String; = "Thermoscope.apk"


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/C;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/C;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/C;

    .prologue
    .line 84
    iput-object p1, p0, Lcn/com/magnity/magnitymx/C$AppUpdate;->this$0:Lcn/com/magnity/magnitymx/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
