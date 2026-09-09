.class Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;
.super Ljava/lang/Object;
.source "FragmentSupportAbout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentSupportAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentSupportAbout;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentSupportAbout;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentSupportAbout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentSupportAbout;Lcn/com/magnity/magnitycx/FragmentSupportAbout$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentSupportAbout;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentSupportAbout$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentSupportAbout$SettingClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentSupportAbout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 127
    return-void
.end method
