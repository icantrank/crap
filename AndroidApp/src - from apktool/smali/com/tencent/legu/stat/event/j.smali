.class public Lcom/tencent/legu/stat/event/j;
.super Lcom/tencent/legu/stat/event/f;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/legu/stat/event/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/legu/stat/event/f;-><init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    iput-object v0, p0, Lcom/tencent/legu/stat/event/j;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/legu/stat/event/j;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/legu/stat/NetworkManager;->getInstance(Landroid/content/Context;)Lcom/tencent/legu/stat/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/stat/NetworkManager;->getCurNetwrokName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/j;->n:Ljava/lang/String;

    sget-object v0, Lcom/tencent/legu/stat/event/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/event/j;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->NETWORK_MONITOR:Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/event/j;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "op"

    sget-object v1, Lcom/tencent/legu/stat/event/j;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/j;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sp"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/j;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    return v0
.end method
