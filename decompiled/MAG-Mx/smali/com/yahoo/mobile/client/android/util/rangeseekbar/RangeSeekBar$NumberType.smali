.class final enum Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum BIG_DECIMAL:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum BYTE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum DOUBLE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum FLOAT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum INTEGER:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum LONG:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field public static final enum SHORT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 698
    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->LONG:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->DOUBLE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->INTEGER:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->FLOAT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v7}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->SHORT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "BYTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->BYTE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    new-instance v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    .line 697
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->LONG:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->DOUBLE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->INTEGER:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->FLOAT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->SHORT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->BYTE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->$VALUES:[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

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
    .line 697
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromNumber(Ljava/lang/Number;)Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(TE;)",
            "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "value":Ljava/lang/Number;, "TE;"
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 702
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->LONG:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    .line 720
    :goto_0
    return-object v0

    .line 704
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 705
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->DOUBLE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    goto :goto_0

    .line 707
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 708
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->INTEGER:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    goto :goto_0

    .line 710
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 711
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->FLOAT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    goto :goto_0

    .line 713
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 714
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->SHORT:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    goto :goto_0

    .line 716
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 717
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->BYTE:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    goto :goto_0

    .line 719
    :cond_5
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 720
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    goto :goto_0

    .line 722
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 697
    const-class v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    return-object v0
.end method

.method public static values()[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->$VALUES:[Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    invoke-virtual {v0}, [Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    return-object v0
.end method


# virtual methods
.method public toNumber(D)Ljava/lang/Number;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 726
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$1;->$SwitchMap$com$yahoo$mobile$client$android$util$rangeseekbar$RangeSeekBar$NumberType:[I

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance v0, Ljava/lang/InstantiationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to a Number object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :pswitch_0
    double-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 740
    :goto_0
    return-object v0

    .line 730
    :pswitch_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 732
    :pswitch_2
    double-to-int v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 734
    :pswitch_3
    double-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 736
    :pswitch_4
    double-to-int v0, p1

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 738
    :pswitch_5
    double-to-int v0, p1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 740
    :pswitch_6
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
