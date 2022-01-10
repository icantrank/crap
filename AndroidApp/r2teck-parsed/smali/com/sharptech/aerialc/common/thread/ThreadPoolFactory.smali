.class public Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;
.super Ljava/lang/Object;
.source "ThreadPoolFactory.java"


# static fields
.field static mDownLoadPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

.field static mNormalPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getDownLoadPool()Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;
    .locals 5

    .line 39
    sget-object v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mDownLoadPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mDownLoadPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x3

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;-><init>(IIJ)V

    sput-object v1, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mDownLoadPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mDownLoadPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    return-object v0
.end method

.method private static getFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 56
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalPool()Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;
    .locals 5

    .line 23
    sget-object v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mNormalPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mNormalPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    const-wide/16 v2, 0x2710

    const/16 v4, 0xa

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;-><init>(IIJ)V

    sput-object v1, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mNormalPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/sharptech/aerialc/common/thread/ThreadPoolFactory;->mNormalPool:Lcom/sharptech/aerialc/common/thread/ThreadPoolProxy;

    return-object v0
.end method

.method private static getScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 86
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static getSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 96
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
