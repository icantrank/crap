.class Lcom/tencent/legu/stat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/legu/stat/StatFBDispatchCallback;

.field final synthetic d:Lcom/tencent/legu/stat/g;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/g;IILcom/tencent/legu/stat/StatFBDispatchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/j;->d:Lcom/tencent/legu/stat/g;

    iput p2, p0, Lcom/tencent/legu/stat/j;->a:I

    iput p3, p0, Lcom/tencent/legu/stat/j;->b:I

    iput-object p4, p0, Lcom/tencent/legu/stat/j;->c:Lcom/tencent/legu/stat/StatFBDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/legu/stat/j;->d:Lcom/tencent/legu/stat/g;

    iget v1, p0, Lcom/tencent/legu/stat/j;->a:I

    iget v2, p0, Lcom/tencent/legu/stat/j;->b:I

    iget-object v3, p0, Lcom/tencent/legu/stat/j;->c:Lcom/tencent/legu/stat/StatFBDispatchCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/legu/stat/g;->a(IILcom/tencent/legu/stat/StatFBDispatchCallback;)V

    return-void
.end method
