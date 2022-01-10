.class Lcom/tencent/legu/stat/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/au;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/ax;->a:Lcom/tencent/legu/stat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .locals 5

    invoke-static {}, Lcom/tencent/legu/stat/ba;->b()Lcom/tencent/legu/stat/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/stat/ax;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v1}, Lcom/tencent/legu/stat/au;->a(Lcom/tencent/legu/stat/au;)Lcom/tencent/legu/stat/event/f;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/legu/stat/ax;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v3}, Lcom/tencent/legu/stat/au;->c(Lcom/tencent/legu/stat/au;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->d()V

    return-void
.end method

.method public onDispatchSuccess()V
    .locals 5

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->c()V

    iget-object v0, p0, Lcom/tencent/legu/stat/ax;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v0}, Lcom/tencent/legu/stat/au;->a(Lcom/tencent/legu/stat/au;)Lcom/tencent/legu/stat/event/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/stat/event/f;->a()Lcom/tencent/legu/stat/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->SESSION_ENV:Lcom/tencent/legu/stat/event/EventType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->needReportApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "OnceEvent report"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/legu/stat/event/k;

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->r()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/legu/stat/ax;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v4}, Lcom/tencent/legu/stat/au;->a(Lcom/tencent/legu/stat/au;)Lcom/tencent/legu/stat/event/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/legu/stat/event/f;->e()Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/legu/stat/event/k;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    move-result-object v1

    new-instance v2, Lcom/tencent/legu/stat/ay;

    invoke-direct {v2, p0}, Lcom/tencent/legu/stat/ay;-><init>(Lcom/tencent/legu/stat/ax;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/legu/stat/g;->a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;)V

    :cond_0
    invoke-static {}, Lcom/tencent/legu/stat/ba;->b()Lcom/tencent/legu/stat/ba;

    move-result-object v0

    iget v0, v0, Lcom/tencent/legu/stat/ba;->a:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/stat/ax;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v0}, Lcom/tencent/legu/stat/au;->b(Lcom/tencent/legu/stat/au;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
