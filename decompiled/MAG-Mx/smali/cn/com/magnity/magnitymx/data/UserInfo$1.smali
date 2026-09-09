.class final Lcn/com/magnity/magnitymx/data/UserInfo$1;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/data/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/com/magnity/magnitymx/data/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/com/magnity/magnitymx/data/UserInfo;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 161
    .local v8, "isLogin":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "userName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "userPwd":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "usreRank":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "userGroup":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 166
    .local v5, "userId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 167
    .local v6, "groupId":I
    new-instance v0, Lcn/com/magnity/magnitymx/data/UserInfo;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcn/com/magnity/magnitymx/data/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcn/com/magnity/magnitymx/data/UserInfo$1;)V

    .line 168
    .local v0, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    if-eqz v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v0, v7}, Lcn/com/magnity/magnitymx/data/UserInfo;->setLoginStatus(Z)V

    .line 169
    return-object v0

    .line 168
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/data/UserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/com/magnity/magnitymx/data/UserInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Lcn/com/magnity/magnitymx/data/UserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/data/UserInfo$1;->newArray(I)[Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    return-object v0
.end method
