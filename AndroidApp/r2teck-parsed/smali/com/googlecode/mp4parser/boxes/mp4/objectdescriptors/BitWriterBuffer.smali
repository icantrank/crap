.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
.super Ljava/lang/Object;
.source "BitWriterBuffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field initialPos:I

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    .line 12
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->initialPos:I

    return-void
.end method


# virtual methods
.method public writeBits(II)V
    .locals 5

    .line 24
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-gt p2, v0, :cond_2

    .line 26
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->initialPos:I

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    sub-int/2addr v0, p2

    shl-int/2addr p1, v0

    add-int/2addr v2, p1

    .line 29
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->initialPos:I

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    add-int/lit16 v2, v2, -0x100

    :cond_1
    int-to-byte v2, v2

    invoke-virtual {p1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 30
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    goto :goto_0

    :cond_2
    sub-int/2addr p2, v0

    shr-int v2, p1, p2

    .line 33
    invoke-virtual {p0, v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    shl-int v0, v1, p2

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->initialPos:I

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    div-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->position:I

    rem-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public writeBool(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    return-void
.end method
