.class Lcn/com/magnity/magnitymx/media/MediaUtils$FileComparator;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/MediaUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/MediaUtils$1;

    .prologue
    .line 119
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaUtils$FileComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 123
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 124
    const/4 v2, -0x1

    .line 128
    :goto_0
    return v2

    .line 125
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 126
    const/4 v2, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 119
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/media/MediaUtils$FileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
