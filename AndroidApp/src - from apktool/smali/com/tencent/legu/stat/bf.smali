.class Lcom/tencent/legu/stat/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/f;

.field final synthetic b:Lcom/tencent/legu/stat/ba;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/bf;->b:Lcom/tencent/legu/stat/ba;

    iput-object p2, p0, Lcom/tencent/legu/stat/bf;->a:Lcom/tencent/legu/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/legu/stat/bf;->b:Lcom/tencent/legu/stat/ba;

    iget-object v1, p0, Lcom/tencent/legu/stat/bf;->a:Lcom/tencent/legu/stat/f;

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/f;)V

    return-void
.end method
