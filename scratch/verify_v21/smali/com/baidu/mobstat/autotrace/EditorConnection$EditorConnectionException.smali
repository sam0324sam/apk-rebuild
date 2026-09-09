.class public Lcom/baidu/mobstat/autotrace/EditorConnection$EditorConnectionException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/autotrace/EditorConnection;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/autotrace/EditorConnection;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/baidu/mobstat/autotrace/EditorConnection$EditorConnectionException;->a:Lcom/baidu/mobstat/autotrace/EditorConnection;

    .line 263
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 264
    return-void
.end method
