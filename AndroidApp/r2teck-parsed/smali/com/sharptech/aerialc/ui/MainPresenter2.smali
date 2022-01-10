.class public Lcom/sharptech/aerialc/ui/MainPresenter2;
.super Ljava/lang/Object;
.source "MainPresenter2.java"


# static fields
.field public static FPS:I = 0x0

.field public static final RECEIVED_FRAME_RATE:I = 0x6

.field public static final SAVE_PIC_FAIL_MSG:I = 0x7

.field public static final SAVE_PIC_FINALLY_MSG:I = 0xa

.field public static final SAVE_PIC_SUCCESS_MSG:I = 0x2

.field public static final SAVE_VIDEO_DONE_MSG:I = 0x3

.field public static final SAVE_VIDEO_FAIL:I = 0x9

.field public static final SAVE_VIDEO_START_MSG:I = 0x4

.field public static final SEND_CMD_FAILED_MSG:I = 0x5

.field public static final SET_DEFAULT_VI_GONE:I = 0xb

.field public static final START_MSG:I = 0x1

.field public static final START_MSG_FAIL:I = 0x8


# instance fields
.field private mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field mHeight:I

.field private mPicName:Ljava/lang/String;

.field private mStartVideoRecord:Z

.field private mStarted:Z

.field private mTakingPicture:Z

.field private mTimeHandler:Landroid/os/Handler;

.field mWidth:I

.field private mainActivity:Lcom/sharptech/aerialc/ui/MainActivity;

.field private rtpRunnable:Ljava/lang/Runnable;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/16 v0, 0x8c

    .line 56
    sput v0, Lcom/sharptech/aerialc/ui/MainPresenter2;->FPS:I

    return-void
.end method

.method public constructor <init>(Lcom/sharptech/aerialc/ui/MainActivity;Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mTakingPicture:Z

    .line 59
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mStarted:Z

    const/16 v0, 0x280

    .line 62
    iput v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mWidth:I

    const/16 v0, 0x1e0

    .line 63
    iput v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mHeight:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->time:J

    .line 107
    new-instance v0, Lcom/sharptech/aerialc/ui/MainPresenter2$1;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/ui/MainPresenter2$1;-><init>(Lcom/sharptech/aerialc/ui/MainPresenter2;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->rtpRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sharptech/aerialc/ui/MainPresenter2$2;-><init>(Lcom/sharptech/aerialc/ui/MainPresenter2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mainActivity:Lcom/sharptech/aerialc/ui/MainActivity;

    .line 70
    iput-object p2, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    .line 71
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->nativeInit(Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/ui/MainPresenter2;)Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sharptech/aerialc/ui/MainPresenter2;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mTakingPicture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/ui/MainPresenter2;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mPicName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sharptech/aerialc/ui/MainPresenter2;)Lcom/sharptech/aerialc/ui/MainActivity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mainActivity:Lcom/sharptech/aerialc/ui/MainActivity;

    return-object p0
.end method

.method private getFPS()V
    .locals 2

    .line 243
    new-instance v0, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;-><init>(Landroid/os/Handler;)V

    .line 244
    invoke-virtual {v0}, Lcom/sharptech/aerialc/runable/FrameRateReceiverThread;->start()V

    return-void
.end method


# virtual methods
.method public aacCallBack([BI)V
    .locals 2

    const-string p2, "aacCallBack"

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aacCallBack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public decCallBack(II[B[B[B)V
    .locals 7

    .line 200
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mainActivity:Lcom/sharptech/aerialc/ui/MainActivity;

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mainActivity:Lcom/sharptech/aerialc/ui/MainActivity;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sharptech/aerialc/ui/MainActivity;->decCallBack(II[B[B[B)V

    .line 203
    :cond_0
    iput p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mWidth:I

    .line 204
    iput p2, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mHeight:I

    .line 206
    sget p1, Lcom/sharptech/aerialc/MainApplication;->FPS:I

    if-nez p1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->getFPS()V

    :cond_1
    return-void
.end method

.method public native destoryRtp()I
.end method

.method public h264CallBack([BI)V
    .locals 2

    const-string p2, "h264CallBack"

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h264CallBack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public msgCallBack(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    .line 217
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 219
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public native nativeInit(Ljava/lang/Object;)I
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mainActivity:Lcom/sharptech/aerialc/ui/MainActivity;

    .line 99
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    .line 100
    invoke-static {}, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->getNormalPool()Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->rtpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->removeTask(Ljava/lang/Runnable;)V

    .line 101
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mTimeHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 103
    :cond_0
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mTimeHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->stop()V

    return-void
.end method

.method public native savePic(Ljava/lang/String;)I
.end method

.method public start()V
    .locals 3

    const-string v0, "sunzhibin"

    const-string v1, "------start------"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "192.168,12,1"

    .line 89
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    invoke-virtual {v1}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-virtual {p0, v0, v2, v1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->startRtp(Ljava/lang/String;ILjava/lang/Object;)I

    return-void
.end method

.method public native startRtp(Ljava/lang/String;ILjava/lang/Object;)I
.end method

.method public stop()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->stopRtp()I

    return-void
.end method

.method public native stopRtp()I
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public takePic()V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mPicName:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2;->mPicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->savePic(Ljava/lang/String;)I

    return-void
.end method
