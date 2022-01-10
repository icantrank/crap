.class Lcom/sharptech/aerialc/ui/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/MainActivity$1;->onRecordError(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sharptech/aerialc/ui/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/MainActivity$1;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity$1$1;->this$1:Lcom/sharptech/aerialc/ui/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity$1$1;->this$1:Lcom/sharptech/aerialc/ui/MainActivity$1;

    iget-object v0, v0, Lcom/sharptech/aerialc/ui/MainActivity$1;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/MainActivity;->access$000(Lcom/sharptech/aerialc/ui/MainActivity;)Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setCtvChangePicVideoStatus(Z)V

    .line 129
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MainActivity$1$1;->this$1:Lcom/sharptech/aerialc/ui/MainActivity$1;

    iget-object v1, v1, Lcom/sharptech/aerialc/ui/MainActivity$1;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-virtual {v1}, Lcom/sharptech/aerialc/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/MainActivity$1$1;->this$1:Lcom/sharptech/aerialc/ui/MainActivity$1;

    iget-object v2, v2, Lcom/sharptech/aerialc/ui/MainActivity$1;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    const v3, 0x7f0d006a

    invoke-virtual {v2, v3}, Lcom/sharptech/aerialc/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
