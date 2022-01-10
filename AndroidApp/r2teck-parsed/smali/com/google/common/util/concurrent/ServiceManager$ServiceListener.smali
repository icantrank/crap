.class final Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceListener"
.end annotation


# instance fields
.field final service:Lcom/google/common/util/concurrent/Service;

.field final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final watch:Lcom/google/common/base/Stopwatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "watch"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Lcom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lcom/google/common/base/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    .line 599
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    .line 600
    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 4

    .line 649
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has failed in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p2, p2, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 653
    :try_start_0
    sget-object p2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 654
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 656
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$300(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 659
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 658
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p2, p2, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 659
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw p1
.end method

.method finishedStarting(Z)V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 673
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startupTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$400(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public running()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    const/4 v0, 0x1

    .line 612
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 615
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    return-void

    :catchall_0
    move-exception v0

    .line 614
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 615
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method start()V
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 680
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method startTimer()V
    .locals 5

    .line 685
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 688
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Starting {0}"

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public starting()V
    .locals 0

    .line 606
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    return-void
.end method

.method declared-synchronized startupTimeMillis()J
    .locals 3

    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 697
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 694
    monitor-exit p0

    throw v0
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 620
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 621
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    const/4 p1, 0x0

    .line 623
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 626
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 625
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 626
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 3

    .line 632
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has terminated. Previous state was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 635
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    const/4 p1, 0x0

    .line 639
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 644
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 643
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 644
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw p1
.end method
