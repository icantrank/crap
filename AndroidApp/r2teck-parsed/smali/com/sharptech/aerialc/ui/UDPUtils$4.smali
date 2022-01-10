.class Lcom/sharptech/aerialc/ui/UDPUtils$4;
.super Ljava/lang/Object;
.source "UDPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/UDPUtils;->handleDataThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/UDPUtils;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils$4;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$4;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    iget-boolean v0, v0, Lcom/sharptech/aerialc/ui/UDPUtils;->isListener:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$4;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$500(Lcom/sharptech/aerialc/ui/UDPUtils;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sharptech/aerialc/ui/bean/FrameBean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/UDPUtils$4;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v1, v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$600(Lcom/sharptech/aerialc/ui/UDPUtils;Lcom/sharptech/aerialc/ui/bean/FrameBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method
