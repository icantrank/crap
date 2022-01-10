.class Lcom/tencent/legu/stat/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/legu/stat/StatDispatchCallback;

.field final synthetic c:Lcom/tencent/legu/stat/g;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/g;Ljava/util/List;Lcom/tencent/legu/stat/StatDispatchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/i;->c:Lcom/tencent/legu/stat/g;

    iput-object p2, p0, Lcom/tencent/legu/stat/i;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/legu/stat/i;->b:Lcom/tencent/legu/stat/StatDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/legu/stat/i;->c:Lcom/tencent/legu/stat/g;

    iget-object v1, p0, Lcom/tencent/legu/stat/i;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/legu/stat/i;->b:Lcom/tencent/legu/stat/StatDispatchCallback;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/legu/stat/g;->a(Ljava/util/List;Lcom/tencent/legu/stat/StatDispatchCallback;)V

    return-void
.end method
