.class final Lretrofit2/SkipCallbackExecutorImpl;
.super Ljava/lang/Object;
.source "SkipCallbackExecutorImpl.java"

# interfaces
.implements Lretrofit2/SkipCallbackExecutor;


# static fields
.field private static final INSTANCE:Lretrofit2/SkipCallbackExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lretrofit2/SkipCallbackExecutorImpl;

    invoke-direct {v0}, Lretrofit2/SkipCallbackExecutorImpl;-><init>()V

    sput-object v0, Lretrofit2/SkipCallbackExecutorImpl;->INSTANCE:Lretrofit2/SkipCallbackExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ensurePresent([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .locals 4
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v3, 0x0

    .line 25
    const-class v1, Lretrofit2/SkipCallbackExecutor;

    invoke-static {p0, v1}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    .end local p0    # "annotations":[Ljava/lang/annotation/Annotation;
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/annotation/Annotation;

    .line 31
    .local v0, "newAnnotations":[Ljava/lang/annotation/Annotation;
    sget-object v1, Lretrofit2/SkipCallbackExecutorImpl;->INSTANCE:Lretrofit2/SkipCallbackExecutor;

    aput-object v1, v0, v3

    .line 32
    const/4 v1, 0x1

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 33
    goto :goto_0
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-class v0, Lretrofit2/SkipCallbackExecutor;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v0, p1, Lretrofit2/SkipCallbackExecutor;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lretrofit2/SkipCallbackExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
