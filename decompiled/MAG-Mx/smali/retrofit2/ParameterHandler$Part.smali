.class final Lretrofit2/ParameterHandler$Part;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Part"
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

.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/reflect/Method;

.field private final p:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "p"    # I
    .param p3, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lokhttp3/Headers;",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lretrofit2/ParameterHandler$Part;, "Lretrofit2/ParameterHandler$Part<TT;>;"
    .local p4, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<TT;Lokhttp3/RequestBody;>;"
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 323
    iput-object p1, p0, Lretrofit2/ParameterHandler$Part;->method:Ljava/lang/reflect/Method;

    .line 324
    iput p2, p0, Lretrofit2/ParameterHandler$Part;->p:I

    .line 325
    iput-object p3, p0, Lretrofit2/ParameterHandler$Part;->headers:Lokhttp3/Headers;

    .line 326
    iput-object p4, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    .line 327
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
    .line 330
    .local p0, "this":Lretrofit2/ParameterHandler$Part;, "Lretrofit2/ParameterHandler$Part<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    :try_start_0
    iget-object v2, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    invoke-interface {v2, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .local v0, "body":Lokhttp3/RequestBody;
    iget-object v2, p0, Lretrofit2/ParameterHandler$Part;->headers:Lokhttp3/Headers;

    invoke-virtual {p1, v2, v0}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    goto :goto_0

    .line 335
    .end local v0    # "body":Lokhttp3/RequestBody;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lretrofit2/ParameterHandler$Part;->method:Ljava/lang/reflect/Method;

    iget v3, p0, Lretrofit2/ParameterHandler$Part;->p:I

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

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
