.class public Lcom/sharptech/aerialc/util/AudioUDPUtils;
.super Ljava/lang/Object;
.source "AudioUDPUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64

.field private static SAMPLE_RATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioUDPUtils"


# instance fields
.field public isListener:Z

.field private isPlaying:Z

.field private isStartAudioRecord:Z

.field private linkedQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private listener:Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mLinkedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

.field private mSocket:Ljava/net/DatagramSocket;

.field startTime:J

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isListener:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mLinkedList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->startTime:J

    .line 150
    iput-wide v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->time:J

    .line 40
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->linkedQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Ljava/net/DatagramSocket;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/util/AudioUDPUtils;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->changeAudioSampleRate(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isPlaying:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sharptech/aerialc/util/AudioUDPUtils;[B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->audioPlayerStart([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isStartAudioRecord:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sharptech/aerialc/util/AudioUDPUtils;[B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->pushPCMData([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->listener:Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sharptech/aerialc/util/AudioUDPUtils;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->time:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sharptech/aerialc/util/AudioUDPUtils;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->time:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->linkedQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sharptech/aerialc/util/AudioUDPUtils;[B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->readPCMData([B)V

    return-void
.end method

.method private audioPlayerStart([B)V
    .locals 10

    .line 207
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 208
    sget v0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->SAMPLE_RATE:I

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 210
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    sget v5, Lcom/sharptech/aerialc/util/AudioUDPUtils;->SAMPLE_RATE:I

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    .line 213
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write([BII)I

    return-void
.end method

.method private audioPlayerStop()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 229
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method private changeAudioSampleRate(I)V
    .locals 1

    const/16 v0, 0x5be

    if-ne p1, v0, :cond_0

    const p1, 0xac44

    goto :goto_0

    :cond_0
    const p1, 0xbb80

    .line 143
    :goto_0
    sget v0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->SAMPLE_RATE:I

    if-eq p1, v0, :cond_1

    .line 144
    sput p1, Lcom/sharptech/aerialc/util/AudioUDPUtils;->SAMPLE_RATE:I

    .line 145
    invoke-direct {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->audioPlayerStop()V

    .line 146
    sget p1, Lcom/sharptech/aerialc/util/AudioUDPUtils;->SAMPLE_RATE:I

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/MP4EncoderHelper;->setAudioSampleRate(I)V

    :cond_1
    return-void
.end method

.method private listener()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;-><init>(Lcom/sharptech/aerialc/util/AudioUDPUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pushPCMData()V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;-><init>(Lcom/sharptech/aerialc/util/AudioUDPUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pushPCMData([B)V
    .locals 5

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->time:J

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->linkedQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 158
    iget-boolean p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isStartAudioRecord:Z

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mRecordListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mRecordListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;->onRecordError(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isStartAudioRecord:Z

    :cond_1
    :goto_0
    const-string p1, "pushPCMData 1"

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6267\u884c\u8017\u65f6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->time:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u7f13\u5b58\u6570\u91cf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->linkedQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readPCMData([B)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mLinkedList:Ljava/util/List;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mLinkedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 191
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mLinkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 193
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 195
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    .line 197
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-ne v2, v0, :cond_1

    .line 202
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/sharptech/aerialc/ui/MP4EncoderHelper;->writePCMData([BI)I

    return-void
.end method

.method private start()V
    .locals 4

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isListener:Z

    .line 51
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isPlaying:Z

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/16 v1, 0x238c

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    .line 54
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    const-string v1, "listener "

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->listener()V

    return-void
.end method


# virtual methods
.method public clearQueue()V
    .locals 0

    return-void
.end method

.method public onDestory()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isListener:Z

    .line 74
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isPlaying:Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->listener:Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

    .line 76
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 83
    :cond_1
    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mSocket:Ljava/net/DatagramSocket;

    .line 85
    :cond_2
    iput-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mRecordListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    .line 86
    invoke-direct {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->audioPlayerStop()V

    const-string v0, "listener"

    const-string v1, "onStop"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isPlaying:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isPlaying:Z

    return-void
.end method

.method public setListener(Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->listener:Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

    return-void
.end method

.method public setListener(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isPlaying:Z

    return-void
.end method

.method public setmRecordListener(Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->mRecordListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    return-void
.end method

.method public startAudioRecord()V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isStartAudioRecord:Z

    .line 264
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->clearQueue()V

    .line 265
    invoke-direct {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->pushPCMData()V

    return-void
.end method

.method public startReceiveResultListener(Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;)V
    .locals 2

    const-string v0, "listener"

    const-string v1, "startReceiveResultListener"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->listener:Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

    .line 46
    invoke-direct {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->start()V

    return-void
.end method

.method public stopAudioRecord()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isStartAudioRecord:Z

    .line 270
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->clearQueue()V

    return-void
.end method
