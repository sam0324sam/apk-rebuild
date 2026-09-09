.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
.super Ljava/lang/Object;
.source "DialogFragmentEmissivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private name:Landroid/widget/TextView;

.field private value:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$1;

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->value:Landroid/widget/TextView;

    return-object p1
.end method
