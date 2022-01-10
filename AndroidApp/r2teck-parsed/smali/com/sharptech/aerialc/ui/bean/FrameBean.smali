.class public Lcom/sharptech/aerialc/ui/bean/FrameBean;
.super Ljava/lang/Object;
.source "FrameBean.java"


# instance fields
.field private frameData:[B

.field private isFU:Z

.field private isFUEnd:Z

.field private isFUStart:Z

.field private originData:[B

.field private sequence:I

.field private sequenceNum:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->originData:[B

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->timeStamp:J

    .line 21
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/ui/bean/FrameBean;->handleData([B)V

    return-void
.end method

.method private handleData([B)V
    .locals 5

    const/16 v0, 0xc

    .line 26
    aget-byte v1, p1, v0

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 27
    iput-boolean v3, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFU:Z

    .line 28
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 29
    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 32
    :cond_0
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFU:Z

    .line 34
    aget-byte v1, p1, v2

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 35
    aget-byte v2, p1, v2

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUStart:Z

    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUEnd:Z

    .line 38
    array-length v0, p1

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 39
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 43
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-byte v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequenceNum:Ljava/lang/String;

    .line 44
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequence:I

    .line 45
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->frameData:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    check-cast p1, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    .line 53
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequenceNum:Ljava/lang/String;

    iget-object p1, p1, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequenceNum:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFrameData()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->frameData:[B

    return-object v0
.end method

.method public getOriginData()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->originData:[B

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequence:I

    return v0
.end method

.method public getSequenceNum()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequenceNum:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->timeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->sequenceNum:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFU()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFU:Z

    return v0
.end method

.method public isFUEnd()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUEnd:Z

    return v0
.end method

.method public isFUStart()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameBean;->isFUStart:Z

    return v0
.end method
