.class public final Lcn/com/magnity/magnitymx/C$DefaultServerConfig;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultServerConfig"
.end annotation


# static fields
.field public static final SERVER_ADDR:Ljava/lang/String; = "https://cloudapi.magnity.com.cn"

.field public static final SERVER_PORT:I = 0x1bb

.field public static final THERMOANY_IP:Ljava/lang/String; = "121.43.190.114"


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/C;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/C;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/C;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/com/magnity/magnitymx/C$DefaultServerConfig;->this$0:Lcn/com/magnity/magnitymx/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
