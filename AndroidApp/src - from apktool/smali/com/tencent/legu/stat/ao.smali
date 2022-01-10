.class final Lcom/tencent/legu/stat/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/stat/StatActionListener;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/ao;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/stat/ao;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-static {}, Lcom/tencent/legu/stat/common/d;->a()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V

    return-void
.end method

.method public onBecameForeground()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/StatServiceImpl;->a(J)J

    return-void
.end method
