.class public Lcom/sharptech/aerialc/ui/SplashActivity;
.super Lcom/sharptech/aerialc/base/BaseActivity;
.source "SplashActivity.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# instance fields
.field private PERMISSION_REQUEST_CODE:I

.field private ivSplash:Landroid/widget/ImageView;

.field perms:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 33
    invoke-direct {p0}, Lcom/sharptech/aerialc/base/BaseActivity;-><init>()V

    const/16 v0, 0x3e8

    .line 36
    iput v0, p0, Lcom/sharptech/aerialc/ui/SplashActivity;->PERMISSION_REQUEST_CODE:I

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.CAMERA"

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v6, "android.permission.WAKE_LOCK"

    .line 37
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SplashActivity;->perms:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/ui/SplashActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SplashActivity;->startMainActivity()V

    return-void
.end method

.method private varargs hasPermission([Ljava/lang/String;)Z
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f07007a

    .line 55
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    .line 63
    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->checkVideoSavePath()Z

    .line 64
    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->checkPicSavePath()Z

    .line 66
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SplashActivity;->perms:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sharptech/aerialc/ui/SplashActivity;->requestPermission([Ljava/lang/String;)V

    return-void
.end method

.method private varargs requestPermission([Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/ui/SplashActivity;->hasPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d0066

    .line 74
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sharptech/aerialc/ui/SplashActivity;->PERMISSION_REQUEST_CODE:I

    .line 72
    invoke-static {p0, v0, v1, p1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sharptech/aerialc/ui/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/ui/SplashActivity$1;-><init>(Lcom/sharptech/aerialc/ui/SplashActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private startMainActivity()V
    .locals 2

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/SplashActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/sharptech/aerialc/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3ebd

    if-ne p1, p2, :cond_0

    const p1, 0x7f0d0066

    .line 118
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 116
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 122
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/sharptech/aerialc/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1}, Lcom/sharptech/aerialc/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090020

    .line 49
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SplashActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SplashActivity;->initView()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/SplashActivity;->finish()V

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SplashActivity;->startMainActivity()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/sharptech/aerialc/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method
