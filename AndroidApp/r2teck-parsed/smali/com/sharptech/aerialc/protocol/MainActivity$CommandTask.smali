.class Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final kCmdPort:I = 0x2012

.field private static final kHost:Ljava/lang/String; = "192.168.12.1"


# instance fields
.field private mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/sharptech/aerialc/protocol/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 247
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->mSocket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, [Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;

    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->doInBackground([Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;)Ljava/lang/Void;
    .locals 4

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "192.168.12.1"

    const/16 v3, 0x2012

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 253
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    .line 254
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 255
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 258
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v0, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v0, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute()V
    .locals 0

    return-void
.end method

.method protected onProgressUpdate()V
    .locals 0

    return-void
.end method
