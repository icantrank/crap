.class Lcom/tencent/legu/stat/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/au;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/av;->a:Lcom/tencent/legu/stat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .locals 0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->d()V

    return-void
.end method

.method public onDispatchSuccess()V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->c()V

    invoke-static {}, Lcom/tencent/legu/stat/ba;->b()Lcom/tencent/legu/stat/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/stat/ba;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxBatchReportCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/ba;->b()Lcom/tencent/legu/stat/ba;

    move-result-object v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxBatchReportCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/ba;->a(I)V

    :cond_0
    return-void
.end method
