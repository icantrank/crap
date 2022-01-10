.class Lcom/sharptech/aerialc/ui/UDPUtils$2;
.super Ljava/lang/Object;
.source "UDPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/UDPUtils;->sendMessage()V
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

    .line 126
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils$2;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "foo"

    .line 131
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const-string v3, "192.168.12.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x2328

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 132
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$2;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$100(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "listener "

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
