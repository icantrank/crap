.class Lcom/sharptech/aerialc/protocol/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/protocol/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 137
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "capture start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$100(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 143
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$200(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 146
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    iget-object v6, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v6}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :try_start_3
    new-instance v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    new-instance v6, Lcom/googlecode/mp4parser/MemoryDataSourceImpl;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/googlecode/mp4parser/MemoryDataSourceImpl;-><init>([B)V

    const-string v7, "eng"

    const-wide/16 v8, 0xf

    const/4 v10, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :try_start_4
    new-instance v4, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 164
    invoke-virtual {v4, v11}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 165
    new-instance v5, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v4

    .line 166
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 168
    invoke-interface {v4, v6}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 169
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 172
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 173
    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 174
    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video duration is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    const/4 v3, 0x2

    .line 176
    invoke-virtual {v4, v6, v7, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 178
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "retrieve frame failed. null returned"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3, v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$602(Lcom/sharptech/aerialc/protocol/MainActivity;Z)Z

    .line 203
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "used time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 186
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$500(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/lang/String;

    move-result-object v5

    .line 187
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 188
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 189
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 192
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 195
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 196
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {v5, v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v4, v4, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3, v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$602(Lcom/sharptech/aerialc/protocol/MainActivity;Z)Z

    .line 203
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 160
    :catch_0
    :try_start_6
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "init h264Track error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3, v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$602(Lcom/sharptech/aerialc/protocol/MainActivity;Z)Z

    .line 203
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "used time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    .line 151
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 200
    :try_start_9
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 202
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3, v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$602(Lcom/sharptech/aerialc/protocol/MainActivity;Z)Z

    .line 203
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v4, "used time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :goto_2
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$1;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4, v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$602(Lcom/sharptech/aerialc/protocol/MainActivity;Z)Z

    .line 203
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "used time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    throw v3
.end method
