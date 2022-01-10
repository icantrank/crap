.class public Lcom/sharptech/aerialc/runable/CommandTask;
.super Landroid/os/AsyncTask;
.source "CommandTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sharptech/aerialc/bean/CommandPack;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final kCmdPort:I = 0x2012

.field private static final kHost:Ljava/lang/String; = "192.168.12.1"


# instance fields
.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mSocket:Ljava/net/Socket;

    .line 28
    iput-object p1, p0, Lcom/sharptech/aerialc/runable/CommandTask;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mSocket:Ljava/net/Socket;

    .line 24
    iput-object p1, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Lcom/sharptech/aerialc/bean/CommandPack;

    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/runable/CommandTask;->doInBackground([Lcom/sharptech/aerialc/bean/CommandPack;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/sharptech/aerialc/bean/CommandPack;)Ljava/lang/Void;
    .locals 4

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "192.168.12.1"

    const/16 v3, 0x2012

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 35
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    .line 36
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/sharptech/aerialc/bean/CommandPack;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 37
    iget-object p1, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/CommandTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
