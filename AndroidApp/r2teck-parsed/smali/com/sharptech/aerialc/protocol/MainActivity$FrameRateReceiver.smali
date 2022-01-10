.class Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameRateReceiver"
.end annotation


# instance fields
.field private mRunning:Z

.field private mSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/sharptech/aerialc/protocol/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 282
    :try_start_0
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->mRunning:Z

    .line 283
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x2013

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->mSocket:Ljava/net/ServerSocket;

    .line 284
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 285
    :goto_0
    iget-boolean v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->mRunning:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    .line 286
    new-array v1, v1, [B

    .line 287
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 288
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 289
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 294
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    const/4 v2, 0x4

    .line 295
    new-array v2, v2, [B

    .line 296
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 297
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 298
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 299
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v2, v1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$702(Lcom/sharptech/aerialc/protocol/MainActivity;I)I

    .line 300
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 301
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v0, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->mSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public term()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->mRunning:Z

    return-void
.end method
