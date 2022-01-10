.class Lcom/sharptech/aerialc/protocol/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/protocol/MainActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sharptech/aerialc/protocol/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/protocol/MainActivity$2;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2$1;->this$1:Lcom/sharptech/aerialc/protocol/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$2$1;->this$1:Lcom/sharptech/aerialc/protocol/MainActivity$2;

    iget-object v0, v0, Lcom/sharptech/aerialc/protocol/MainActivity$2;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$800(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
