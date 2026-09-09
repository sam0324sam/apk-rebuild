.class final Lretrofit2/ParameterHandler$Body;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ParameterHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final p:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lretrofit2/ParameterHandler$Body;, "Lretrofit2/ParameterHandler$Body<TT;>;"
    .local p3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<TT;Lokhttp3/RequestBody;>;"
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 401
    iput-object p1, p0, Lretrofit2/ParameterHandler$Body;->method:Ljava/lang/reflect/Method;

    .line 402
    iput p2, p0, Lretrofit2/ParameterHandler$Body;->p:I

    .line 403
    iput-object p3, p0, Lretrofit2/ParameterHandler$Body;->converter:Lretrofit2/Converter;

    .line 404
    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 7
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lretrofit2/ParameterHandler$Body;, "Lretrofit2/ParameterHandler$Body<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 407
    if-nez p2, :cond_0

    .line 408
    iget-object v2, p0, Lretrofit2/ParameterHandler$Body;->method:Ljava/lang/reflect/Method;

    iget v3, p0, Lretrofit2/ParameterHandler$Body;->p:I

    const-string v4, "Body parameter value must not be null."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 412
    :cond_0
    :try_start_0
    iget-object v2, p0, Lretrofit2/ParameterHandler$Body;->converter:Lretrofit2/Converter;

    invoke-interface {v2, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p1, v0}, Lretrofit2/RequestBuilder;->setBody(Lokhttp3/RequestBody;)V

    .line 417
    return-void

    .line 413
    .end local v0    # "body":Lokhttp3/RequestBody;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lretrofit2/ParameterHandler$Body;->method:Ljava/lang/reflect/Method;

    iget v3, p0, Lretrofit2/ParameterHandler$Body;->p:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to RequestBody"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4, v5}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
