.class Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfoComparator;
.super Ljava/lang/Object;
.source "GlobalFunc.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/GlobalFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/GlobalFunc$1;

    .prologue
    .line 134
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;
    .param p2, "rhs"    # Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;

    .prologue
    .line 137
    iget-wide v0, p1, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->lastModified:J

    iget-wide v2, p2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->lastModified:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 138
    const/4 v0, -0x1

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-wide v0, p1, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->lastModified:J

    iget-wide v2, p2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;->lastModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 134
    check-cast p1, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;

    check-cast p2, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfoComparator;->compare(Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;Lcn/com/magnity/magnitycx/sdk/GlobalFunc$FileInfo;)I

    move-result v0

    return v0
.end method
