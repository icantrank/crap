.class public Lcom/sharptech/aerialc/socket/ClientSocketHandler;
.super Ljava/lang/Thread;
.source "ClientSocketHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientSocketHandler"


# instance fields
.field private chat:Lcom/sharptech/aerialc/socket/ChatManager;

.field private handler:Landroid/os/Handler;

.field private hostip:Ljava/lang/String;

.field private mAddress:Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->hostip:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->hostip:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->port:I

    return-void
.end method


# virtual methods
.method public getChat()Lcom/sharptech/aerialc/socket/ChatManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->chat:Lcom/sharptech/aerialc/socket/ChatManager;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 30
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 33
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->hostip:Ljava/lang/String;

    iget v3, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    const-string v1, "ClientSocketHandler"

    const-string v2, "Launching the I/O handler"

    .line 34
    invoke-static {v1, v2}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/sharptech/aerialc/socket/ChatManager;

    iget-object v2, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->handler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/sharptech/aerialc/socket/ChatManager;-><init>(Ljava/net/Socket;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->chat:Lcom/sharptech/aerialc/socket/ChatManager;

    .line 36
    invoke-static {}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getInstance()Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->chat:Lcom/sharptech/aerialc/socket/ChatManager;

    invoke-virtual {v1, v2}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setChatManager(Lcom/sharptech/aerialc/socket/ChatManager;)V

    .line 37
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sharptech/aerialc/socket/ClientSocketHandler;->chat:Lcom/sharptech/aerialc/socket/ChatManager;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
