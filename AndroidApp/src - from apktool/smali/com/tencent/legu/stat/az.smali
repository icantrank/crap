.class Lcom/tencent/legu/stat/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/au;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/az;->a:Lcom/tencent/legu/stat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .locals 5

    invoke-static {}, Lcom/tencent/legu/stat/ba;->b()Lcom/tencent/legu/stat/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/stat/az;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v1}, Lcom/tencent/legu/stat/au;->a(Lcom/tencent/legu/stat/au;)Lcom/tencent/legu/stat/event/f;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/legu/stat/az;->a:Lcom/tencent/legu/stat/au;

    invoke-static {v3}, Lcom/tencent/legu/stat/au;->c(Lcom/tencent/legu/stat/au;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->d()V

    return-void
.end method

.method public onDispatchSuccess()V
    .locals 0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->c()V

    return-void
.end method
