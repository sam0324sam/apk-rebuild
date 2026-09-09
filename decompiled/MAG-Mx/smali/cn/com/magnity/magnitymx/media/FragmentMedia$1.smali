.class Lcn/com/magnity/magnitymx/media/FragmentMedia$1;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 252
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$1;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$1;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$102(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)Z

    .line 256
    return-void
.end method
