.class public Lcom/sharptech/aerialc/protocol/ProtocolFactory;
.super Ljava/lang/Object;
.source "ProtocolFactory.java"


# static fields
.field private static protocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory; = null

.field private static final tag:Ljava/lang/String; = "ProtocolFactory"


# instance fields
.field private mChatManager:Lcom/sharptech/aerialc/socket/ChatManager;

.field public protoclMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/sharptech/aerialc/protocol/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private protocolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public sendProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sharptech/aerialc/protocol/Protocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protoclMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/sharptech/aerialc/protocol/ProtocolFactory;
    .locals 1

    .line 32
    sget-object v0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    invoke-direct {v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;-><init>()V

    sput-object v0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    .line 34
    :cond_0
    sget-object v0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    return-object v0
.end method


# virtual methods
.method public getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protoclMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sharptech/aerialc/protocol/Protocol;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sharptech/aerialc/protocol/Protocol;

    invoke-direct {v0, p1}, Lcom/sharptech/aerialc/protocol/Protocol;-><init>(B)V

    :cond_0
    return-object v0
.end method

.method public parseProtocol(Lcom/sharptech/aerialc/protocol/Protocol;)V
    .locals 5

    .line 217
    invoke-virtual {p1}, Lcom/sharptech/aerialc/protocol/Protocol;->getProtocolinfo()[B

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/sharptech/aerialc/protocol/Protocol;->getProtocoltype()B

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 220
    aget-byte v0, v0, p1

    .line 221
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sharptech/aerialc/protocol/Protocol;

    .line 224
    invoke-virtual {v2}, Lcom/sharptech/aerialc/protocol/Protocol;->getProtocoltype()B

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "ProtocolFactory"

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Ack type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/ProtocolContent;->TypeToString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_1
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public parseProtocol([B)V
    .locals 6

    const/4 v0, 0x2

    .line 199
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolbuffer([B)V

    const/4 v2, 0x3

    .line 201
    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolsize(B)V

    const/4 v2, 0x4

    .line 202
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    add-int/lit8 v5, v4, 0x4

    .line 204
    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v1, v3}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolinfo([B)V

    .line 207
    aget-byte p1, p1, v0

    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocoltype(B)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->parseProtocol(Lcom/sharptech/aerialc/protocol/Protocol;)V

    return-void
.end method

.method public sendProtocol()V
    .locals 8

    const-wide/16 v0, 0xc8

    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 166
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    monitor-enter v2

    .line 169
    :try_start_1
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 170
    monitor-exit v2

    return-void

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_1

    .line 174
    :try_start_2
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sharptech/aerialc/protocol/Protocol;

    const-string v5, "ProtocolFactory"

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendProtocol:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sharptech/aerialc/protocol/Protocol;->getProtocoltype()B

    move-result v7

    invoke-static {v7}, Lcom/sharptech/aerialc/util/ProtocolContent;->TypeToString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sharptech/aerialc/protocol/Protocol;->getProtocolbuffer()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sharptech/aerialc/util/ByteUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->mChatManager:Lcom/sharptech/aerialc/socket/ChatManager;

    invoke-virtual {v3}, Lcom/sharptech/aerialc/protocol/Protocol;->getProtocolbuffer()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sharptech/aerialc/socket/ChatManager;->write([B)V

    .line 177
    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 180
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 190
    :goto_2
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocol()V

    return-void

    :catchall_0
    move-exception v0

    .line 183
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public setACK(I)[B
    .locals 5

    const/4 v0, 0x5

    .line 147
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;

    move-result-object v1

    .line 148
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setProtocolList(B)V

    .line 149
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 152
    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolbuffer([B)V

    .line 153
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public setChatManager(Lcom/sharptech/aerialc/socket/ChatManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->mChatManager:Lcom/sharptech/aerialc/socket/ChatManager;

    return-void
.end method

.method public setFre(F)[B
    .locals 5

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;

    move-result-object v1

    .line 65
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setProtocolList(B)V

    .line 67
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->floatToByte(F)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 69
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolbuffer([B)V

    .line 71
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocol()V

    return-object p1
.end method

.method public setInfo(SS)[B
    .locals 5

    const/4 v0, 0x4

    .line 84
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 87
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setProtocolList(B)V

    .line 88
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->shortToByte(S)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 90
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/sharptech/aerialc/util/ByteUtils;->shortToByte(S)[B

    move-result-object p2

    invoke-static {p2}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 93
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolbuffer([B)V

    .line 95
    iget-object p2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocol()V

    return-object p1
.end method

.method public setOsd(I)[B
    .locals 5

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setProtocolList(B)V

    .line 111
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->intToBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 113
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 114
    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolbuffer([B)V

    .line 115
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocol()V

    return-object p1
.end method

.method public setPower(I)[B
    .locals 5

    const/4 v0, 0x3

    .line 127
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getProtocol(B)Lcom/sharptech/aerialc/protocol/Protocol;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setProtocolList(B)V

    .line 130
    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->intToBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertArrayToList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 132
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->convertListToArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 133
    invoke-virtual {v1, p1}, Lcom/sharptech/aerialc/protocol/Protocol;->setProtocolbuffer([B)V

    .line 134
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocolList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->sendProtocol()V

    return-object p1
.end method

.method public setProtocolList(B)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->protocolList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
