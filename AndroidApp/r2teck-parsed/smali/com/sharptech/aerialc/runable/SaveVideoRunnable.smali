.class public Lcom/sharptech/aerialc/runable/SaveVideoRunnable;
.super Ljava/lang/Object;
.source "SaveVideoRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveVideoRunnable"


# instance fields
.field private inputPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->inputPath:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->outputPath:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public native executeFFmpegCmd([Ljava/lang/String;)I
.end method

.method public run()V
    .locals 8

    const-string v0, "SaveVideoRunnable"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compress raw file with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->inputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    .line 47
    :try_start_0
    new-instance v7, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    new-instance v2, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    iget-object v1, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->inputPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    const-string v3, "eng"

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    new-instance v1, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 56
    invoke-virtual {v1, v7}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 57
    new-instance v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->outputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 61
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :try_start_2
    invoke-interface {v1, v2}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 63
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->inputPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->deleteFile(Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v1

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_1

    .line 68
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :catch_3
    move-exception v1

    .line 49
    iget-object v2, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/sharptech/aerialc/runable/SaveVideoRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    const-string v0, "SaveVideoRunnable"

    const-string v2, "init h264Track error\u00aa"

    .line 52
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
