.class public Lcom/sharptech/aerialc/ui/MainActivity;
.super Lcom/sharptech/aerialc/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/sharptech/aerialc/ui/MainView;
.implements Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;
.implements Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;
.implements Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;


# static fields
.field private static final AUDIO_REQUEST_CODE:I = 0x67

.field private static final RECORD_REQUEST_CODE:I = 0x65

.field private static final STORAGE_REQUEST_CODE:I = 0x66


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private firstTime:J

.field private isNeedChangeWH:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isNeedShow:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRecording:Z

.field private ivDefault:Landroid/widget/ImageView;

.field private iv_recording:Landroid/widget/ImageView;

.field private mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

.field private mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

.field private mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

.field private mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

.field private mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

.field private mMp4FileName:Ljava/lang/String;

.field private mNavHeigth:I

.field private mOSDStatus:I

.field private mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private metrics:Landroid/util/DisplayMetrics;

.field private popBtndp:I

.field private screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

.field private setValueMap:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/sharptech/aerialc/base/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedChangeWH:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    iput v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mNavHeigth:I

    .line 77
    iput v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->popBtndp:I

    .line 375
    new-instance v0, Lcom/sharptech/aerialc/ui/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/ui/MainActivity$4;-><init>(Lcom/sharptech/aerialc/ui/MainActivity;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->connection:Landroid/content/ServiceConnection;

    const-wide/16 v0, 0x0

    .line 491
    iput-wide v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->firstTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/ui/MainActivity;)Lcom/sharptech/aerialc/ui/SettingPopupWindow;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/ui/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/ui/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedChangeWH:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sharptech/aerialc/ui/MainActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->showPopupWindow()V

    return-void
.end method

.method static synthetic access$400(Lcom/sharptech/aerialc/ui/MainActivity;)Lcom/sharptech/aerialc/service/ScreenRecordService;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sharptech/aerialc/ui/MainActivity;Lcom/sharptech/aerialc/service/ScreenRecordService;)Lcom/sharptech/aerialc/service/ScreenRecordService;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    return-object p1
.end method

.method private connectService()V
    .locals 3

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sharptech/aerialc/service/ScreenRecordService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sharptech/aerialc/ui/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private init()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->initHashMap()V

    .line 112
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->connectService()V

    .line 113
    new-instance v0, Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/runable/CommandTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    .line 114
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->start()V

    .line 115
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->metrics:Landroid/util/DisplayMetrics;

    .line 116
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    invoke-static {p0}, Lcom/sharptech/aerialc/util/DisplayCutoutUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mNavHeigth:I

    .line 119
    new-instance v0, Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-direct {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    .line 120
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->startReceiveResultListener(Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;)V

    .line 121
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    new-instance v1, Lcom/sharptech/aerialc/ui/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/MainActivity$1;-><init>(Lcom/sharptech/aerialc/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->setmRecordListener(Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;)V

    return-void
.end method

.method private initHashMap()V
    .locals 11

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->setValueMap:Ljava/util/Map;

    .line 230
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->setValueMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "On"

    const-string v3, "Off"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->setValueMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "5.8G"

    const-string v3, "2.4G"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->setValueMap:Ljava/util/Map;

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

    .line 234
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->setValueMap:Ljava/util/Map;

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

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    new-instance v1, Lcom/sharptech/aerialc/ui/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/MainActivity$3;-><init>(Lcom/sharptech/aerialc/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0700c4

    .line 97
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    const v0, 0x7f070076

    .line 98
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    const v0, 0x7f070078

    .line 99
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->iv_recording:Landroid/widget/ImageView;

    .line 101
    new-instance v0, Lcom/sharptech/aerialc/ui/MainPresenter2;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    invoke-direct {v0, p0, v1}, Lcom/sharptech/aerialc/ui/MainPresenter2;-><init>(Lcom/sharptech/aerialc/ui/MainActivity;Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    .line 102
    new-instance v0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-direct {v0, p0, v1, p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;-><init>(Landroid/content/Context;Lcom/sharptech/aerialc/ui/MainPresenter2;Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    .line 104
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private requestPermissions()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 419
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 421
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 423
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 425
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private scanFile()V
    .locals 5

    .line 511
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMp4FileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getSaveDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 515
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 517
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "title"

    .line 518
    iget-object v4, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMp4FileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v4, "video/mp4"

    .line 519
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data"

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMp4FileName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 521
    iget-object v3, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMp4FileName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    const-string v3, ""

    .line 522
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 525
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "video/mp4"

    const-string v3, "video/*"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private showPopupWindow()V
    .locals 7

    .line 249
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sharptech/aerialc/util/DisplayCutoutUtil;->needAdaptNotch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x28

    .line 250
    iput v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->popBtndp:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 252
    iput v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->popBtndp:I

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    iget-object v3, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-direct {v0, p0, v3, p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;-><init>(Landroid/content/Context;Lcom/sharptech/aerialc/ui/MainPresenter2;Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    .line 256
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mNavHeigth:I

    .line 257
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/sharptech/aerialc/ui/MainActivity;->popBtndp:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/sharptech/aerialc/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    .line 256
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->dismiss()V

    goto :goto_1

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mNavHeigth:I

    .line 263
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/sharptech/aerialc/ui/MainActivity;->popBtndp:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/sharptech/aerialc/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    .line 262
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_1
    return-void
.end method


# virtual methods
.method public decCallBack(II[B[B[B)V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->setFrameData(II[B[B[B)V

    .line 215
    :cond_0
    iget-object p3, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedChangeWH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 216
    :cond_1
    new-instance p3, Lcom/sharptech/aerialc/ui/MainActivity$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/sharptech/aerialc/ui/MainActivity$2;-><init>(Lcom/sharptech/aerialc/ui/MainActivity;II)V

    invoke-virtual {p0, p3}, Lcom/sharptech/aerialc/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public getSaveDirectory()Ljava/lang/String;
    .locals 4

    .line 532
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 533
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 534
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getVersion()I
    .locals 3

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 480
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 481
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 360
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    iget-object p2, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1, p2}, Lcom/sharptech/aerialc/service/ScreenRecordService;->setMediaProject(Landroid/media/projection/MediaProjection;)V

    .line 362
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    iget-object p2, p0, Lcom/sharptech/aerialc/ui/MainActivity;->metrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p3, p0, Lcom/sharptech/aerialc/ui/MainActivity;->metrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/sharptech/aerialc/service/ScreenRecordService;->setConfig(III)V

    .line 363
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/service/ScreenRecordService;->startRecord()Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    invoke-super {p0, p1}, Lcom/sharptech/aerialc/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001d

    .line 85
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/MainActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->initView()V

    .line 87
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->init()V

    .line 88
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->initListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 347
    invoke-super {p0}, Lcom/sharptech/aerialc/base/BaseActivity;->onDestroy()V

    .line 348
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->onDestroy()V

    .line 349
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 350
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->onDestory()V

    :cond_0
    return-void
.end method

.method public onDialogHideShow(Z)V
    .locals 4

    if-eqz p1, :cond_3

    .line 454
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    if-nez p1, :cond_1

    .line 455
    new-instance p1, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    iget v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mOSDStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p1, p0, v1}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    invoke-virtual {p1, p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->setListener(Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;)V

    .line 459
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/sharptech/aerialc/util/DisplayCutoutUtil;->needAdaptNotch(Landroid/content/Context;)Z

    move-result p1

    const/16 v0, 0x35

    if-eqz p1, :cond_2

    .line 460
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    const/high16 v2, 0x42480000    # 50.0f

    .line 462
    invoke-static {p0, v2}, Lcom/sharptech/aerialc/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    .line 463
    invoke-static {p0, v3}, Lcom/sharptech/aerialc/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 460
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    const/high16 v2, 0x42700000    # 60.0f

    .line 467
    invoke-static {p0, v2}, Lcom/sharptech/aerialc/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    .line 468
    invoke-static {p0, v3}, Lcom/sharptech/aerialc/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 465
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 471
    :cond_3
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 472
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMoreInfoPopup:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->dismiss()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onFrameStatusClick(I)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 495
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->firstTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const p1, 0x7f0d002d

    .line 497
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->firstTime:J

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 504
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sharptech/aerialc/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPicStatusClick(I)V
    .locals 0

    return-void
.end method

.method public onPowerClick(I)V
    .locals 3

    .line 325
    new-instance v0, Lcom/sharptech/aerialc/bean/CommandPack;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sharptech/aerialc/bean/CommandPack;-><init>(B)V

    .line 326
    invoke-virtual {v0, p1}, Lcom/sharptech/aerialc/bean/CommandPack;->writeInt(I)V

    .line 328
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/runable/CommandTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v1, :cond_0

    .line 329
    new-instance p1, Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-direct {p1, p0}, Lcom/sharptech/aerialc/runable/CommandTask;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/runable/CommandTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne p1, v1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sharptech/aerialc/bean/CommandPack;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/sharptech/aerialc/runable/CommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onRecordError(Z)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-virtual {v0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setCtvChangePicVideoStatus(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 415
    iput-boolean p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isRecording:Z

    return-void
.end method

.method public onRecordIng()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->iv_recording:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->iv_recording:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/sharptech/aerialc/base/BaseActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isNeedChangeWH:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->onStart()V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-direct {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    .line 164
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->startReceiveResultListener(Lcom/sharptech/aerialc/util/AudioUDPUtils$OnReceiveDataListener;)V

    :goto_0
    return-void
.end method

.method public onStartRecord(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_1

    .line 397
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    if-nez p1, :cond_0

    const-string p1, "media_projection"

    .line 398
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x65

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/ui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 403
    :cond_1
    iput-object p2, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mMp4FileName:Ljava/lang/String;

    .line 404
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->startAudioRecord()V

    :goto_0
    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isRecording:Z

    return-void
.end method

.method public onStatusClick(I)V
    .locals 3

    .line 310
    new-instance v0, Lcom/sharptech/aerialc/bean/CommandPack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sharptech/aerialc/bean/CommandPack;-><init>(B)V

    .line 311
    invoke-virtual {v0, p1}, Lcom/sharptech/aerialc/bean/CommandPack;->writeInt(I)V

    .line 313
    iput p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mOSDStatus:I

    .line 314
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/runable/CommandTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v2, :cond_0

    .line 315
    new-instance p1, Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-direct {p1, p0}, Lcom/sharptech/aerialc/runable/CommandTask;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/runable/CommandTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne p1, v2, :cond_1

    .line 319
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

    new-array v1, v1, [Lcom/sharptech/aerialc/bean/CommandPack;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/sharptech/aerialc/runable/CommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/sharptech/aerialc/base/BaseActivity;->onStop()V

    .line 172
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->onStop()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mSettingPopupWindow:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setCtvChangePicVideoStatus(Z)V

    :cond_1
    return-void
.end method

.method public onStopRecord(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/service/ScreenRecordService;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->screenRecordService:Lcom/sharptech/aerialc/service/ScreenRecordService;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/service/ScreenRecordService;->stopRecord()Z

    goto :goto_0

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mAudioUDPUtils:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->stopAudioRecord()V

    .line 444
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->scanFile()V

    .line 445
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/sharptech/aerialc/util/ToastUtils;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 447
    iput-boolean p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->isRecording:Z

    .line 448
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->iv_recording:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public recordVideoFail()V
    .locals 0

    return-void
.end method

.method public recordVideoSuccess()V
    .locals 0

    return-void
.end method

.method public setIvDefaultVisiable(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 149
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->ivDefault:Landroid/widget/ImageView;

    const v0, 0x7f06007a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSurfaceWH(II)V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 192
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    int-to-float p2, p2

    div-float/2addr v3, p2

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    if-gt v3, v2, :cond_0

    .line 197
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    int-to-float v1, v2

    mul-float v1, v1, v4

    div-float/2addr v1, p1

    mul-float v1, v1, p2

    float-to-int p1, v1

    .line 202
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    :goto_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity;->mGlSurfaceView:Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    invoke-virtual {p1, v0}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 207
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/MainActivity;->setIvDefaultVisiable(Z)V

    return-void
.end method

.method public startReceiveData()V
    .locals 0

    return-void
.end method

.method public takePicFail()V
    .locals 2

    .line 289
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v0

    const v1, 0x7f0d0067

    invoke-virtual {p0, v1}, Lcom/sharptech/aerialc/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public takePicSuccess(Ljava/lang/String;)V
    .locals 5

    .line 271
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 272
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 274
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_data"

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v3, "image/jpeg"

    .line 276
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 277
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 278
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "image/*"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 282
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v0

    const v1, 0x7f0d0068

    invoke-virtual {p0, v1}, Lcom/sharptech/aerialc/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sharptech/aerialc/util/ToastUtils;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
