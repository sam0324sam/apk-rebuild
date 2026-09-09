.class public final Lcn/com/magnity/magnitymx/C$Storage;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Storage"
.end annotation


# static fields
.field public static final TASK_STORAGE_PATH:Ljava/lang/String; = ""


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/C;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/C;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/C;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/com/magnity/magnitymx/C$Storage;->this$0:Lcn/com/magnity/magnitymx/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
