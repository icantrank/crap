.class public Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;
.super Ljava/lang/Thread;
.source "FrameRateReceiverThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunning:Z

.field private mSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 31
    :try_start_0
    iput-boolean v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mRunning:Z

    .line 32
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;

    .line 33
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 34
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x2013

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 35
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 36
    :goto_0
    iget-boolean v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mRunning:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    .line 37
    new-array v1, v1, [B

    .line 38
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 39
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    const/4 v2, 0x4

    .line 46
    new-array v2, v2, [B

    .line 47
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    sput v1, Lcom/sharptech/aerialc/MainApplication;->FPS:I

    const-string v1, "sunzhibin"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/sharptech/aerialc/MainApplication;->FPS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 53
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 55
    iput v1, v0, Landroid/os/Message;->what:I

    .line 56
    sget v1, Lcom/sharptech/aerialc/MainApplication;->FPS:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 57
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    const-string v1, "sunzhibin"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameRateReceiverThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public term()V
    .locals 2

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mRunning:Z

    .line 78
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iput-object v1, p0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
