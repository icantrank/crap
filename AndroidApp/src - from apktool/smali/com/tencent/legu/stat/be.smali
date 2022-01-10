.class Lcom/tencent/legu/stat/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/event/f;

.field final synthetic b:Lcom/tencent/legu/stat/StatDispatchCallback;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/legu/stat/ba;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/be;->e:Lcom/tencent/legu/stat/ba;

    iput-object p2, p0, Lcom/tencent/legu/stat/be;->a:Lcom/tencent/legu/stat/event/f;

    iput-object p3, p0, Lcom/tencent/legu/stat/be;->b:Lcom/tencent/legu/stat/StatDispatchCallback;

    iput-boolean p4, p0, Lcom/tencent/legu/stat/be;->c:Z

    iput-boolean p5, p0, Lcom/tencent/legu/stat/be;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/legu/stat/be;->e:Lcom/tencent/legu/stat/ba;

    iget-object v1, p0, Lcom/tencent/legu/stat/be;->a:Lcom/tencent/legu/stat/event/f;

    iget-object v2, p0, Lcom/tencent/legu/stat/be;->b:Lcom/tencent/legu/stat/StatDispatchCallback;

    iget-boolean v3, p0, Lcom/tencent/legu/stat/be;->c:Z

    iget-boolean v4, p0, Lcom/tencent/legu/stat/be;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V

    return-void
.end method
