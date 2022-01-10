.class Lcom/sharptech/aerialc/protocol/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/protocol/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/protocol/MainActivity;Landroid/os/Looper;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 331
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 369
    :pswitch_0
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1000(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 365
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    .line 366
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 348
    :pswitch_2
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    const-string v0, "\u6b63\u5728\u4fdd\u5b58\u5f55\u50cf"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 349
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$900(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1000(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 353
    :pswitch_3
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1000(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$900(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$900(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 357
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 358
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    .line 359
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f55\u50cf\u4fdd\u5b58\u5931\u8d25:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    const-string v0, "\u5f55\u50cf\u4fdd\u5b58\u6210\u529f"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    :pswitch_4
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$800(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$800(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/sharptech/aerialc/protocol/MainActivity$2$1;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/protocol/MainActivity$2$1;-><init>(Lcom/sharptech/aerialc/protocol/MainActivity$2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v0, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 334
    :pswitch_5
    iget-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/protocol/MainActivity;->start()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
