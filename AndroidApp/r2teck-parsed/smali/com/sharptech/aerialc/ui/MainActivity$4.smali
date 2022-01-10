.class Lcom/sharptech/aerialc/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/MainActivity;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity$4;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 378
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity$4;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/ui/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 380
    check-cast p2, Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;

    .line 381
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity$4;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-virtual {p2}, Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;->getScreenRecordService()Lcom/sharptech/aerialc/service/ScreenRecordService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sharptech/aerialc/ui/MainActivity;->access$402(Lcom/sharptech/aerialc/ui/MainActivity;Lcom/sharptech/aerialc/service/ScreenRecordService;)Lcom/sharptech/aerialc/service/ScreenRecordService;

    .line 382
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/MainActivity$4;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-static {p2}, Lcom/sharptech/aerialc/ui/MainActivity;->access$400(Lcom/sharptech/aerialc/ui/MainActivity;)Lcom/sharptech/aerialc/service/ScreenRecordService;

    move-result-object p2

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/sharptech/aerialc/service/ScreenRecordService;->setConfig(III)V

    .line 383
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity$4;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/MainActivity;->access$400(Lcom/sharptech/aerialc/ui/MainActivity;)Lcom/sharptech/aerialc/service/ScreenRecordService;

    move-result-object p1

    iget-object p2, p0, Lcom/sharptech/aerialc/ui/MainActivity$4;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-virtual {p1, p2}, Lcom/sharptech/aerialc/service/ScreenRecordService;->setErrorListener(Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;)V

    const-string p1, "sunzhibin"

    const-string p2, "onServiceConnected"

    .line 384
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "sunzhibin"

    const-string v0, "onServiceDisconnected"

    .line 389
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
