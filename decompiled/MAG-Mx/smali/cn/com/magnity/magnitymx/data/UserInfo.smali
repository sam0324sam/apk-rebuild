.class public Lcn/com/magnity/magnitymx/data/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/magnity/magnitymx/data/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICES:Ljava/lang/String; = "mUserDevices"

.field private static final GROUPID:Ljava/lang/String; = "mGroupId"

.field private static final ISLOGIN:Ljava/lang/String; = "mIsLogin"

.field private static final USERGROUP:Ljava/lang/String; = "mUserGroup"

.field private static final USERID:Ljava/lang/String; = "mUserId"

.field private static final USERNAME:Ljava/lang/String; = "mUserName"

.field private static final USERPWD:Ljava/lang/String; = "mUserPwd"

.field private static final USERRANK:Ljava/lang/String; = "mUserRank"


# instance fields
.field private mDevices:Ljava/lang/String;

.field private mGroupId:I

.field private mIsLogin:I

.field private mUserGroup:Ljava/lang/String;

.field private mUserId:I

.field private mUserName:Ljava/lang/String;

.field private mUserPwd:Ljava/lang/String;

.field private mUserRank:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcn/com/magnity/magnitymx/data/UserInfo$1;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/data/UserInfo$1;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/data/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPwd"    # Ljava/lang/String;
    .param p3, "userRank"    # I
    .param p4, "userGroup"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "groupId"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserPwd:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    .line 59
    iput-object p4, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    .line 60
    iput p5, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    .line 61
    iput p6, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcn/com/magnity/magnitymx/data/UserInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcn/com/magnity/magnitymx/data/UserInfo$1;

    .prologue
    .line 8
    invoke-direct/range {p0 .. p6}, Lcn/com/magnity/magnitymx/data/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public static load()Lcn/com/magnity/magnitymx/data/UserInfo;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 31
    const-string v9, "mIsLogin"

    invoke-static {v9, v8}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 32
    .local v7, "isLogin":I
    const-string v9, "mUserName"

    const-string v10, ""

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "userName":Ljava/lang/String;
    const-string v9, "mUserPwd"

    const-string v10, ""

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "userPwd":Ljava/lang/String;
    const-string v9, "mUserRank"

    const/16 v10, 0x63

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 35
    .local v3, "userRank":I
    const-string v9, "mUserGroup"

    const-string v10, ""

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "group":Ljava/lang/String;
    const-string v9, "mUserId"

    invoke-static {v9, v8}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 37
    .local v5, "userId":I
    const-string v9, "mGroupId"

    invoke-static {v9, v8}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 38
    .local v6, "groupId":I
    new-instance v0, Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/magnitymx/data/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 39
    .local v0, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    if-eqz v7, :cond_0

    const/4 v8, 0x1

    :cond_0
    invoke-virtual {v0, v8}, Lcn/com/magnity/magnitymx/data/UserInfo;->setLoginStatus(Z)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getDevices()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mDevices:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mDevices:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 122
    .local v0, "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 120
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mDevices:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    return v0
.end method

.method public getUserGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRank()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    return v0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mIsLogin:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mIsLogin:I

    .line 131
    iput v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    .line 133
    iput v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    .line 134
    iput v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    .line 137
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/data/UserInfo;->save()V

    .line 138
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "mIsLogin"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mIsLogin:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string v0, "mUserName"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v0, "mUserPwd"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserPwd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v0, "mUserRank"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v0, "mUserGroup"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    const-string v0, "mUserId"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    const-string v0, "mGroupId"

    iget v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v0, "mUserDevices"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mDevices:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-static {}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->commit()Z

    .line 53
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPwd"    # Ljava/lang/String;
    .param p3, "userRank"    # I
    .param p4, "userGroup"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "groupId"    # I

    .prologue
    .line 102
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "userName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserName:Ljava/lang/String;

    .line 103
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "userPwd":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserPwd:Ljava/lang/String;

    .line 104
    iput p3, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    .line 105
    if-nez p4, :cond_2

    const-string p4, ""

    .end local p4    # "userGroup":Ljava/lang/String;
    :cond_2
    iput-object p4, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    .line 106
    iput p5, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    .line 107
    iput p6, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    .line 108
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/data/UserInfo;->save()V

    .line 109
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPwd"    # Ljava/lang/String;
    .param p3, "userRank"    # I
    .param p4, "userGroup"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "groupId"    # I
    .param p7, "cookies"    # Ljava/lang/String;

    .prologue
    .line 93
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "userName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserName:Ljava/lang/String;

    .line 94
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "userPwd":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserPwd:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    .line 96
    if-nez p4, :cond_2

    const-string p4, ""

    .end local p4    # "userGroup":Ljava/lang/String;
    :cond_2
    iput-object p4, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    .line 97
    iput p5, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    .line 98
    iput p6, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    .line 99
    return-void
.end method

.method public setDevices(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDevices"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mDevices:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLoginStatus(Z)V
    .locals 1
    .param p1, "succ"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mIsLogin:I

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 147
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mIsLogin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcn/com/magnity/magnitymx/data/UserInfo;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
