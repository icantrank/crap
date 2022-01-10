.class Lcom/sharptech/aerialc/ui/UDPUtils$3;
.super Ljava/lang/Object;
.source "UDPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/UDPUtils;->listener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/UDPUtils;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0x708

    const/4 v1, 0x0

    .line 153
    :try_start_0
    new-array v0, v0, [B

    .line 154
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 155
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$100(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iget-boolean v0, v0, Lcom/sharptech/aerialc/ui/UDPUtils;->isListener:Z

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sharptech/aerialc/ui/UDPUtils;->startTime:J

    .line 158
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$100(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 160
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$200(Lcom/sharptech/aerialc/ui/UDPUtils;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$200(Lcom/sharptech/aerialc/ui/UDPUtils;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;->onReceiveData(Z)V

    .line 162
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$202(Lcom/sharptech/aerialc/ui/UDPUtils;Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    .line 163
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$100(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 164
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$300(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 165
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iput-boolean v1, v0, Lcom/sharptech/aerialc/ui/UDPUtils;->isListener:Z

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iget-boolean v0, v0, Lcom/sharptech/aerialc/ui/UDPUtils;->isLog:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 169
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v3, "listener "

    .line 170
    invoke-static {v0}, Lcom/sharptech/aerialc/util/ByteUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-eq v3, v4, :cond_2

    const-string v2, "UDPUtils"

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a valid rtp package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_2
    new-instance v3, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    invoke-direct {v3, v0}, Lcom/sharptech/aerialc/ui/bean/FrameBean;-><init>([B)V

    .line 176
    invoke-virtual {v3}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFU()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->getFrameData()[B

    move-result-object v4

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    const/16 v5, 0x67

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iget-boolean v4, v4, Lcom/sharptech/aerialc/ui/UDPUtils;->isFirst:Z

    if-eqz v4, :cond_3

    .line 177
    iget-object v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iput-boolean v1, v4, Lcom/sharptech/aerialc/ui/UDPUtils;->isFirst:Z

    .line 179
    :cond_3
    iget-object v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iget-boolean v4, v4, Lcom/sharptech/aerialc/ui/UDPUtils;->isFirst:Z

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 183
    :cond_4
    iget-object v4, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v4, v3}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$400(Lcom/sharptech/aerialc/ui/UDPUtils;Lcom/sharptech/aerialc/ui/bean/FrameBean;)V

    const-string v3, "listener "

    .line 187
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->stop()V

    .line 193
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$200(Lcom/sharptech/aerialc/ui/UDPUtils;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$3;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$200(Lcom/sharptech/aerialc/ui/UDPUtils;)Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;->onReceiveData(Z)V

    :cond_5
    return-void
.end method
