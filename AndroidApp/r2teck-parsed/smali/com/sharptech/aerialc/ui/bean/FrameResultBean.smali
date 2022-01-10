.class public Lcom/sharptech/aerialc/ui/bean/FrameResultBean;
.super Ljava/lang/Object;
.source "FrameResultBean.java"


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private timeStamp:J


# direct methods
.method public constructor <init>(JLjava/nio/ByteBuffer;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/sharptech/aerialc/ui/bean/FrameResultBean;->timeStamp:J

    .line 12
    iput-object p3, p0, Lcom/sharptech/aerialc/ui/bean/FrameResultBean;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameResultBean;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/sharptech/aerialc/ui/bean/FrameResultBean;->timeStamp:J

    return-wide v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/FrameResultBean;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/sharptech/aerialc/ui/bean/FrameResultBean;->timeStamp:J

    return-void
.end method
