.class public Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;
.super Ljava/lang/Object;
.source "MultiFileDataSourceImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/DataSource;


# instance fields
.field fcs:[Ljava/nio/channels/FileChannel;

.field index:I


# direct methods
.method public varargs constructor <init>([Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    .line 22
    array-length v1, p1

    new-array v1, v1, [Ljava/nio/channels/FileChannel;

    iput-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    .line 23
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    .line 97
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public map(JJ)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public position()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 51
    :goto_0
    iget v3, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    if-lt v2, v3, :cond_0

    .line 55
    iget-object v2, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    iget v3, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public position(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 62
    iput v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    :goto_1
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    sub-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    iget v2, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 33
    iget v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    return v1

    :cond_0
    return v1
.end method

.method public size()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v1, :cond_0

    return-wide v2

    :cond_0
    aget-object v5, v0, v4

    .line 44
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide/from16 v2, p3

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    :cond_0
    move-object/from16 v6, p0

    .line 75
    iget-object v7, v6, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v8, v7

    const/4 v9, 0x0

    move-wide v10, v4

    :goto_0
    if-lt v9, v8, :cond_1

    return-wide v4

    :cond_1
    aget-object v12, v7, v9

    .line 76
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13

    cmp-long v15, p1, v10

    if-ltz v15, :cond_2

    add-long v15, v10, v13

    cmp-long v15, p1, v15

    if-gez v15, :cond_2

    add-long v15, p1, v2

    cmp-long v15, v15, v10

    if-lez v15, :cond_2

    sub-long v4, p1, v10

    sub-long/2addr v13, v4

    .line 78
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-wide v13, v4

    move-wide/from16 v15, v18

    move-object/from16 v17, p5

    .line 79
    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    add-long v8, p1, v18

    sub-long v10, v2, v18

    move-object/from16 v7, p0

    move-object/from16 v12, p5

    .line 80
    invoke-virtual/range {v7 .. v12}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    add-long v18, v18, v0

    return-wide v18

    :cond_2
    const/4 v12, 0x0

    add-long/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method
