.class public Lcom/baidu/mobstat/autotrace/Pathfinder$ViewConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/autotrace/Pathfinder;

.field public contentAsLabel:I

.field public ignoreCellIndex:Z

.field public layout:Ljava/lang/String;

.field public page:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/autotrace/Pathfinder;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/baidu/mobstat/autotrace/Pathfinder$ViewConfig;->a:Lcom/baidu/mobstat/autotrace/Pathfinder;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/baidu/mobstat/autotrace/Pathfinder$ViewConfig;->page:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/baidu/mobstat/autotrace/Pathfinder$ViewConfig;->layout:Ljava/lang/String;

    .line 148
    iput-boolean p4, p0, Lcom/baidu/mobstat/autotrace/Pathfinder$ViewConfig;->ignoreCellIndex:Z

    .line 149
    iput p5, p0, Lcom/baidu/mobstat/autotrace/Pathfinder$ViewConfig;->contentAsLabel:I

    .line 150
    return-void
.end method
