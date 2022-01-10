.class public Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;
.super Ljava/lang/Object;
.source "ThreadPoolProxy.java"


# instance fields
.field mCorePoolSize:I

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field mKeepAliveTime:J

.field mMaximumPoolSize:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mCorePoolSize:I

    .line 28
    iput p2, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mMaximumPoolSize:I

    .line 29
    iput-wide p3, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mKeepAliveTime:J

    return-void
.end method

.method private initThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 11

    .line 33
    iget-object v0, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 37
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    .line 41
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mCorePoolSize:I

    iget v4, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mMaximumPoolSize:I

    iget-wide v5, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mKeepAliveTime:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->initThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    iget-object v0, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->initThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    iget-object v0, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->initThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 75
    iget-object v0, p0, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
