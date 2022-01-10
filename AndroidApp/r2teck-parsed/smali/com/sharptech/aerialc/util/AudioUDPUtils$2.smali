.class Lcom/sharptech/aerialc/util/AudioUDPUtils$2;
.super Ljava/lang/Object;
.source "AudioUDPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/util/AudioUDPUtils;->pushPCMData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/util/AudioUDPUtils;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$400(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$702(Lcom/sharptech/aerialc/util/AudioUDPUtils;J)J

    .line 175
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$800(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$800(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 177
    iget-object v1, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v1, v0}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$900(Lcom/sharptech/aerialc/util/AudioUDPUtils;[B)V

    const-string v0, "pushPCMData 2"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6267\u884c\u8017\u65f6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v4}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$700(Lcom/sharptech/aerialc/util/AudioUDPUtils;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " \u7f13\u5b58\u6570\u91cf\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sharptech/aerialc/util/AudioUDPUtils$2;->this$0:Lcom/sharptech/aerialc/util/AudioUDPUtils;

    invoke-static {v2}, Lcom/sharptech/aerialc/util/AudioUDPUtils;->access$800(Lcom/sharptech/aerialc/util/AudioUDPUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
