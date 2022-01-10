.class Lcom/tencent/legu/stat/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/ax;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/ay;->a:Lcom/tencent/legu/stat/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .locals 0

    return-void
.end method

.method public onDispatchSuccess()V
    .locals 1

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->updateNextReportTime(Landroid/content/Context;)V

    return-void
.end method
