.class Lcn/com/magnity/magnitymx/server/MagHttpClient$2;
.super Ljava/lang/Object;
.source "MagHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/server/MagHttpClient;->logout(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/server/MagHttpClient;

.field final synthetic val$callback:Lcn/com/magnity/magnitymx/server/MagHttpCallback;

.field final synthetic val$cookieSet:Ljava/util/Set;

.field final synthetic val$jsonPayload:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/server/MagHttpClient;

    .prologue
    .line 99
    iput-object p1, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->this$0:Lcn/com/magnity/magnitymx/server/MagHttpClient;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$jsonPayload:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$cookieSet:Ljava/util/Set;

    iput-object p5, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$callback:Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 102
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->this$0:Lcn/com/magnity/magnitymx/server/MagHttpClient;

    const v1, 0x150201

    iget-object v2, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$jsonPayload:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$cookieSet:Ljava/util/Set;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;->val$callback:Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->access$000(Lcn/com/magnity/magnitymx/server/MagHttpClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    .line 103
    return-void
.end method
