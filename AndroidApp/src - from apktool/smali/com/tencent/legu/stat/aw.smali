.class Lcom/tencent/legu/stat/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/au;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/aw;->a:Lcom/tencent/legu/stat/au;

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
    .locals 0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->c()V

    return-void
.end method
