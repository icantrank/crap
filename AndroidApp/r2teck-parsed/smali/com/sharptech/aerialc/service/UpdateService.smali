.class public Lcom/sharptech/aerialc/service/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# instance fields
.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mCurrentVersionName:Ljava/lang/String;

.field private mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/service/UpdateService;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sharptech/aerialc/service/UpdateService;->installAPK(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sharptech/aerialc/service/UpdateService;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/sharptech/aerialc/service/UpdateService;->mProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/service/UpdateService;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sharptech/aerialc/service/UpdateService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object p0
.end method

.method private installAPK(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p1, v1, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const p2, 0x4000001

    .line 115
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string p2, "application/vnd.android.package-archive"

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/service/UpdateService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private removeFile()V
    .locals 3

    .line 134
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 135
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/sharptech/aerialc/service/UpdateService;->mCurrentVersionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    iget v1, p0, Lcom/sharptech/aerialc/service/UpdateService;->mProgress:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startDownloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p3, 0x0

    .line 61
    iput p3, p0, Lcom/sharptech/aerialc/service/UpdateService;->mProgress:I

    .line 62
    invoke-static {}, Lcom/sharptech/aerialc/util/DownloadUtil;->get()Lcom/sharptech/aerialc/util/DownloadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sharptech/aerialc/service/UpdateService;->mCurrentVersionName:Ljava/lang/String;

    new-instance v2, Lcom/sharptech/aerialc/service/UpdateService$1;

    invoke-direct {v2, p0, p1}, Lcom/sharptech/aerialc/service/UpdateService$1;-><init>(Lcom/sharptech/aerialc/service/UpdateService;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/sharptech/aerialc/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;)V

    .line 97
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object p2

    const-string v0, "downloading..."

    invoke-virtual {p2, p1, v0, p3}, Lcom/sharptech/aerialc/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 129
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 130
    invoke-direct {p0}, Lcom/sharptech/aerialc/service/UpdateService;->removeFile()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "version"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateUrl"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NEXG1_v_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/sharptech/aerialc/service/UpdateService;->mCurrentVersionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sharptech/aerialc/service/UpdateService;->mCurrentVersionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    iput-object v0, p0, Lcom/sharptech/aerialc/service/UpdateService;->mCurrentVersionName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sharptech/aerialc/service/UpdateService;->mCurrentVersionName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sharptech/aerialc/service/UpdateService;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sharptech/aerialc/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/service/UpdateService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public scanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
