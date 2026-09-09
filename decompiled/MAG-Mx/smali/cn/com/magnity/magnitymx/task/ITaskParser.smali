.class public interface abstract Lcn/com/magnity/magnitymx/task/ITaskParser;
.super Ljava/lang/Object;
.source "ITaskParser.java"


# virtual methods
.method public abstract parse(Ljava/io/File;)Lcn/com/magnity/magnitymx/task/TaskData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract parseFirstTask(Ljava/io/File;[J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract parseTask(Ljava/io/File;J[J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
