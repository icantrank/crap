.class final Lcom/tencent/legu/stat/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/ai;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/legu/stat/ai;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/tencent/legu/stat/ai;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/legu/stat/at;

    iget-object v2, p0, Lcom/tencent/legu/stat/ai;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/legu/stat/ai;->b:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/legu/stat/ai;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/legu/stat/at;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    const-string v2, "NetworkMonitorTask"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/legu/stat/ai;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
