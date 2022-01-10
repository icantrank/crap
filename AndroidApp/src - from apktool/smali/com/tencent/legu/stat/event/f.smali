.class public abstract Lcom/tencent/legu/stat/event/f;
.super Ljava/lang/Object;


# static fields
.field protected static j:Ljava/lang/String;

.field protected static l:I


# instance fields
.field private a:Z

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:I

.field protected e:Lcom/tencent/legu/stat/common/DeviceInfo;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected k:Z

.field protected m:Landroid/content/Context;

.field private n:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/legu/stat/event/f;->j:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/tencent/legu/stat/event/f;->l:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->i:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/legu/stat/event/f;->k:Z

    iput-boolean v1, p0, Lcom/tencent/legu/stat/event/f;->a:Z

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->n:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    iput-object p1, p0, Lcom/tencent/legu/stat/event/f;->m:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/legu/stat/event/f;->c:J

    iput p2, p0, Lcom/tencent/legu/stat/event/f;->d:I

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->i:Ljava/lang/String;

    if-eqz p3, :cond_5

    iput-object p3, p0, Lcom/tencent/legu/stat/event/f;->n:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getInstallChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getInstallChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->h:Ljava/lang/String;

    :cond_1
    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->i:Ljava/lang/String;

    :cond_2
    invoke-virtual {p3}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->isImportant()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/legu/stat/event/f;->k:Z

    :goto_0
    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->getCustomUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/legu/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-virtual {p0}, Lcom/tencent/legu/stat/event/f;->a()Lcom/tencent/legu/stat/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/legu/stat/event/EventType;

    if-eq v0, v1, :cond_6

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getNextEventIndexNo(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/legu/stat/event/f;->f:I

    :goto_1
    sget-object v0, Lcom/tencent/legu/stat/event/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/legu/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/event/f;->j:Ljava/lang/String;

    sget-object v0, Lcom/tencent/legu/stat/event/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    sput-object v0, Lcom/tencent/legu/stat/event/f;->j:Ljava/lang/String;

    :cond_3
    sget v0, Lcom/tencent/legu/stat/event/f;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->hasRootAccess(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/legu/stat/event/f;->l:I

    :cond_4
    return-void

    :cond_5
    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/event/f;->h:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/legu/stat/event/EventType;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/event/EventType;->a()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/legu/stat/event/f;->f:I

    goto :goto_1
.end method


# virtual methods
.method public abstract a()Lcom/tencent/legu/stat/event/EventType;
.end method

.method public abstract a(Lorg/json/JSONObject;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "ky"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->b:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "et"

    invoke-virtual {p0}, Lcom/tencent/legu/stat/event/f;->a()Lcom/tencent/legu/stat/event/EventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/legu/stat/event/EventType;->a()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    if-eqz v2, :cond_0

    const-string v2, "ui"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-virtual {v3}, Lcom/tencent/legu/stat/common/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/common/DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mc"

    invoke-static {p1, v3, v2}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/legu/stat/event/f;->e:Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/common/DeviceInfo;->getUserType()I

    move-result v2

    const-string v3, "ut"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/legu/stat/event/f;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isTheFirstTimeActivate(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "ia"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "cui"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->g:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v2, "av"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->i:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "ch"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->h:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/legu/stat/event/f;->k:Z

    if-eqz v2, :cond_1

    const-string v2, "impt"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v2, p0, Lcom/tencent/legu/stat/event/f;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "ft"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "cch"

    const-string v3, "legu_"

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mid"

    sget-object v3, Lcom/tencent/legu/stat/event/f;->j:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "idx"

    iget v3, p0, Lcom/tencent/legu/stat/event/f;->f:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "si"

    iget v3, p0, Lcom/tencent/legu/stat/event/f;->d:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ts"

    iget-wide v3, p0, Lcom/tencent/legu/stat/event/f;->c:J

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "dts"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->m:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDiffTime(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "os"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "midver"

    const v3, 0x40666666    # 3.6f

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "new_mid"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/legu/mid/b/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pcn"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ov"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "md"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "jb"

    sget v3, Lcom/tencent/legu/stat/event/f;->l:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mf"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getCustomGlobalReportContent()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "cc"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->isEnableAutoMonitorActivityCycle()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    const-string v2, "ifg"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0, p1}, Lcom/tencent/legu/stat/event/f;->a(Lorg/json/JSONObject;)Z

    move-result v0

    :goto_2
    return v0

    :cond_5
    const-string v3, "av"

    invoke-static {p1, v3, v2}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appv"

    iget-object v3, p0, Lcom/tencent/legu/stat/event/f;->i:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/tencent/legu/stat/common/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/legu/stat/event/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/legu/stat/event/f;->c:J

    return-wide v0
.end method

.method public e()Lcom/tencent/legu/stat/StatSpecifyReportedInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/legu/stat/event/f;->n:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/legu/stat/event/f;->m:Landroid/content/Context;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/legu/stat/event/f;->k:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/legu/stat/event/f;->b(Lorg/json/JSONObject;)Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
