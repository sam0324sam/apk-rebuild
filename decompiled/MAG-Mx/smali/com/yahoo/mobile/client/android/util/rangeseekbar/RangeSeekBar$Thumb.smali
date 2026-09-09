.class final enum Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Thumb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

.field public static final enum MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

.field public static final enum MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 687
    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 686
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->$VALUES:[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 686
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 686
    const-class v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    return-object v0
.end method

.method public static values()[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;
    .locals 1

    .prologue
    .line 686
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->$VALUES:[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    invoke-virtual {v0}, [Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    return-object v0
.end method
