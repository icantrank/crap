.class public final Lcom/google/common/collect/Queues;
.super Ljava/lang/Object;
.source "Queues.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;",
            "Ljava/util/Collection<",
            "-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p3

    add-long/2addr v0, p3

    const/4 p3, 0x0

    :cond_0
    :goto_0
    if-ge p3, p2, :cond_2

    sub-int p4, p2, p3

    .line 280
    invoke-interface {p0, p1, p4}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p4

    add-int/2addr p3, p4

    if-ge p3, p2, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p4

    sub-long p4, v0, p4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p4, p5, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p3
.end method

.method public static drainUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;",
            "Ljava/util/Collection<",
            "-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p3

    add-long/2addr v0, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    sub-int p5, p2, p3

    .line 317
    :try_start_0
    invoke-interface {p0, p1, p5}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p3, p5

    if-ge p3, p2, :cond_0

    .line 322
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 p5, 0x0

    sub-long v2, v0, v2

    sget-object p5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, p5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p5, :cond_1

    goto :goto_2

    .line 331
    :cond_1
    :try_start_2
    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    const/4 p4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p4, :cond_2

    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw p0

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return p3
.end method

.method public static newArrayBlockingQueue(I)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newArrayDeque()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

.method public static newArrayDeque(Ljava/lang/Iterable;)Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 75
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 79
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method public static newConcurrentLinkedQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 102
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 106
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newLinkedBlockingDeque()Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingDeque(I)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingDeque(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation

    .line 142
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 146
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(I)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 179
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 183
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newPriorityBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 208
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 212
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newPriorityQueue()Ljava/util/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityQueue(Ljava/lang/Iterable;)Ljava/util/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation

    .line 234
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 238
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newSynchronousQueue()Ljava/util/concurrent/SynchronousQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/SynchronousQueue<",
            "TE;>;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    return-object v0
.end method

.method public static synchronizedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method
