.class final Lcom/tencent/legu/stat/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

.field final synthetic d:Z


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/legu/stat/al;->a:J

    iput-object p3, p0, Lcom/tencent/legu/stat/al;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/legu/stat/al;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    iput-boolean p5, p0, Lcom/tencent/legu/stat/al;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackBackground duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/legu/stat/al;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/tencent/legu/stat/al;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/legu/stat/al;->a:J

    :goto_0
    new-instance v2, Lcom/tencent/legu/stat/event/b;

    iget-object v3, p0, Lcom/tencent/legu/stat/al;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/legu/stat/al;->b:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/legu/stat/al;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-static {v4, v5, v6}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/legu/stat/StatSpecifyReportedInfo;)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/stat/al;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/tencent/legu/stat/event/b;-><init>(Landroid/content/Context;ILjava/lang/Long;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    iget-boolean v0, p0, Lcom/tencent/legu/stat/al;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/legu/stat/au;

    invoke-direct {v0, v2}, Lcom/tencent/legu/stat/au;-><init>(Lcom/tencent/legu/stat/event/f;)V

    invoke-virtual {v0}, Lcom/tencent/legu/stat/au;->a()V

    :goto_1
    return-void

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/legu/stat/al;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/legu/stat/al;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1
.end method