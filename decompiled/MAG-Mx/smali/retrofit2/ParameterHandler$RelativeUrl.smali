.class final Lretrofit2/ParameterHandler$RelativeUrl;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RelativeUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/ParameterHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final p:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "p"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 62
    iput-object p1, p0, Lretrofit2/ParameterHandler$RelativeUrl;->method:Ljava/lang/reflect/Method;

    .line 63
    iput p2, p0, Lretrofit2/ParameterHandler$RelativeUrl;->p:I

    .line 64
    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    iget-object v0, p0, Lretrofit2/ParameterHandler$RelativeUrl;->method:Ljava/lang/reflect/Method;

    iget v1, p0, Lretrofit2/ParameterHandler$RelativeUrl;->p:I

    const-string v2, "@Url parameter is null."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p1, p2}, Lretrofit2/RequestBuilder;->setRelativeUrl(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
