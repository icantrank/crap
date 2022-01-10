.class public Lcom/sharptech/aerialc/service/ScreenRecordService;
.super Landroid/app/Service;
.source "ScreenRecordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;,
        Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;
    }
.end annotation


# instance fields
.field private dpi:I

.field private errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

.field private height:I

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private running:Z

.field private videoName:Ljava/lang/String;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x438

    .line 39
    iput v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->width:I

    const/16 v0, 0x2d0

    .line 40
    iput v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->height:I

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    return-void
.end method

.method private createVirtualDisplay()V
    .locals 9

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "MainScreen"

    iget v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->width:I

    iget v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->height:I

    iget v4, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->dpi:I

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 172
    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 171
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d006b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;->onRecordError(Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initRecorder()V
    .locals 5

    .line 185
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 187
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 191
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 193
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sharptech/aerialc/util/DisplayCutoutUtil;->needAdaptNotch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->height:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->width:I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->width:I

    iget v4, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 205
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 207
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 211
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->width:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->height:I

    mul-int v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 212
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 214
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/sharptech/aerialc/service/ScreenRecordService$1;

    invoke-direct {v2, p0}, Lcom/sharptech/aerialc/service/ScreenRecordService$1;-><init>(Lcom/sharptech/aerialc/service/ScreenRecordService;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d006b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    invoke-interface {v0, v1}, Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;->onRecordError(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scanFile()V
    .locals 6

    .line 153
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getSaveDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 154
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 156
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "title"

    .line 157
    iget-object v4, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v4, "video/mp4"

    .line 158
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 160
    iget-object v4, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    const-string v4, ""

    .line 161
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 164
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "video/mp4"

    const-string v4, "video/*"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->videoName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sharptech/aerialc/service/ScreenRecordService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getSaveDirectory()Ljava/lang/String;
    .locals 4

    .line 236
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 237
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public isRunning()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 61
    new-instance p1, Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;

    invoke-direct {p1, p0}, Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;-><init>(Lcom/sharptech/aerialc/service/ScreenRecordService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "service_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setConfig(III)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->width:I

    .line 90
    iput p2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->height:I

    .line 91
    iput p3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->dpi:I

    return-void
.end method

.method public setErrorListener(Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    return-void
.end method

.method public setMediaProject(Landroid/media/projection/MediaProjection;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method public startRecord()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->initRecorder()V

    .line 99
    invoke-direct {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->createVirtualDisplay()V

    const/4 v0, 0x1

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 102
    iput-boolean v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 106
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0069

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    const/4 v2, 0x0

    .line 108
    iput-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 109
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    invoke-interface {v2, v0}, Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;->onRecordError(Z)V

    .line 112
    :cond_1
    iput-boolean v1, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public stopRecord()Z
    .locals 7

    .line 119
    iget-boolean v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 123
    iput-boolean v1, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->running:Z

    const/4 v0, 0x1

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 126
    iget-object v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 127
    iget-object v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d006c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sharptech/aerialc/util/ToastUtils;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    invoke-interface {v3, v1}, Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;->onRecordError(Z)V

    .line 144
    :cond_1
    iput-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 145
    invoke-direct {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->scanFile()V

    return v0

    :catch_0
    move-exception v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d006b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 133
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 134
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sharptech/aerialc/service/ScreenRecordService;->errorListener:Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;

    invoke-interface {v2, v0}, Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;->onRecordError(Z)V

    :cond_2
    return v1
.end method
