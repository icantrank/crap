.class public Lcom/tencent/legu/stat/event/l;
.super Lcom/tencent/legu/stat/event/f;


# instance fields
.field a:Ljava/lang/Long;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 1

    invoke-direct {p0, p1, p4, p6}, Lcom/tencent/legu/stat/event/f;-><init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/l;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/tencent/legu/stat/event/l;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/legu/stat/event/l;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/legu/stat/event/l;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->PAGE_VIEW:Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pi"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/l;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rf"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/l;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/event/l;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "du"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/l;->a:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
