.class Lcom/sharptech/aerialc/service/UpdateService$1;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/service/UpdateService;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/service/UpdateService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/service/UpdateService;Landroid/content/Context;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sharptech/aerialc/service/UpdateService$1;->this$0:Lcom/sharptech/aerialc/service/UpdateService;

    iput-object p2, p0, Lcom/sharptech/aerialc/service/UpdateService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 2

    const-string v0, "sunzhibin"

    const-string v1, "onDownloadFailed"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadStart(Ljava/io/File;J)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 1

    const-string p1, "sunzhibin"

    const-string v0, "onDownloadSuccess"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloading(IJJ)V
    .locals 3

    const-string v0, "sunzhibin"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sharptech/aerialc/service/UpdateService$1;->this$0:Lcom/sharptech/aerialc/service/UpdateService;

    invoke-static {v0, p1}, Lcom/sharptech/aerialc/service/UpdateService;->access$102(Lcom/sharptech/aerialc/service/UpdateService;I)I

    .line 84
    iget-object v0, p0, Lcom/sharptech/aerialc/service/UpdateService$1;->this$0:Lcom/sharptech/aerialc/service/UpdateService;

    invoke-static {v0}, Lcom/sharptech/aerialc/service/UpdateService;->access$200(Lcom/sharptech/aerialc/service/UpdateService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.manchijie.freshshop.ACTION_APP_UPDATE_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "progress"

    .line 85
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "curLength"

    .line 86
    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "totalLength"

    .line 87
    invoke-virtual {p1, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onInstallFile(Ljava/io/File;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sharptech/aerialc/service/UpdateService$1;->this$0:Lcom/sharptech/aerialc/service/UpdateService;

    iget-object v1, p0, Lcom/sharptech/aerialc/service/UpdateService$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/sharptech/aerialc/service/UpdateService;->access$000(Lcom/sharptech/aerialc/service/UpdateService;Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
