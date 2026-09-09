.class public final Lcom/github/lzyzsd/circleprogress/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/lzyzsd/circleprogress/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArcProgress:[I

.field public static final ArcProgress_arc_angle:I = 0x1

.field public static final ArcProgress_arc_bottom_text:I = 0xb

.field public static final ArcProgress_arc_bottom_text_size:I = 0xc

.field public static final ArcProgress_arc_finished_color:I = 0x5

.field public static final ArcProgress_arc_max:I = 0x3

.field public static final ArcProgress_arc_progress:I = 0x0

.field public static final ArcProgress_arc_stroke_width:I = 0x2

.field public static final ArcProgress_arc_suffix_text:I = 0x8

.field public static final ArcProgress_arc_suffix_text_padding:I = 0xa

.field public static final ArcProgress_arc_suffix_text_size:I = 0x9

.field public static final ArcProgress_arc_text_color:I = 0x7

.field public static final ArcProgress_arc_text_size:I = 0x6

.field public static final ArcProgress_arc_unfinished_color:I = 0x4

.field public static final CircleProgress:[I

.field public static final CircleProgress_circle_finished_color:I = 0x3

.field public static final CircleProgress_circle_max:I = 0x1

.field public static final CircleProgress_circle_prefix_text:I = 0x6

.field public static final CircleProgress_circle_progress:I = 0x0

.field public static final CircleProgress_circle_suffix_text:I = 0x7

.field public static final CircleProgress_circle_text_color:I = 0x5

.field public static final CircleProgress_circle_text_size:I = 0x4

.field public static final CircleProgress_circle_unfinished_color:I = 0x2

.field public static final DonutProgress:[I

.field public static final DonutProgress_donut_background_color:I = 0xb

.field public static final DonutProgress_donut_circle_starting_degree:I = 0xf

.field public static final DonutProgress_donut_finished_color:I = 0x3

.field public static final DonutProgress_donut_finished_stroke_width:I = 0x4

.field public static final DonutProgress_donut_inner_bottom_text:I = 0xc

.field public static final DonutProgress_donut_inner_bottom_text_color:I = 0xe

.field public static final DonutProgress_donut_inner_bottom_text_size:I = 0xd

.field public static final DonutProgress_donut_inner_drawable:I = 0x11

.field public static final DonutProgress_donut_max:I = 0x1

.field public static final DonutProgress_donut_prefix_text:I = 0x8

.field public static final DonutProgress_donut_progress:I = 0x0

.field public static final DonutProgress_donut_show_text:I = 0x10

.field public static final DonutProgress_donut_suffix_text:I = 0x9

.field public static final DonutProgress_donut_text:I = 0xa

.field public static final DonutProgress_donut_text_color:I = 0x7

.field public static final DonutProgress_donut_text_size:I = 0x6

.field public static final DonutProgress_donut_unfinished_color:I = 0x2

.field public static final DonutProgress_donut_unfinished_stroke_width:I = 0x5

.field public static final Themes:[I

.field public static final Themes_arcProgressStyle:I = 0x2

.field public static final Themes_circleProgressStyle:I = 0x0

.field public static final Themes_donutProgressStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress:[I

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress:[I

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->Themes:[I

    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f0100ce
        0x7f0100cf
        0x7f0100d0
        0x7f0100d1
        0x7f0100d2
        0x7f0100d3
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
        0x7f0100da
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x7f0100df
        0x7f0100e0
        0x7f0100e1
        0x7f0100e2
        0x7f0100e3
        0x7f0100e4
        0x7f0100e5
        0x7f0100e6
    .end array-data

    .line 78
    :array_2
    .array-data 4
        0x7f010106
        0x7f010107
        0x7f010108
        0x7f010109
        0x7f01010a
        0x7f01010b
        0x7f01010c
        0x7f01010d
        0x7f01010e
        0x7f01010f
        0x7f010110
        0x7f010111
        0x7f010112
        0x7f010113
        0x7f010114
        0x7f010115
        0x7f010116
        0x7f010117
    .end array-data

    .line 97
    :array_3
    .array-data 4
        0x7f010177
        0x7f010178
        0x7f010179
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
