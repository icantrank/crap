.class public Lcom/tencent/legu/stat/event/k;
.super Lcom/tencent/legu/stat/event/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/legu/stat/event/m;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->ONCE:Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/tencent/legu/stat/event/m;->a(Lorg/json/JSONObject;)Z

    invoke-virtual {p0, p1}, Lcom/tencent/legu/stat/event/k;->c(Lorg/json/JSONObject;)V

    const-string v0, "ft"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return v1
.end method
