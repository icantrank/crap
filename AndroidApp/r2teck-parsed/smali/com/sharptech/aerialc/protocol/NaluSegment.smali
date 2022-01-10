.class public Lcom/sharptech/aerialc/protocol/NaluSegment;
.super Ljava/lang/Object;
.source "NaluSegment.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferSize:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/NaluSegment;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/sharptech/aerialc/protocol/NaluSegment;->bufferSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/sharptech/aerialc/protocol/NaluSegment;->type:I

    return v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/NaluSegment;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/sharptech/aerialc/protocol/NaluSegment;->bufferSize:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/sharptech/aerialc/protocol/NaluSegment;->type:I

    return-void
.end method
