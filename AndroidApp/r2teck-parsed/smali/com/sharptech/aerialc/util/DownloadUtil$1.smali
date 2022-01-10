.class Lcom/sharptech/aerialc/util/DownloadUtil$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/util/DownloadUtil;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/util/DownloadUtil;Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->this$0:Lcom/sharptech/aerialc/util/DownloadUtil;

    iput-object p2, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    iput-object p3, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    invoke-interface {p1}, Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;->onDownloadFailed()V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x800

    .line 65
    new-array p1, p1, [B

    .line 69
    iget-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->this$0:Lcom/sharptech/aerialc/util/DownloadUtil;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/DownloadUtil;->access$000(Lcom/sharptech/aerialc/util/DownloadUtil;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    .line 73
    new-instance p2, Ljava/io/File;

    iget-object v3, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-nez v0, :cond_2

    .line 75
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    invoke-interface {p1, p2}, Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;->onInstallFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    .line 103
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 79
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    invoke-interface {v0, p2, v9, v10}, Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;->onDownloadStart(Ljava/io/File;J)V

    .line 82
    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v3, 0x0

    .line 84
    :goto_0
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    const/4 v5, 0x0

    .line 85
    invoke-virtual {v0, p1, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v5, v1

    add-long v11, v3, v5

    long-to-float v1, v11

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    long-to-float v3, v9

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v4, v1

    .line 89
    iget-object v1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    if-eqz v1, :cond_4

    .line 90
    iget-object v3, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    move-wide v5, v11

    move-wide v7, v9

    invoke-interface/range {v3 .. v8}, Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;->onDownloading(IJJ)V

    :cond_4
    move-wide v3, v11

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    if-eqz p1, :cond_6

    .line 95
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    invoke-interface {p1, p2}, Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;->onDownloadSuccess(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-eqz v2, :cond_7

    .line 103
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 108
    :catch_1
    :cond_7
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v0, v1

    .line 97
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    if-eqz p1, :cond_8

    .line 99
    iget-object p1, p0, Lcom/sharptech/aerialc/util/DownloadUtil$1;->val$listener:Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;

    invoke-interface {p1}, Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;->onDownloadFailed()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_8
    if-eqz v1, :cond_9

    .line 103
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_9
    if-eqz v0, :cond_a

    goto :goto_1

    :catch_6
    :cond_a
    :goto_4
    return-void

    :catchall_3
    move-exception p1

    move-object v2, v1

    :goto_5
    move-object v1, v0

    :goto_6
    if-eqz v2, :cond_b

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_b
    if-eqz v1, :cond_c

    .line 108
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 111
    :catch_8
    :cond_c
    throw p1
.end method
