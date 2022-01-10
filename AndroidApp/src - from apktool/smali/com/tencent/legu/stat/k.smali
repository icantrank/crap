.class Lcom/tencent/legu/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/legu/stat/StatFBDispatchCallback;

.field final synthetic d:Lcom/tencent/legu/stat/g;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/g;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatFBDispatchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/k;->d:Lcom/tencent/legu/stat/g;

    iput-object p2, p0, Lcom/tencent/legu/stat/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/legu/stat/k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/legu/stat/k;->c:Lcom/tencent/legu/stat/StatFBDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/legu/stat/k;->d:Lcom/tencent/legu/stat/g;

    iget-object v1, p0, Lcom/tencent/legu/stat/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/legu/stat/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/legu/stat/k;->c:Lcom/tencent/legu/stat/StatFBDispatchCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/legu/stat/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatFBDispatchCallback;)V

    return-void
.end method
