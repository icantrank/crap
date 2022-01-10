.class public Lcom/sharptech/aerialc/bean/CommandPack;
.super Ljava/lang/Object;
.source "CommandPack.java"


# static fields
.field public static final CMD_OSD_TYPE:B = 0x1t

.field public static final CMD_POWER_TYPE:B = 0x3t

.field public static final kEnd:S = 0x5555s

.field public static final kStart:S = -0x1s


# instance fields
.field public mBody:Ljava/nio/ByteBuffer;

.field public final mLen:B

.field public mType:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 11
    iput-byte v0, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mLen:B

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mBody:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type only could be CMD_OSD_TYPE or CMD_POWER_TYPE"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    :goto_0
    iput-byte p1, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mType:B

    .line 20
    iget-object p1, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mBody:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 3

    const/16 v0, 0xa

    .line 36
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    .line 37
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mType:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x5555

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public writeByte(B)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeShort(S)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sharptech/aerialc/bean/CommandPack;->mBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
