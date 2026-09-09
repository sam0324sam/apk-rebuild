.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$1;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 152
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "name":Ljava/lang/String;
    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".bmp"

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-journal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method
