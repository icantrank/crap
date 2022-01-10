.class public Lcom/tencent/legu/mid/api/MidService;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/legu/mid/api/MidService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/legu/mid/a/g;->a(Z)V

    return-void
.end method

.method public static getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/legu/mid/api/MidService;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/legu/mid/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMidRequestHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMidRequestUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEnableDebug()Z
    .locals 1

    invoke-static {}, Lcom/tencent/legu/mid/a/g;->a()Z

    move-result v0

    return v0
.end method

.method public static isEnableReportWifiList()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/mid/api/MidService;->a:Z

    return v0
.end method

.method public static isMidValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/legu/mid/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static requestMid(Landroid/content/Context;Lcom/tencent/legu/mid/api/MidCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error, callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, -0x2710

    const-string v1, "content is null!"

    invoke-interface {p1, v0, v1}, Lcom/tencent/legu/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/legu/mid/a/g;->a(Landroid/content/Context;Lcom/tencent/legu/mid/api/MidCallback;)V

    goto :goto_0
.end method

.method public static setEnableReportWifiList(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/mid/api/MidService;->a:Z

    return-void
.end method

.method public static setMidRequestUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
