.class public Lcom/sharptech/aerialc/ui/UDPUtils;
.super Ljava/lang/Object;
.source "UDPUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;,
        Lcom/sharptech/aerialc/ui/UDPUtils$State;
    }
.end annotation


# static fields
.field private static final MAX_DATA_LRNGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UDPUtils"


# instance fields
.field private dataLength:I

.field private frameStatus:I

.field isFirst:Z

.field public isListener:Z

.field public isLog:Z

.field private isLostData:Z

.field private isSkip:Z

.field private listener:Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

.field private mCount:I

.field private mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPPS:Ljava/nio/ByteBuffer;

.field private mLastSPS:Ljava/nio/ByteBuffer;

.field private mLinkedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sharptech/aerialc/ui/bean/FrameBean;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/sharptech/aerialc/ui/bean/FrameBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/net/DatagramSocket;

.field private mStartVideoRecord:Z

.field private mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

.field private mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private packageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private picStatus:I

.field private size:I

.field startTime:J

.field private tempNum:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isListener:Z

    .line 26
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLog:Z

    .line 28
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    .line 39
    iput v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->picStatus:I

    const-wide/16 v1, 0x0

    .line 144
    iput-wide v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->startTime:J

    const/4 v1, 0x0

    .line 145
    iput v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->size:I

    .line 146
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isFirst:Z

    .line 305
    iput-boolean v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    .line 307
    iput-boolean v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isSkip:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/ui/UDPUtils;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/UDPUtils;->sendMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/net/DatagramSocket;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/ui/UDPUtils;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->listener:Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sharptech/aerialc/ui/UDPUtils;Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->listener:Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/util/Timer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sharptech/aerialc/ui/UDPUtils;Lcom/sharptech/aerialc/ui/bean/FrameBean;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/ui/UDPUtils;->insertData(Lcom/sharptech/aerialc/ui/bean/FrameBean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sharptech/aerialc/ui/UDPUtils;Lcom/sharptech/aerialc/ui/bean/FrameBean;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/ui/UDPUtils;->handleReceiveData(Lcom/sharptech/aerialc/ui/bean/FrameBean;)V

    return-void
.end method

.method private handleDataThread()V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sharptech/aerialc/ui/UDPUtils$4;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/UDPUtils$4;-><init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleReceiveData(Lcom/sharptech/aerialc/ui/bean/FrameBean;)V
    .locals 8

    .line 310
    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->getOriginData()[B

    move-result-object p1

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 312
    :try_start_0
    aget-byte v2, p1, v1

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 313
    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 314
    array-length v2, p1

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/ui/UDPUtils;->isH264iFrame([B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 329
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 330
    iput-boolean v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    .line 331
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    .line 333
    :cond_1
    iput-boolean v5, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    goto/16 :goto_4

    .line 336
    :cond_2
    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_b

    .line 337
    aget-byte v1, p1, v3

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 338
    aget-byte v2, p1, v3

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 340
    iget-boolean v3, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isSkip:Z

    if-eqz v3, :cond_5

    return-void

    .line 344
    :cond_5
    array-length v3, p1

    const/16 v6, 0xe

    sub-int/2addr v3, v6

    new-array v3, v3, [B

    .line 345
    array-length v7, p1

    sub-int/2addr v7, v6

    invoke-static {p1, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    invoke-direct {p0, v3}, Lcom/sharptech/aerialc/ui/UDPUtils;->isH264iFrame([B)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    if-eqz p1, :cond_6

    return-void

    .line 352
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 353
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 354
    iput-boolean v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    goto :goto_2

    .line 356
    :cond_7
    iput-boolean v5, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    .line 359
    :goto_2
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 362
    :cond_8
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 365
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_b

    .line 366
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v0, :cond_a

    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 368
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 369
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-eq p1, v4, :cond_9

    goto :goto_3

    .line 374
    :cond_9
    iput-boolean v5, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    .line 375
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 376
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 378
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 370
    :cond_a
    :goto_3
    iput-boolean v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLostData:Z

    .line 371
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->packageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "UDPUtils"

    const-string v2, "error: "

    .line 389
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_4
    const-string p1, "\u6570\u636e\u7f13\u51b2\u533a "

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataQueue.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->picStatus:I

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->picStatus:I

    if-eq p1, v0, :cond_c

    .line 404
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x32

    if-nez p1, :cond_c

    .line 405
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private insertData(Lcom/sharptech/aerialc/ui/bean/FrameBean;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    .line 209
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 218
    iget v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    .line 219
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->getSequenceNum()Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    .line 225
    invoke-virtual {v2}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUStart()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v0, v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    .line 231
    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {v2}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUEnd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUStart()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_6
    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUStart()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_7
    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    .line 256
    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUEnd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    :goto_0
    iget p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_c

    .line 266
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->getSequenceNum()Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    .line 270
    invoke-virtual {v1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->getSequenceNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    .line 274
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 282
    :cond_b
    :goto_3
    iget p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->dataLength:I

    :cond_c
    return-void
.end method

.method private isH264iFrame([B)Z
    .locals 6

    .line 469
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    aget-byte v0, p1, v2

    if-nez v0, :cond_5

    const/4 v0, 0x1

    aget-byte v3, p1, v0

    if-nez v3, :cond_5

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    if-nez v3, :cond_5

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    if-eq v3, v0, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    .line 474
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x1f

    .line 475
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0x80

    const/16 v5, 0x1c

    if-eq v1, v5, :cond_1

    const/16 v5, 0x1d

    if-ne v1, v5, :cond_2

    :cond_1
    if-ne v4, v3, :cond_2

    const/16 v4, -0x80

    if-eq p1, v4, :cond_4

    :cond_2
    if-eq v1, v3, :cond_4

    const/4 p1, 0x7

    if-eq v1, p1, :cond_4

    const/16 p1, 0x8

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method private listener()V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sharptech/aerialc/ui/UDPUtils$3;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/UDPUtils$3;-><init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendMessage()V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sharptech/aerialc/ui/UDPUtils$2;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/UDPUtils$2;-><init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public readBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    .line 415
    iget-object v3, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 420
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-eq v4, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x4

    .line 426
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    .line 429
    iget-object v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastSPS:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_3

    const/4 v4, 0x7

    if-ne v2, v4, :cond_3

    .line 430
    iput-object v3, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastSPS:Ljava/nio/ByteBuffer;

    .line 434
    :cond_3
    iget-object v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastPPS:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_4

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    .line 435
    iput-object v3, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastPPS:Ljava/nio/ByteBuffer;

    .line 446
    :cond_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sharptech/aerialc/util/FileUtils;->appendFileWithByte([B)V

    .line 448
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    sget-object v4, Lcom/sharptech/aerialc/ui/UDPUtils$State;->START_E:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    if-ne v2, v4, :cond_5

    .line 449
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastSPS:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_7

    .line 450
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastSPS:Ljava/nio/ByteBuffer;

    .line 451
    sget-object v3, Lcom/sharptech/aerialc/ui/UDPUtils$State;->SPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    iput-object v3, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    :goto_1
    move-object v3, v2

    goto :goto_2

    .line 454
    :cond_5
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    sget-object v4, Lcom/sharptech/aerialc/ui/UDPUtils$State;->SPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    if-ne v2, v4, :cond_6

    .line 455
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastPPS:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_7

    .line 456
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLastPPS:Ljava/nio/ByteBuffer;

    .line 457
    sget-object v3, Lcom/sharptech/aerialc/ui/UDPUtils$State;->PPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    iput-object v3, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    goto :goto_1

    .line 460
    :cond_6
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    sget-object v4, Lcom/sharptech/aerialc/ui/UDPUtils$State;->PPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    :cond_7
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    const-string v4, "UDPUtils"

    const-string v5, "not a frame"

    .line 423
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    return-object v3
.end method

.method public setFrameStatus(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->frameStatus:I

    .line 55
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 56
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 57
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setListener(Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->listener:Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    return-void
.end method

.method public setPicStatus(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->picStatus:I

    .line 46
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 47
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 48
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public startUDPBroadCast(Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;)V
    .locals 6

    .line 72
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->listener:Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isListener:Z

    .line 74
    sget-object p1, Lcom/sharptech/aerialc/ui/UDPUtils$State;->START_E:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mState:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    .line 83
    :try_start_0
    new-instance p1, Ljava/net/DatagramSocket;

    const/16 v0, 0x2328

    invoke-direct {p1, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    .line 84
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    const/high16 v0, 0x100000

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 85
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/net/SocketException;->printStackTrace()V

    const-string v0, "listener "

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/UDPUtils;->listener()V

    .line 93
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->timer:Ljava/util/Timer;

    .line 94
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sharptech/aerialc/ui/UDPUtils$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/UDPUtils$1;-><init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->isListener:Z

    .line 107
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mReceiveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 108
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 109
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mLinkedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils;->mSocket:Ljava/net/DatagramSocket;

    :cond_3
    return-void
.end method
