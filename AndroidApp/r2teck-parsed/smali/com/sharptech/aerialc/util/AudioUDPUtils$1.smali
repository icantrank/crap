.class Lcom/sharptech/aerialc/util/AudioUDPUtils$1;
.super Ljava/lang/Object;
.source "AudioUDPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/util/AudioUDPUtils;->listener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/util/AudioUDPUtils;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 101
    :try_start_0
    new-array v0, v0, [B

    .line 102
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    iget-boolean v0, v0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->isListener:Z

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sharptech/aerialc/util/AudioUDPUtils;->startTime:J

    .line 105
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$000(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 107
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 108
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v3, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    array-length v4, v0

    invoke-static {v3, v4}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$100(Lcom/sharptech/aerialc/util/AudioUDPUtils;I)V

    .line 111
    iget-object v3, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v3}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$200(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v3, v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$300(Lcom/sharptech/aerialc/util/AudioUDPUtils;[B)V

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v3}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$400(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v3, v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$500(Lcom/sharptech/aerialc/util/AudioUDPUtils;[B)V

    :cond_1
    const-string v0, "listener"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a5\u6536\u97f3\u9891\u8017\u65f6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    iget-wide v6, v6, Lcom/sharptech/aerialc/util/AudioUDPUtils;->startTime:J

    const/4 v8, 0x0

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "listener"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$600(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$1;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$600(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;->onReceiveData(Z)V

    :cond_2
    return-void
.end method
