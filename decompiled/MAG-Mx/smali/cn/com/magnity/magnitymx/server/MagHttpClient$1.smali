.class Lcn/com/magnity/magnitymx/server/MagHttpClient$1;
.super Ljava/lang/Object;
.source "MagHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/server/MagHttpClient;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/server/MagHttpClient;

.field final synthetic val$callback:Lcn/com/magnity/magnitymx/server/MagHttpCallback;

.field final synthetic val$jsonPayload:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/server/MagHttpClient;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->this$0:Lcn/com/magnity/magnitymx/server/MagHttpClient;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->val$jsonPayload:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->val$callback:Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->this$0:Lcn/com/magnity/magnitymx/server/MagHttpClient;

    const v1, 0x150200

    iget-object v2, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->val$jsonPayload:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;->val$callback:Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->access$000(Lcn/com/magnity/magnitymx/server/MagHttpClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    .line 74
    return-void
.end method
