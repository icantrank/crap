.class Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;
.super Ljava/lang/Thread;
.source "VideoNetWorkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;->this$1:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 49
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;->this$1:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;

    iget-object v0, v0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$000(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    const-string v1, "foo"

    .line 51
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const-string v4, "192.168.12.1"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 52
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;->this$1:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;

    iget-object v0, v0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$000(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoNetWorkSource"

    const-string v2, ""

    .line 54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
