.class final Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerExecutorPair"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field final listener:Lcom/google/common/util/concurrent/ServiceManager$Listener;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/ServiceManager$Listener;

    .line 708
    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 719
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while executing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with executor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
