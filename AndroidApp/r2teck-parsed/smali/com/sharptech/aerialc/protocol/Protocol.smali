.class public Lcom/sharptech/aerialc/protocol/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# instance fields
.field private protocolbuffer:[B

.field private protocolend:[B

.field private protocolinfo:[B

.field private protocolsize:B

.field private protocoltop:[B

.field private protocoltype:B

.field private sendCount:I


# direct methods
.method public constructor <init>(B)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 6
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocoltop:[B

    const/4 v1, 0x4

    .line 11
    iput-byte v1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolsize:B

    .line 12
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolend:[B

    .line 21
    iput-byte p1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocoltype:B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x55t
    .end array-data
.end method


# virtual methods
.method public getProtocolbuffer()[B
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolbuffer:[B

    return-object v0
.end method

.method public getProtocolinfo()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolinfo:[B

    return-object v0
.end method

.method public getProtocolsize()B
    .locals 1

    .line 57
    iget-byte v0, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolsize:B

    return v0
.end method

.method public getProtocoltype()B
    .locals 1

    .line 33
    iget-byte v0, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocoltype:B

    return v0
.end method

.method public getSendCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sharptech/aerialc/protocol/Protocol;->sendCount:I

    return v0
.end method

.method public setProtocolbuffer([B)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolbuffer:[B

    return-void
.end method

.method public setProtocolinfo([B)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolinfo:[B

    return-void
.end method

.method public setProtocolsize(B)V
    .locals 0

    .line 61
    iput-byte p1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocolsize:B

    return-void
.end method

.method public setProtocoltype(B)V
    .locals 0

    .line 37
    iput-byte p1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->protocoltype:B

    return-void
.end method

.method public setSendCount(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/sharptech/aerialc/protocol/Protocol;->sendCount:I

    return-void
.end method
