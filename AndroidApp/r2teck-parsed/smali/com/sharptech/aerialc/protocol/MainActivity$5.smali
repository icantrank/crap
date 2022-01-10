.class Lcom/sharptech/aerialc/protocol/MainActivity$5;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;->startRecord()V
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

    .line 806
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x3

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$100(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/lang/String;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".h264"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1702(Lcom/sharptech/aerialc/protocol/MainActivity;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 816
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-boolean v5, v5, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z

    const/4 v6, 0x4

    if-eqz v5, :cond_4

    .line 817
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-nez v5, :cond_1

    .line 819
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wait for frame"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0xc8

    .line 821
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 823
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 829
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    .line 832
    :try_start_3
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 836
    :catch_1
    :try_start_4
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "config SPS"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 842
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    and-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 845
    :try_start_5
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 850
    :catch_2
    :try_start_6
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "config PPS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    .line 857
    :cond_3
    :try_start_7
    iget-object v6, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v6}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v5

    .line 859
    :try_start_8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 864
    :cond_4
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end sample"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start compress video"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 868
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 870
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    .line 872
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 873
    :cond_5
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 874
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 879
    :cond_6
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 880
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v4, v4, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".h264"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 882
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compress raw file with size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 887
    :try_start_9
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    new-instance v8, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    invoke-direct {v8, v4}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    const-string v9, "eng"

    iget-object v6, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v6}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$700(Lcom/sharptech/aerialc/protocol/MainActivity;)I

    move-result v6

    int-to-long v10, v6

    const/4 v12, 0x1

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 894
    :try_start_a
    new-instance v6, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 895
    invoke-virtual {v6, v5}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 896
    new-instance v5, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v5

    .line 897
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 899
    invoke-interface {v5, v1}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 900
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 903
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 905
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 906
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {v5, v1}, Lcom/sharptech/aerialc/protocol/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 909
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iput-object v4, v1, Lcom/sharptech/aerialc/protocol/MainActivity;->mLast264FilePath:Ljava/lang/String;

    .line 910
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v1, v1, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 911
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compress video in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v1

    .line 889
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init h264Track error\u00aa"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v2, v2, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 891
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v2, v2, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    .line 913
    :try_start_b
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v2, v2, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$5;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v1, v1, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_1
    return-void

    .line 919
    :goto_2
    throw v0
.end method
