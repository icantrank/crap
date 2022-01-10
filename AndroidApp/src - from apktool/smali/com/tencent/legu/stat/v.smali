.class final Lcom/tencent/legu/stat/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatDispatchCallback;


# direct methods
.method constructor <init>()V
    .locals 0

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
