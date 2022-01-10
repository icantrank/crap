.class Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;
.super Ljava/lang/Object;
.source "MediaCodecWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;->this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;->this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->access$200(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;)Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;->this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;

    iget-object v2, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;->this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;

    .line 362
    invoke-static {v2}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;->access$100(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 361
    invoke-interface {v0, v1, v2}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$OutputFormatChangedListener;->outputFormatChanged(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;Landroid/media/MediaFormat;)V

    return-void
.end method
