.class public Lcom/tencent/legu/stat/event/m;
.super Lcom/tencent/legu/stat/event/f;


# static fields
.field private static o:I


# instance fields
.field private a:Lcom/tencent/legu/stat/common/a;

.field private n:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/tencent/legu/stat/event/m;->o:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/legu/stat/event/f;-><init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/m;->n:Lorg/json/JSONObject;

    new-instance v0, Lcom/tencent/legu/stat/common/a;

    invoke-direct {v0, p1}, Lcom/tencent/legu/stat/common/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/legu/stat/event/m;->a:Lcom/tencent/legu/stat/common/a;

    iput-object p3, p0, Lcom/tencent/legu/stat/event/m;->n:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->SESSION_ENV:Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    sget v0, Lcom/tencent/legu/stat/event/m;->o:I

    if-ne v0, v2, :cond_0

    const-string v0, "hs"

    sget v1, Lcom/tencent/legu/stat/event/m;->o:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/legu/stat/event/m;->o:I

    :cond_0
    iget-object v0, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    if-eqz v0, :cond_1

    const-string v0, "ut"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/common/DeviceInfo;->getUserType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/tencent/legu/stat/event/m;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v0, "cfg"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/m;->n:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/tencent/legu/stat/event/m;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->needCheckTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ncts"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/tencent/legu/stat/event/m;->a:Lcom/tencent/legu/stat/common/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/legu/stat/common/a;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    return v2
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "app"

    iget-object v1, p0, Lcom/tencent/legu/stat/event/m;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppList(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
