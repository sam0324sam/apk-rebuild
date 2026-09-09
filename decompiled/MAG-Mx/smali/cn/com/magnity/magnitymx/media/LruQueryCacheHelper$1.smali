.class Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper$1;
.super Landroid/util/LruCache;
.source "LruQueryCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;
    .param p2, "x0"    # I

    .prologue
    .line 20
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper$1;->this$0:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper$1;->sizeOf(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
