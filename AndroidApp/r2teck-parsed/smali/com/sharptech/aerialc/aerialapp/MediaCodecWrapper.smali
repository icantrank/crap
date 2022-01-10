.class public Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;
.super Ljava/lang/Object;
.source "MediaCodecWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;,
        Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputSampleListener;,
        Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;
    }
.end annotation


# static fields
.field static cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;


# instance fields
.field private mAvailableInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableOutputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDecoder:Landroid/media/MediaCodec;

.field private mHandler:Landroid/os/Handler;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputFormatChangedListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

.field private mOutputSampleListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputSampleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    sput-object v0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void
.end method

.method private constructor <init>(Landroid/media/MediaCodec;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputFormatChangedListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

    .line 83
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    .line 84
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 85
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 87
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length p1, p1

    new-array p1, p1, [Landroid/media/MediaCodec$BufferInfo;

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    .line 88
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableInputBuffers:Ljava/util/Queue;

    .line 89
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;)Landroid/media/MediaCodec;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;)Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputFormatChangedListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

    return-object p0
.end method

.method public static fromVideoFormat(Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;
    .locals 3

    const-string v0, "mime"

    .line 146
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_1

    .line 163
    new-instance v2, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;

    invoke-direct {v2, v0}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;-><init>(Landroid/media/MediaCodec;)V

    :cond_1
    return-object v2
.end method

.method private update()V
    .locals 6

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 341
    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 348
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-eq v4, v3, :cond_3

    packed-switch v4, :pswitch_data_0

    if-ltz v4, :cond_2

    .line 374
    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aput-object v0, v5, v4

    .line 375
    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    :pswitch_0
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputFormatChangedListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

    if-eqz v4, :cond_1

    .line 357
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;

    invoke-direct {v5, p0}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;-><init>(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 351
    :pswitch_1
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 352
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v4, v4

    new-array v4, v4, [Landroid/media/MediaCodec$BufferInfo;

    iput-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    .line 353
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    goto :goto_1

    .line 377
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown status from dequeueOutputBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getOutputFormatChangedListener()Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputFormatChangedListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

    return-object v0
.end method

.method public peekSample(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 7

    .line 288
    invoke-direct {p0}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->update()V

    .line 290
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v0, v1, v0

    .line 294
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public popSample(Z)V
    .locals 4

    .line 315
    invoke-direct {p0}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->update()V

    .line 316
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableOutputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputSampleListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputSampleListener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    .line 321
    iget-object v2, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v2, v2, v0

    .line 322
    iget-object v3, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputSampleListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputSampleListener;

    invoke-interface {v3, p0, v2, v1}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputSampleListener;->outputSample(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_1
    return-void
.end method

.method public setOutputFormatChangedListener(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;Landroid/os/Handler;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mOutputFormatChangedListener:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

    .line 121
    iput-object p2, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Looper doesn\'t exist in the calling thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 97
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    .line 99
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public writeSample(Landroid/media/MediaExtractor;ZJI)Z
    .locals 9

    .line 254
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 256
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    .line 259
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-gtz v5, :cond_0

    or-int/lit8 p5, p5, 0x4

    :cond_0
    move v8, p5

    if-nez p2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 269
    :cond_1
    sget-object p2, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    .line 270
    iget-object v2, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    sget-object v5, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public writeSample([BLandroid/media/MediaCodec$CryptoInfo;JI)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;,
            Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 196
    array-length v4, v1

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-lez v4, :cond_2

    .line 199
    iget-object v3, v0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    iget-object v3, v0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 201
    iget-object v3, v0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    .line 204
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 212
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-nez p2, :cond_0

    .line 218
    iget-object v1, v0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, v10

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v9, v0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->mDecoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v12, p2

    move/from16 v15, p5

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 205
    :cond_1
    new-instance v4, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    array-length v1, v1

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    .line 209
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    const-string v1, "Insufficient capacity in MediaCodec buffer: tried to write %d, buffer capacity is %d."

    .line 205
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, v2}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;-><init>(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;Ljava/lang/String;Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;)V

    throw v4

    :cond_2
    :goto_1
    return v2
.end method
