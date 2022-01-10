.class public Lcom/sharptech/aerialc/aerialapp/VideoDecode;
.super Ljava/lang/Object;
.source "VideoDecode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDecode"


# instance fields
.field private lastPPS:[B

.field private lastSPS:[B

.field private mOnDataDecodeListener:Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->mOnDataDecodeListener:Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;

    return-void
.end method

.method private receivedRawVideoFrame([BII)V
    .locals 4

    const/4 v0, 0x4

    .line 46
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    const-string v1, "VideoDecode"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~~~~~~~ Received NALU Type \"%@\" ~~~~~~~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->mOnDataDecodeListener:Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;->onDecode([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public commitFrame([B)V
    .locals 7

    const-string v0, "VideoDecode"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sharptech/aerialc/util/ByteUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x1f

    const-string v1, "VideoDecode"

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFrame ====== nalu_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 27
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 30
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastPPS:[B

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 32
    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastPPS:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    if-eqz v1, :cond_3

    .line 33
    array-length v1, p1

    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastPPS:[B

    array-length v4, v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    array-length v4, v4

    add-int/2addr v1, v4

    new-array v1, v1, [B

    .line 34
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastPPS:[B

    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastPPS:[B

    array-length v6, v6

    invoke-static {v4, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastSPS:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->lastPPS:[B

    array-length v5, v5

    add-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    array-length v4, v1

    invoke-direct {p0, v1, v4, v2}, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->receivedRawVideoFrame([BII)V

    :cond_3
    if-ne v0, v2, :cond_4

    .line 41
    array-length v0, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->receivedRawVideoFrame([BII)V

    :cond_4
    return-void
.end method

.method public setmOnDataDecodeListener(Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoDecode;->mOnDataDecodeListener:Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;

    return-void
.end method
