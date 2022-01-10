.class public Lcom/sharptech/aerialc/runable/VideoRecordRunnable;
.super Ljava/lang/Object;
.source "VideoRecordRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRecordRunnable"


# instance fields
.field private FPS:J

.field private activity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mLast264FilePath:Ljava/lang/String;

.field private mStartVideoRecord:Z

.field private mVideoFile:Ljava/io/FileOutputStream;

.field private mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;JLjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "J",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x8c

    .line 37
    iput-wide v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mStartVideoRecord:Z

    const/16 v0, 0x96

    .line 44
    iput v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->status:I

    .line 47
    iput-wide p3, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    .line 48
    iput-object p5, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    iput-object p2, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v0, 0x3

    .line 89
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 90
    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->generateVideoOutputPath()Ljava/lang/String;

    move-result-object v3

    .line 91
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".h264"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 95
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 96
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mStartVideoRecord:Z

    const/4 v9, 0x4

    if-eqz v8, :cond_5

    .line 97
    iget-object v8, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    if-nez v8, :cond_2

    const-string v8, "VideoRecordRunnable"

    const-string v9, "wait for frame"

    .line 99
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x64

    .line 101
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 103
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 108
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_1

    .line 111
    :try_start_3
    iget-object v6, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    const-string v6, "VideoRecordRunnable"

    const-string v8, "config SPS"

    .line 115
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    .line 121
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    and-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    .line 124
    :try_start_5
    iget-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    const-string v7, "VideoRecordRunnable"

    const-string v8, "config PPS"

    .line 129
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v7, 0x1

    goto :goto_0

    .line 135
    :cond_4
    :try_start_7
    iget-object v9, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v8

    .line 137
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-string v5, "VideoRecordRunnable"

    const-string v6, "end sample"

    .line 142
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "VideoRecordRunnable"

    const-string v6, "start compress video"

    .line 143
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 146
    iget-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 148
    iget-object v8, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_7

    if-eqz v7, :cond_6

    .line 150
    iget-object v8, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    :cond_6
    iget-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    iget-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFile:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 157
    :cond_7
    iget-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 158
    iget-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".h264"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "VideoRecordRunnable"

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compress raw file with size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 165
    :try_start_9
    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    new-instance v10, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    invoke-direct {v10, v7}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    const-string v11, "eng"

    iget v8, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->status:I

    int-to-long v12, v8

    const/4 v14, 0x1

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v2, v3

    goto :goto_1

    :catch_4
    move-exception v3

    .line 173
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v8, "VideoRecordRunnable"

    const-string v9, "init h264Track error\u00aa"

    .line 174
    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_1
    new-instance v3, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 177
    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 178
    new-instance v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v2

    .line 179
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 181
    invoke-interface {v2, v1}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 182
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 188
    iget-object v2, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    iput-object v7, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mLast264FilePath:Ljava/lang/String;

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 193
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v1, "VideoRecordRunnable"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compress video in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    move-exception v1

    const-string v2, "VideoRecordRunnable"

    const-string v3, "init h264Track error\u00aa"

    .line 168
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iget-object v2, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    :try_start_b
    const-string v2, "VideoRecordRunnable"

    const-string v3, ""

    .line 196
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    iget-object v2, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_2
    return-void

    .line 202
    :goto_3
    throw v0
.end method

.method public setFPS(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    return-void
.end method

.method public setStatus(I)V
    .locals 2

    .line 58
    iput p1, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->status:I

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x3c

    .line 73
    iput-wide v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x32

    .line 70
    iput-wide v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x28

    .line 67
    iput-wide v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x1e

    .line 64
    iput-wide v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0x19

    .line 61
    iput-wide v0, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->FPS:J

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setmStartVideoRecord(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/sharptech/aerialc/runable/VideoRecordRunnable;->mStartVideoRecord:Z

    return-void
.end method
