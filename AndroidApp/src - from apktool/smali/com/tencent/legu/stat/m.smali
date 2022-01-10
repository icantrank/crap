.class final Lcom/tencent/legu/stat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/StatGameUser;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/StatGameUser;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/m;->a:Lcom/tencent/legu/stat/StatGameUser;

    iput-object p2, p0, Lcom/tencent/legu/stat/m;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/legu/stat/m;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/legu/stat/m;->a:Lcom/tencent/legu/stat/StatGameUser;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The gameUser of StatService.reportGameUser() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/legu/stat/m;->a:Lcom/tencent/legu/stat/StatGameUser;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/StatGameUser;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/stat/m;->a:Lcom/tencent/legu/stat/StatGameUser;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/StatGameUser;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The account of gameUser on StatService.reportGameUser() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Lcom/tencent/legu/stat/event/g;

    iget-object v1, p0, Lcom/tencent/legu/stat/m;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/legu/stat/m;->b:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/legu/stat/m;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-static {v2, v3, v4}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/legu/stat/StatSpecifyReportedInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/legu/stat/m;->a:Lcom/tencent/legu/stat/StatGameUser;

    iget-object v4, p0, Lcom/tencent/legu/stat/m;->c:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/legu/stat/event/g;-><init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatGameUser;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    new-instance v1, Lcom/tencent/legu/stat/au;

    invoke-direct {v1, v0}, Lcom/tencent/legu/stat/au;-><init>(Lcom/tencent/legu/stat/event/f;)V

    invoke-virtual {v1}, Lcom/tencent/legu/stat/au;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/legu/stat/m;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
