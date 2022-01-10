.class public Lcom/tencent/legu/stat/event/i;
.super Lcom/tencent/legu/stat/event/f;


# static fields
.field public static final a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {v0}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/event/i;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    sget-object v0, Lcom/tencent/legu/stat/event/i;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    const-string v1, "A9VH9B8L4GX4"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/legu/stat/event/i;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/legu/stat/event/f;-><init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "actky"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/i;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
