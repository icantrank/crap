.class Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;
.super Ljava/lang/Thread;
.source "VideoNetWorkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->start(I)V
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

    .line 160
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$300(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->readFrame_i()[Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 179
    :try_start_0
    iget-object v4, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v4}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$400(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 181
    iget-object v3, p0, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource$2;->this$0:Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;

    invoke-static {v3}, Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;->access$508(Lcom/sharptech/aerialc/aerialapp/VideoNetWorkSource;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
