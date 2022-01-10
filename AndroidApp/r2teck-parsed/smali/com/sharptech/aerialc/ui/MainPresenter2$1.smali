.class Lcom/sharptech/aerialc/ui/MainPresenter2$1;
.super Ljava/lang/Object;
.source "MainPresenter2.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/sharptech/aerialc/ui/MainPresenter2;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$1;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$1;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    const-string v1, "192.168,12,1"

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/MainPresenter2$1;->this$0:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-static {v2}, Lcom/sharptech/aerialc/ui/MainPresenter2;->access$000(Lcom/sharptech/aerialc/ui/MainPresenter2;)Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/16 v3, 0x2328

    invoke-virtual {v0, v1, v3, v2}, Lcom/sharptech/aerialc/ui/MainPresenter2;->startRtp(Ljava/lang/String;ILjava/lang/Object;)I

    return-void
.end method
