.class public Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOrientationDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/base/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/sharptech/aerialc/base/BaseActivity;Landroid/content/Context;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;->this$0:Lcom/sharptech/aerialc/base/BaseActivity;

    .line 85
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const-string v0, "MyOrientationDetector "

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;->this$0:Lcom/sharptech/aerialc/base/BaseActivity;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/sharptech/aerialc/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 111
    invoke-static {}, Lcom/sharptech/aerialc/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Default Rotation!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object p1, p0, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;->this$0:Lcom/sharptech/aerialc/base/BaseActivity;

    iput v0, p1, Lcom/sharptech/aerialc/base/BaseActivity;->mDistance:I

    .line 108
    invoke-static {}, Lcom/sharptech/aerialc/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ROTATION_270"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-static {}, Lcom/sharptech/aerialc/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ROTATION_180"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {}, Lcom/sharptech/aerialc/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ROTATION_90"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;->this$0:Lcom/sharptech/aerialc/base/BaseActivity;

    iput v0, p1, Lcom/sharptech/aerialc/base/BaseActivity;->mDistance:I

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-static {}, Lcom/sharptech/aerialc/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Rotation_0"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
