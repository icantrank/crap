.class Lcom/sharptech/aerialc/protocol/MainActivity$3;
.super Landroid/media/MediaCodec$Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;->initDecode()V
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

    .line 542
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 13

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    if-ltz p2, :cond_9

    .line 548
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1100(Lcom/sharptech/aerialc/protocol/MainActivity;)Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->readBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 551
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get empty frame...EOS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    move-object v4, p1

    move v5, p2

    .line 552
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_0
    if-eqz v1, :cond_9

    .line 556
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1208(Lcom/sharptech/aerialc/protocol/MainActivity;)I

    const/4 v2, 0x4

    .line 560
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 562
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$200(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_1

    .line 563
    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$202(Lcom/sharptech/aerialc/protocol/MainActivity;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 566
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v5}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_2

    .line 567
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$302(Lcom/sharptech/aerialc/protocol/MainActivity;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 571
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1210(Lcom/sharptech/aerialc/protocol/MainActivity;)I

    const/4 v3, 0x2

    :goto_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x1

    :cond_5
    move v12, v3

    .line 578
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-boolean v2, v2, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_6

    .line 580
    :try_start_1
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoFrameQ.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v4}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 588
    :catch_0
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v2}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 590
    :try_start_3
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v3

    if-nez v3, :cond_7

    .line 591
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    :cond_7
    and-int/lit8 v3, v12, 0x2

    if-nez v3, :cond_8

    .line 594
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v3}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 596
    :cond_8
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception v2

    .line 598
    :try_start_5
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v2, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    .line 604
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object v6, p1

    move v7, p2

    .line 602
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_9
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    if-ltz p2, :cond_1

    .line 618
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1408(Lcom/sharptech/aerialc/protocol/MainActivity;)I

    .line 619
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 620
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 622
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 634
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iput-object p2, p1, Lcom/sharptech/aerialc/protocol/MainActivity;->mOutputFormat:Landroid/media/MediaFormat;

    .line 635
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$3;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1500(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/view/SurfaceView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
