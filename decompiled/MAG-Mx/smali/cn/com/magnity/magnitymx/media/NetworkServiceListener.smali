.class public interface abstract Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
.super Ljava/lang/Object;
.source "NetworkServiceListener.java"


# static fields
.field public static final EVENT_ADD:I = 0x2

.field public static final EVENT_FINISH:I = 0x1

.field public static final EVENT_UPDATE:I


# virtual methods
.method public abstract onFinished(ILjava/lang/String;II)V
.end method

.method public abstract onItemsAdded(IIIII)V
.end method

.method public abstract onProgressUpdate(ILjava/lang/String;DDI)V
.end method
