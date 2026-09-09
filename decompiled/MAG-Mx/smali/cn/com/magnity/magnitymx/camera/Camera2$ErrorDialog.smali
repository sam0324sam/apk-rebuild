.class public Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/camera/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 974
    new-instance v1, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;-><init>()V

    .line 975
    .local v1, "dialog":Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 976
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 978
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 984
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 985
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 986
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog$1;

    invoke-direct {v3, p0, v0}, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog$1;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;Landroid/app/Activity;)V

    .line 987
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 993
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 985
    return-object v1
.end method
