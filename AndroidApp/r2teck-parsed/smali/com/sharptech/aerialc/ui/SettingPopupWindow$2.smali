.class Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;
.super Landroid/os/Handler;
.source "SettingPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/ui/SettingPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/SettingPopupWindow;Landroid/os/Looper;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 233
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 234
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->access$200(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->access$200(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;->onDialogHideShow(Z)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->dismiss()V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    iget-object p1, p1, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    iget-object p1, p1, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->access$200(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->access$200(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;->onRecordIng()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
