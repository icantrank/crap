.class final Lcom/tencent/legu/stat/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/s;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/tencent/legu/stat/s;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/legu/stat/s;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/legu/stat/s;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The Throwable error message of StatService.reportException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/legu/stat/event/e;

    iget-object v1, p0, Lcom/tencent/legu/stat/s;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/legu/stat/s;->b:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/legu/stat/s;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-static {v2, v3, v4}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/legu/stat/StatSpecifyReportedInfo;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/legu/stat/s;->a:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/tencent/legu/stat/s;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/legu/stat/event/e;-><init>(Landroid/content/Context;IILjava/lang/Throwable;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    new-instance v1, Lcom/tencent/legu/stat/au;

    invoke-direct {v1, v0}, Lcom/tencent/legu/stat/au;-><init>(Lcom/tencent/legu/stat/event/f;)V

    invoke-virtual {v1}, Lcom/tencent/legu/stat/au;->a()V

    goto :goto_0
.end method