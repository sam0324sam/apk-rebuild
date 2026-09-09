.class public Lcn/com/magnity/magnitymx/base/BaseMessage;
.super Ljava/lang/Object;
.source "BaseMessage.java"


# instance fields
.field private mId:I

.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcn/com/magnity/magnitymx/base/BaseMessage;->mId:I

    .line 9
    iput-object p2, p0, Lcn/com/magnity/magnitymx/base/BaseMessage;->mObject:Ljava/lang/Object;

    .line 10
    return-void
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcn/com/magnity/magnitymx/base/BaseMessage;->mId:I

    return v0
.end method

.method public setMessage(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 13
    iput p1, p0, Lcn/com/magnity/magnitymx/base/BaseMessage;->mId:I

    .line 14
    return-void
.end method
