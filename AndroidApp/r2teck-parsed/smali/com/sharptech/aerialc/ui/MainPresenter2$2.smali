.class Lcom/sharptech/aerialc/ui/MainPresenter2$2;
.super Landroid/os/Handler;
.source "MainPresenter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/ui/MainPresenter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/MainPresenter2;Landroid/os/Looper;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 148
    :pswitch_1
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {p1, v1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$102(Lcom/sharptech/aerialc/ui/MainPresenter2;Z)Z

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {p1, v1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$102(Lcom/sharptech/aerialc/ui/MainPresenter2;Z)Z

    .line 145
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$300(Lcom/sharptech/aerialc/ui/MainPresenter2;)Lcom/sharptech/aerialc/ui/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/MainActivity;->takePicFail()V

    goto :goto_0

    .line 155
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    sput p1, Lcom/sharptech/aerialc/ui/MainPresenter2;->FPS:I

    goto :goto_0

    .line 151
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    .line 152
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$300(Lcom/sharptech/aerialc/ui/MainPresenter2;)Lcom/sharptech/aerialc/ui/MainActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :pswitch_5
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {p1, v1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$102(Lcom/sharptech/aerialc/ui/MainPresenter2;Z)Z

    .line 141
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$300(Lcom/sharptech/aerialc/ui/MainPresenter2;)Lcom/sharptech/aerialc/ui/MainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$200(Lcom/sharptech/aerialc/ui/MainPresenter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->takePicSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_6
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$2;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->start()V

    :goto_0
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
