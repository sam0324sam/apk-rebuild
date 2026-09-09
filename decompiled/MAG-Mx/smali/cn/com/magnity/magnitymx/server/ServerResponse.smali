.class public abstract Lcn/com/magnity/magnitymx/server/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.java"


# static fields
.field private static mActionExpectedCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcn/com/magnity/magnitymx/server/ServerResponse$1;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/server/ServerResponse$1;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/server/ServerResponse;->mActionExpectedCode:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionExpectedCode(I)I
    .locals 2
    .param p0, "action"    # I

    .prologue
    .line 17
    sget-object v0, Lcn/com/magnity/magnitymx/server/ServerResponse;->mActionExpectedCode:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
