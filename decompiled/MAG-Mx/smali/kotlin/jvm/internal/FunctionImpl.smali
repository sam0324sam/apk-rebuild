.class public abstract Lkotlin/jvm/internal/FunctionImpl;
.super Ljava/lang/Object;
.source "FunctionImpl.java"

# interfaces
.implements Lkotlin/Function;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/functions/Function0;
.implements Lkotlin/jvm/functions/Function1;
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/jvm/functions/Function3;
.implements Lkotlin/jvm/functions/Function4;
.implements Lkotlin/jvm/functions/Function5;
.implements Lkotlin/jvm/functions/Function6;
.implements Lkotlin/jvm/functions/Function7;
.implements Lkotlin/jvm/functions/Function8;
.implements Lkotlin/jvm/functions/Function9;
.implements Lkotlin/jvm/functions/Function10;
.implements Lkotlin/jvm/functions/Function11;
.implements Lkotlin/jvm/functions/Function12;
.implements Lkotlin/jvm/functions/Function13;
.implements Lkotlin/jvm/functions/Function14;
.implements Lkotlin/jvm/functions/Function15;
.implements Lkotlin/jvm/functions/Function16;
.implements Lkotlin/jvm/functions/Function17;
.implements Lkotlin/jvm/functions/Function18;
.implements Lkotlin/jvm/functions/Function19;
.implements Lkotlin/jvm/functions/Function20;
.implements Lkotlin/jvm/functions/Function21;
.implements Lkotlin/jvm/functions/Function22;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
    message = "This class is no longer supported, do not use it."
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkArity(I)V
    .locals 1
    .param p1, "expected"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionImpl;->getArity()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/FunctionImpl;->throwWrongArity(I)V

    .line 34
    :cond_0
    return-void
.end method

.method private throwWrongArity(I)V
    .locals 3
    .param p1, "expected"    # I

    .prologue
    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong function arity, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionImpl;->getArity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getArity()I
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x2

    .line 54
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x3

    .line 60
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x4

    .line 66
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x5

    .line 72
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x6

    .line 78
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x7

    .line 84
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;

    .prologue
    const/16 v0, 0x8

    .line 90
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;

    .prologue
    const/16 v0, 0x9

    .line 96
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;

    .prologue
    const/16 v0, 0xa

    .line 102
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;

    .prologue
    const/16 v0, 0xb

    .line 108
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;

    .prologue
    const/16 v0, 0xc

    .line 114
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;

    .prologue
    const/16 v0, 0xd

    .line 120
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;

    .prologue
    .line 126
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 127
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;

    .prologue
    .line 132
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 133
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;

    .prologue
    .line 138
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 139
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;
    .param p17, "p17"    # Ljava/lang/Object;

    .prologue
    .line 144
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 145
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;
    .param p17, "p17"    # Ljava/lang/Object;
    .param p18, "p18"    # Ljava/lang/Object;

    .prologue
    .line 150
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 151
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;
    .param p17, "p17"    # Ljava/lang/Object;
    .param p18, "p18"    # Ljava/lang/Object;
    .param p19, "p19"    # Ljava/lang/Object;

    .prologue
    .line 156
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 157
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;
    .param p17, "p17"    # Ljava/lang/Object;
    .param p18, "p18"    # Ljava/lang/Object;
    .param p19, "p19"    # Ljava/lang/Object;
    .param p20, "p20"    # Ljava/lang/Object;

    .prologue
    .line 162
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 163
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    const/16 v1, 0x13

    aput-object p20, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;
    .param p17, "p17"    # Ljava/lang/Object;
    .param p18, "p18"    # Ljava/lang/Object;
    .param p19, "p19"    # Ljava/lang/Object;
    .param p20, "p20"    # Ljava/lang/Object;
    .param p21, "p21"    # Ljava/lang/Object;

    .prologue
    .line 168
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 169
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    const/16 v1, 0x13

    aput-object p20, v0, v1

    const/16 v1, 0x14

    aput-object p21, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .param p6, "p6"    # Ljava/lang/Object;
    .param p7, "p7"    # Ljava/lang/Object;
    .param p8, "p8"    # Ljava/lang/Object;
    .param p9, "p9"    # Ljava/lang/Object;
    .param p10, "p10"    # Ljava/lang/Object;
    .param p11, "p11"    # Ljava/lang/Object;
    .param p12, "p12"    # Ljava/lang/Object;
    .param p13, "p13"    # Ljava/lang/Object;
    .param p14, "p14"    # Ljava/lang/Object;
    .param p15, "p15"    # Ljava/lang/Object;
    .param p16, "p16"    # Ljava/lang/Object;
    .param p17, "p17"    # Ljava/lang/Object;
    .param p18, "p18"    # Ljava/lang/Object;
    .param p19, "p19"    # Ljava/lang/Object;
    .param p20, "p20"    # Ljava/lang/Object;
    .param p21, "p21"    # Ljava/lang/Object;
    .param p22, "p22"    # Ljava/lang/Object;

    .prologue
    .line 174
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->checkArity(I)V

    .line 175
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    const/16 v1, 0xf

    aput-object p16, v0, v1

    const/16 v1, 0x10

    aput-object p17, v0, v1

    const/16 v1, 0x11

    aput-object p18, v0, v1

    const/16 v1, 0x12

    aput-object p19, v0, v1

    const/16 v1, 0x13

    aput-object p20, v0, v1

    const/16 v1, 0x14

    aput-object p21, v0, v1

    const/16 v1, 0x15

    aput-object p22, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/FunctionImpl;->invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeVararg([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # [Ljava/lang/Object;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
