.class public Lcom/sharptech/aerialc/protocol/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;,
        Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;,
        Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;
    }
.end annotation


# static fields
.field public static final RECEIVED_FRAME_RATE:I = 0x6

.field public static final SAVE_PIC_FAIL_MSG:I = 0x7

.field public static final SAVE_PIC_SUCCESS_MSG:I = 0x2

.field public static final SAVE_VIDEO_DONE_MSG:I = 0x3

.field public static final SAVE_VIDEO_START_MSG:I = 0x4

.field public static final SEND_CMD_FAILED_MSG:I = 0x5

.field public static final START_MSG:I = 0x1

.field private static TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private FPS:I

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bnt_osd:Landroid/widget/Button;

.field private bnt_power:Landroid/widget/Button;

.field private bnt_record:Landroid/widget/Button;

.field private bnt_set:Landroid/widget/Button;

.field private bnt_takepic:Landroid/widget/Button;

.field private bnt_versions:Landroid/widget/Button;

.field private fl_layout:Landroid/widget/FrameLayout;

.field private index:B

.field private ll_setting:Landroid/widget/LinearLayout;

.field private ll_topbar:Landroid/widget/LinearLayout;

.field private lv_setvalue:Landroid/widget/ListView;

.field private mCommandSender:Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

.field private mCountOfDecoded:I

.field private mCountOfFeed:I

.field private mFrameRateReciever:Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;

.field public mHandler:Landroid/os/Handler;

.field private mImage_bg:Landroid/widget/ImageView;

.field private mLast10VideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mLast264FilePath:Ljava/lang/String;

.field private mLastPPS:Ljava/nio/ByteBuffer;

.field private mLastSPS:Ljava/nio/ByteBuffer;

.field mOutputFormat:Landroid/media/MediaFormat;

.field private mPlaybackView1:Landroid/view/SurfaceView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

.field mRecorderSecond:I

.field private mRootview:Landroid/view/View;

.field private mSaveCapured:Ljava/lang/Runnable;

.field private mStartTime:J

.field mStartVideoRecord:Z

.field private mStarted:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTakingPicture:Z

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mTimerTextView:Landroid/widget/TextView;

.field private mVideoFile:Ljava/io/FileOutputStream;

.field private mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoNetWorkSource:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

.field mediaCodec:Landroid/media/MediaCodec;

.field private playButton:Landroid/widget/Button;

.field private setvalueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x3c

    .line 98
    iput v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->FPS:I

    .line 101
    new-instance v1, Landroid/animation/TimeAnimator;

    invoke-direct {v1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->setvalueMap:Ljava/util/Map;

    .line 114
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 115
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLast10VideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    new-instance v0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-direct {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoNetWorkSource:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfFeed:I

    .line 128
    iput v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfDecoded:I

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartTime:J

    .line 130
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStarted:Z

    .line 132
    new-instance v1, Lcom/sharptech/aerialc/protocol/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$1;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mSaveCapured:Ljava/lang/Runnable;

    .line 274
    new-instance v1, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    .line 315
    new-instance v1, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mFrameRateReciever:Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;

    .line 328
    new-instance v1, Lcom/sharptech/aerialc/protocol/MainActivity$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sharptech/aerialc/protocol/MainActivity$2;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 530
    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    .line 773
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z

    .line 774
    iput-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLast264FilePath:Ljava/lang/String;

    .line 775
    iput v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    .line 943
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTakingPicture:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->generateVideoOutputPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/Button;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_record:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sharptech/aerialc/protocol/MainActivity;)Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoNetWorkSource:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    return-object p0
.end method

.method static synthetic access$1208(Lcom/sharptech/aerialc/protocol/MainActivity;)I
    .locals 2

    .line 96
    iget v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfFeed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfFeed:I

    return v0
.end method

.method static synthetic access$1210(Lcom/sharptech/aerialc/protocol/MainActivity;)I
    .locals 2

    .line 96
    iget v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfFeed:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfFeed:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$1408(Lcom/sharptech/aerialc/protocol/MainActivity;)I
    .locals 2

    .line 96
    iget v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfDecoded:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfDecoded:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/view/SurfaceView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mPlaybackView1:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimerTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/io/FileOutputStream;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoFile:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/sharptech/aerialc/protocol/MainActivity;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoFile:Ljava/io/FileOutputStream;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLastSPS:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sharptech/aerialc/protocol/MainActivity;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLastSPS:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLastPPS:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sharptech/aerialc/protocol/MainActivity;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLastPPS:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLast10VideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sharptech/aerialc/protocol/MainActivity;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->generateImageOutputPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lcom/sharptech/aerialc/protocol/MainActivity;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTakingPicture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sharptech/aerialc/protocol/MainActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->FPS:I

    return p0
.end method

.method static synthetic access$702(Lcom/sharptech/aerialc/protocol/MainActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->FPS:I

    return p1
.end method

.method static synthetic access$800(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mImage_bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private cleanAllTempVideoFiles()V
    .locals 6

    .line 931
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 934
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 936
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".h264"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 937
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 939
    sget-object v1, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private generateImageOutputPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyyMMddhhmmss"

    .line 768
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/image_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateVideoOutputPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyyMMddhhmmss"

    .line 761
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/video_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDecode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "video/avc"

    .line 534
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    const-string v0, "video/avc"

    .line 535
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mPlaybackView1:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mPlaybackView1:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "frame-rate"

    .line 536
    iget v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->FPS:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 539
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 541
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 542
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    new-instance v2, Lcom/sharptech/aerialc/protocol/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$3;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 643
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 646
    sget-object v1, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaCode error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private initHashMap()V
    .locals 11

    .line 448
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->setvalueMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "On"

    const-string v3, "Off"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->setvalueMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "5.8G"

    const-string v3, "2.4G"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->setvalueMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "25mw"

    const-string v3, "50mw"

    const-string v4, "100mw"

    const-string v5, "200mw"

    const-string v6, "300mw"

    const-string v7, "400mw"

    const-string v8, "500mw"

    const-string v9, "600mw"

    const-string v10, "800mw"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->setvalueMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "1080P60FPS"

    const-string v3, "1080P30FPS"

    const-string v4, "720P60FPS"

    const-string v5, "720P30FPS"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f090027

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 455
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->fl_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_set:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_record:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_takepic:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_osd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_power:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_versions:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->playButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f07005d

    .line 405
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->fl_layout:Landroid/widget/FrameLayout;

    const v0, 0x7f070084

    .line 406
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_topbar:Landroid/widget/LinearLayout;

    const v0, 0x7f070083

    .line 407
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_setting:Landroid/widget/LinearLayout;

    const v0, 0x7f070085

    .line 408
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    const v0, 0x7f07002c

    .line 409
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_set:Landroid/widget/Button;

    const v0, 0x7f07002b

    .line 410
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_record:Landroid/widget/Button;

    const v0, 0x7f07002d

    .line 411
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_takepic:Landroid/widget/Button;

    const v0, 0x7f070029

    .line 412
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_osd:Landroid/widget/Button;

    const v0, 0x7f07002a

    .line 415
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_power:Landroid/widget/Button;

    const v0, 0x7f07002e

    .line 416
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_versions:Landroid/widget/Button;

    const v0, 0x7f07009a

    .line 417
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mRootview:Landroid/view/View;

    const v0, 0x7f07006b

    .line 418
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mImage_bg:Landroid/widget/ImageView;

    const v0, 0x7f070005

    .line 420
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mPlaybackView1:Landroid/view/SurfaceView;

    .line 421
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mPlaybackView1:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 422
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const v0, 0x7f070099

    .line 424
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->playButton:Landroid/widget/Button;

    const v0, 0x7f07009b

    .line 425
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0700d0

    .line 426
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimerTextView:Landroid/widget/TextView;

    .line 427
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_record:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->initHashMap()V

    return-void
.end method

.method public static isEmulator()Z
    .locals 2

    .line 1083
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1084
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1085
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1086
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1087
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 1088
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 1089
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 1093
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    .line 1094
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 1095
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendCommand(Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;)V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 957
    new-instance v0, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 961
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private set(Landroid/view/View;)V
    .locals 1

    .line 750
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_setting:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 751
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_setting:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 752
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_setting:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 754
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_setting:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setAdapterValue(B)V
    .locals 2

    .line 743
    iput-byte p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->index:B

    .line 744
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 745
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->setvalueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 746
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private startRecord()V
    .locals 4

    .line 781
    iget-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z

    .line 787
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimerTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    iput v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    .line 789
    new-instance v0, Lcom/sharptech/aerialc/protocol/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$4;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    .line 804
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    new-instance v0, Lcom/sharptech/aerialc/protocol/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$5;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V

    .line 921
    invoke-virtual {v0}, Lcom/sharptech/aerialc/protocol/MainActivity$5;->start()V

    return-void
.end method

.method private stopRecord()V
    .locals 1

    const/4 v0, 0x0

    .line 925
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z

    return-void
.end method

.method private takePic()V
    .locals 2

    .line 946
    iget-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTakingPicture:Z

    if-eqz v0, :cond_0

    .line 947
    sget-object v0, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "capturing not finished yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 951
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTakingPicture:Z

    .line 952
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mSaveCapured:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07005d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f070084

    if-eq v0, v1, :cond_5

    const v1, 0x7f070099

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 727
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f090024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 728
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 730
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .line 688
    :pswitch_1
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->takePic()V

    goto/16 :goto_1

    .line 678
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->set(Landroid/view/View;)V

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 680
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_0

    .line 682
    check-cast p1, Landroid/widget/Button;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 684
    :cond_0
    check-cast p1, Landroid/widget/Button;

    const-string v0, "#3c3c3c"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 670
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->stopRecord()V

    goto :goto_0

    .line 673
    :cond_1
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->startRecord()V

    .line 675
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 707
    :pswitch_4
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v0, 0x3

    .line 708
    invoke-direct {p0, v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->setAdapterValue(B)V

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 714
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_osd:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 718
    :pswitch_5
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 719
    invoke-direct {p0, v1}, Lcom/sharptech/aerialc/protocol/MainActivity;->setAdapterValue(B)V

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 722
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_power:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 733
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->start()V

    goto :goto_1

    .line 657
    :cond_3
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_topbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 658
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_topbar:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_setting:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 660
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->lv_setvalue:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 661
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_set:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 662
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->bnt_set:Landroid/widget/Button;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 664
    :cond_4
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->ll_topbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f070029
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 377
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 379
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->requestWindowFeature(I)Z

    .line 381
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 383
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f09001e

    .line 385
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->setContentView(I)V

    .line 386
    invoke-static {}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->getInstance()Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    .line 387
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->initView()V

    .line 388
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->initListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 461
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    .line 462
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 967
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-ge p5, v0, :cond_0

    .line 968
    invoke-virtual {p1, p5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 970
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 971
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 973
    iget-byte p2, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->index:B

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x2d0

    const/16 p2, 0x1e

    const/16 p4, 0x3c

    const/16 p5, 0x438

    packed-switch p3, :pswitch_data_1

    goto :goto_1

    .line 998
    :pswitch_1
    iget-object p3, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    invoke-virtual {p3, p1, p2}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setInfo(SS)[B

    goto :goto_1

    .line 995
    :pswitch_2
    iget-object p2, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    invoke-virtual {p2, p1, p4}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setInfo(SS)[B

    goto :goto_1

    .line 992
    :pswitch_3
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    invoke-virtual {p1, p5, p2}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setInfo(SS)[B

    goto :goto_1

    .line 989
    :pswitch_4
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    invoke-virtual {p1, p5, p4}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setInfo(SS)[B

    goto :goto_1

    :pswitch_5
    const/16 p1, 0xa

    .line 1012
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 1013
    aget p1, p1, p3

    .line 1014
    new-instance p2, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;-><init>(B)V

    .line 1015
    invoke-virtual {p2, p1}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;->writeInt(I)V

    .line 1016
    invoke-direct {p0, p2}, Lcom/sharptech/aerialc/protocol/MainActivity;->sendCommand(Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;)V

    goto :goto_1

    :pswitch_6
    packed-switch p3, :pswitch_data_2

    goto :goto_1

    .line 980
    :pswitch_7
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    const p2, 0x4019999a    # 2.4f

    invoke-virtual {p1, p2}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setFre(F)[B

    goto :goto_1

    .line 977
    :pswitch_8
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mProtocolFactory:Lcom/sharptech/aerialc/protocol/ProtocolFactory;

    const p2, 0x40b9999a    # 5.8f

    invoke-virtual {p1, p2}, Lcom/sharptech/aerialc/protocol/ProtocolFactory;->setFre(F)[B

    goto :goto_1

    :pswitch_9
    const/4 p2, 0x2

    .line 1005
    new-array p2, p2, [I

    fill-array-data p2, :array_1

    .line 1006
    aget p2, p2, p3

    .line 1007
    new-instance p3, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;

    invoke-direct {p3, p1}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;-><init>(B)V

    .line 1008
    invoke-virtual {p3, p2}, Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;->writeInt(I)V

    .line 1009
    invoke-direct {p0, p3}, Lcom/sharptech/aerialc/protocol/MainActivity;->sendCommand(Lcom/sharptech/aerialc/protocol/MainActivity$CommandPack;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0x19
        0x32
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x320
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 475
    sget-object v0, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 477
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->stop()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 468
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 469
    sget-object v0, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1025
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "http://schema.org/ViewAction"

    const-string v1, "SocketRtp Page"

    const-string v2, "http://host/path"

    .line 1036
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android-app://com.chongchi.protocol/http/host/path"

    .line 1038
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1030
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1045
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "http://schema.org/ViewAction"

    const-string v1, "SocketRtp Page"

    const-string v2, "http://host/path"

    .line 1055
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android-app://com.chongchi.protocol/http/host/path"

    .line 1057
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1049
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    return-void
.end method

.method public start()V
    .locals 3

    .line 491
    iget-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLastPPS:Ljava/nio/ByteBuffer;

    .line 496
    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLastSPS:Ljava/nio/ByteBuffer;

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mFrameRateReciever:Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/protocol/MainActivity$FrameRateReceiver;->start()V

    .line 499
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoNetWorkSource:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->start(I)V

    const-wide/16 v0, 0x3e8

    .line 500
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 501
    invoke-direct {p0}, Lcom/sharptech/aerialc/protocol/MainActivity;->initDecode()V

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStarted:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 504
    sget-object v1, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/sharptech/aerialc/util/AerialUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 6

    .line 510
    iget-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    sget-object v0, Lcom/sharptech/aerialc/protocol/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoNetWorkSource:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoNetWorkSource:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->stop()V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 518
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mediaCodec:Landroid/media/MediaCodec;

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mLast10VideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 523
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mVideoFrameQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStarted:Z

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "aerial"

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feed frame count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfFeed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " decoded count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mCountOfDecoded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1071
    invoke-static {}, Lcom/sharptech/aerialc/protocol/MainActivity;->isEmulator()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1074
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
