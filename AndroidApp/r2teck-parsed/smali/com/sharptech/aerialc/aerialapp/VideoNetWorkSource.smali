.class public Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;
.super Ljava/lang/Object;
.source "VideoNetWorkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoNetWorkSource"


# instance fields
.field private mCountOfReceived:I

.field private mHandler:Landroid/os/Handler;

.field private mIPNotifier:Ljava/lang/Runnable;

.field public mLastPPS:Ljava/nio/ByteBuffer;

.field public mLastSPS:Ljava/nio/ByteBuffer;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRun:Z

.field private mSocket:Ljava/net/DatagramSocket;

.field private mStartTime:J

.field private mState:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$State;

.field private mThread:Ljava/lang/Thread;

.field private mVideoDecode:Lcom/sharptech/aerialc/aerialapp/VideoDecode;

.field private packageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;

    invoke-direct {v0}, Lcom/sharptech/aerialc/aerialapp/VideoDecode;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mVideoDecode:Lcom/sharptech/aerialc/aerialapp/VideoDecode;

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mLastPPS:Ljava/nio/ByteBuffer;

    .line 26
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mLastSPS:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mRun:Z

    .line 37
    iput v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mCountOfReceived:I

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mStartTime:J

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;-><init>(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mIPNotifier:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/net/DatagramSocket;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mIPNotifier:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mRun:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$508(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mCountOfReceived:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mCountOfReceived:I

    return v0
.end method


# virtual methods
.method public readBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 134
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    .line 135
    iget-object v2, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mLastSPS:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 136
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mLastSPS:Ljava/nio/ByteBuffer;

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mLastPPS:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 140
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mLastPPS:Ljava/nio/ByteBuffer;

    :cond_3
    const-string v1, "VideoNetWorkSource"

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u6570\u636e\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "VideoNetWorkSource"

    const-string v2, "not a frame"

    .line 131
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public readFrame_i()[Ljava/nio/ByteBuffer;
    .locals 11

    const/16 v0, 0x708

    .line 65
    new-array v0, v0, [B

    .line 67
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_7

    .line 70
    :try_start_0
    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 71
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    new-array v5, v5, [B

    .line 72
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-static {v6, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    aget-byte v6, v5, v2

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x80

    if-eq v6, v7, :cond_0

    const-string v6, "VideoNetWorkSource"

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not a valid rtp package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v6, 0xc

    .line 77
    aget-byte v8, v5, v6

    const/16 v9, 0xd

    if-nez v8, :cond_2

    .line 78
    iget-object v3, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    new-array v3, v0, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    array-length v4, v5

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 81
    aget-object v4, v3, v2

    array-length v6, v5

    sub-int/2addr v6, v9

    invoke-virtual {v4, v5, v9, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    const-string v4, "VideoNetWorkSource"

    const-string v5, "=============== ^ ==============="

    .line 91
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    goto/16 :goto_6

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_5

    .line 94
    :cond_2
    :try_start_2
    aget-byte v6, v5, v6

    and-int/lit8 v6, v6, 0x1f

    const/16 v8, 0x1c

    if-ne v6, v8, :cond_6

    .line 95
    aget-byte v6, v5, v9

    const/16 v8, 0x40

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 96
    aget-byte v8, v5, v9

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    array-length v7, v5

    const/16 v8, 0xe

    sub-int/2addr v7, v8

    new-array v7, v7, [B

    .line 100
    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v5, v8, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 106
    new-array v3, v0, [Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    :try_start_3
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 108
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 109
    aget-object v5, v3, v2

    iget-object v6, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move-object v10, v4

    move v4, v3

    move-object v3, v10

    :goto_4
    move v10, v4

    move-object v4, v3

    move v3, v10

    goto/16 :goto_0

    :cond_6
    :try_start_4
    const-string v5, "VideoNetWorkSource"

    const-string v6, "data leaked"

    .line 113
    invoke-static {v5, v6}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :goto_5
    const-string v5, "VideoNetWorkSource"

    const-string v6, ""

    .line 116
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v4
.end method

.method public start(I)V
    .locals 3

    const-string v0, "aerial"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    .line 152
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    const v0, 0xfa00

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 153
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mState:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$State;

    sget-object p1, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$State;->START_E:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$State;

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mState:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$State;

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mRun:Z

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mStartTime:J

    .line 158
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mIPNotifier:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    new-instance p1, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;

    invoke-direct {p1, p0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;-><init>(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)V

    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mThread:Ljava/lang/Thread;

    .line 190
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 191
    iget-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VideoNetWorkSource"

    const-string v1, ""

    .line 193
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 200
    iput-object v1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mSocket:Ljava/net/DatagramSocket;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mRun:Z

    .line 205
    iput-object v1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mThread:Ljava/lang/Thread;

    .line 207
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "aerial"

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received valid frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mCountOfReceived:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->mStartTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->packageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
