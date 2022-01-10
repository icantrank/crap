.class Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;
.super Ljava/lang/Object;
.source "VideoNetWorkSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$000(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$000(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;-><init>(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;)V

    .line 57
    invoke-virtual {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1$1;->start()V

    .line 58
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$200(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$1;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v1}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$100(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
