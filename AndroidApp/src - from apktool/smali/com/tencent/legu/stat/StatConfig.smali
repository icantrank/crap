.class public Lcom/tencent/legu/stat/StatConfig;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static B:I

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:I

.field private static M:Ljava/lang/String;

.field private static N:I

.field private static O:J

.field private static P:J

.field private static volatile Q:Ljava/lang/String;

.field private static R:I

.field private static volatile S:I

.field private static T:I

.field private static U:I

.field private static V:Z

.field private static W:I

.field private static X:Z

.field private static Y:Ljava/lang/String;

.field private static Z:Z

.field static a:Lcom/tencent/legu/stat/f;

.field private static aa:Lcom/tencent/legu/stat/StatCustomLogger;

.field private static ab:Lcom/tencent/legu/stat/StatExceptionCallBack;

.field private static ac:Ljava/lang/String;

.field private static ad:Lorg/json/JSONObject;

.field private static ae:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static af:J

.field private static ag:Lcom/tencent/legu/stat/StatActionListener;

.field private static ah:Z

.field static b:Lcom/tencent/legu/stat/f;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z

.field static h:I

.field static i:J

.field public static isAutoExceptionCaught:Z

.field static j:Z

.field static volatile k:Ljava/lang/String;

.field static l:Z

.field static m:I

.field static n:J

.field static o:I

.field static p:Lcom/tencent/legu/stat/StatDataTransfer;

.field static q:Z

.field static r:Z

.field static s:Z

.field static t:J

.field private static u:Lcom/tencent/legu/stat/common/StatLogger;

.field private static v:Lcom/tencent/legu/stat/StatReportStrategy;

.field private static w:Z

.field private static x:Z

.field private static y:I

.field private static z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x2710

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getLogger()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/legu/stat/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/legu/stat/f;-><init>(I)V

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    new-instance v0, Lcom/tencent/legu/stat/f;

    invoke-direct {v0, v2}, Lcom/tencent/legu/stat/f;-><init>(I)V

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    sget-object v0, Lcom/tencent/legu/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/legu/stat/StatReportStrategy;

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->v:Lcom/tencent/legu/stat/StatReportStrategy;

    sput-boolean v3, Lcom/tencent/legu/stat/StatConfig;->w:Z

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->x:Z

    const/16 v0, 0x7530

    sput v0, Lcom/tencent/legu/stat/StatConfig;->y:I

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    const v0, 0x186a0

    sput v0, Lcom/tencent/legu/stat/StatConfig;->B:I

    sput v5, Lcom/tencent/legu/stat/StatConfig;->C:I

    const/16 v0, 0xa

    sput v0, Lcom/tencent/legu/stat/StatConfig;->D:I

    const/16 v0, 0x64

    sput v0, Lcom/tencent/legu/stat/StatConfig;->E:I

    sput v5, Lcom/tencent/legu/stat/StatConfig;->F:I

    sput v2, Lcom/tencent/legu/stat/StatConfig;->G:I

    const-string v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->c:Ljava/lang/String;

    const-string v0, "__HIBERNATE__TIME"

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->d:Ljava/lang/String;

    const-string v0, "__MTA_KILL__"

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->e:Ljava/lang/String;

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->H:Ljava/lang/String;

    const-string v0, "mta_channel"

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->K:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->f:Ljava/lang/String;

    const/16 v0, 0xb4

    sput v0, Lcom/tencent/legu/stat/StatConfig;->L:I

    sput-boolean v3, Lcom/tencent/legu/stat/StatConfig;->g:Z

    const/16 v0, 0x1f4

    sput v0, Lcom/tencent/legu/stat/StatConfig;->h:I

    sput-wide v6, Lcom/tencent/legu/stat/StatConfig;->i:J

    const/16 v0, 0x400

    sput v0, Lcom/tencent/legu/stat/StatConfig;->N:I

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->j:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/legu/stat/StatConfig;->O:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/legu/stat/StatConfig;->P:J

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->isAutoExceptionCaught:Z

    const-string v0, "pingma.qq.com:80"

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->k:Ljava/lang/String;

    const-string v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->Q:Ljava/lang/String;

    sput v3, Lcom/tencent/legu/stat/StatConfig;->R:I

    sput v3, Lcom/tencent/legu/stat/StatConfig;->S:I

    const/16 v0, 0x14

    sput v0, Lcom/tencent/legu/stat/StatConfig;->T:I

    sput v3, Lcom/tencent/legu/stat/StatConfig;->U:I

    sput-boolean v3, Lcom/tencent/legu/stat/StatConfig;->V:Z

    const/16 v0, 0x1000

    sput v0, Lcom/tencent/legu/stat/StatConfig;->W:I

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->X:Z

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->Y:Ljava/lang/String;

    sput-boolean v3, Lcom/tencent/legu/stat/StatConfig;->Z:Z

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->aa:Lcom/tencent/legu/stat/StatCustomLogger;

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->l:Z

    sput v3, Lcom/tencent/legu/stat/StatConfig;->m:I

    sput-wide v6, Lcom/tencent/legu/stat/StatConfig;->n:J

    const/16 v0, 0x200

    sput v0, Lcom/tencent/legu/stat/StatConfig;->o:I

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->p:Lcom/tencent/legu/stat/StatDataTransfer;

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->ab:Lcom/tencent/legu/stat/StatExceptionCallBack;

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->ac:Ljava/lang/String;

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->ad:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->ae:Ljava/util/HashSet;

    const-wide/16 v0, 0x320

    sput-wide v0, Lcom/tencent/legu/stat/StatConfig;->af:J

    sput-object v4, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    sput-boolean v3, Lcom/tencent/legu/stat/StatConfig;->q:Z

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->r:Z

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->s:Z

    sput-boolean v2, Lcom/tencent/legu/stat/StatConfig;->ah:Z

    const-wide/16 v0, 0x7

    sput-wide v0, Lcom/tencent/legu/stat/StatConfig;->t:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "_mta_ky_tag_"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/common/StatPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    const-string v1, "__INSTANT_EI_LIST__"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    const-string v1, "__DONT_REPORT_EI_LIST__"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->updateDontReportEventIdsSet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static declared-synchronized a(I)V
    .locals 2

    const-class v0, Lcom/tencent/legu/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->S:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(J)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/tencent/legu/stat/common/StatPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setEnableStatService(Z)V

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "MTA is disable for current SDK version"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/legu/stat/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget v0, p1, Lcom/tencent/legu/stat/f;->a:I

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget v1, v1, Lcom/tencent/legu/stat/f;->a:I

    if-ne v0, v1, :cond_1

    sput-object p1, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/legu/stat/f;->a:I

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget v1, v1, Lcom/tencent/legu/stat/f;->a:I

    if-ne v0, v1, :cond_0

    sput-object p1, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/tencent/legu/stat/f;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v0, p1, Lcom/tencent/legu/stat/f;->d:I

    if-eq v0, v4, :cond_7

    move v0, v2

    :goto_1
    iput v4, p1, Lcom/tencent/legu/stat/f;->d:I

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_0
    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "m"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/legu/stat/f;->c:Ljava/lang/String;

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/tencent/legu/stat/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/f;)V

    :cond_5
    iget v0, p1, Lcom/tencent/legu/stat/f;->a:I

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget v1, v1, Lcom/tencent/legu/stat/f;->a:I

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    iget-object v0, p1, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->b(Lorg/json/JSONObject;)V

    :cond_6
    invoke-static {p0, p1}, Lcom/tencent/legu/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/legu/stat/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/legu/stat/common/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_mta_ky_tag_"

    invoke-static {p0, v1, v0}, Lcom/tencent/legu/stat/common/StatPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget v2, v2, Lcom/tencent/legu/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    invoke-static {p0, v2, v0}, Lcom/tencent/legu/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/legu/stat/f;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget v2, v2, Lcom/tencent/legu/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    invoke-static {p0, v2, v0}, Lcom/tencent/legu/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/legu/stat/f;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v2, "rs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/legu/stat/StatReportStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->v:Lcom/tencent/legu/stat/StatReportStrategy;

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change to ReportStrategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/legu/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateReportStrategy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sendStrategy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/legu/stat/StatReportStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/legu/stat/StatReportStrategy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "rs not found."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addSkipSessionReportAppkey(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ae:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static b()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->C:I

    return v0
.end method

.method static b(I)V
    .locals 0

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->U:I

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match sleepTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minutes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->d:Ljava/lang/String;

    invoke-static {p0, v0, v4, v5}, Lcom/tencent/legu/stat/common/StatPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setEnableStatService(Z)V

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v4, "MTA is disable for current SDK version"

    invoke-virtual {v0, v4}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "sv"

    const-string v4, "2.3.1"

    invoke-static {v3, v0, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "match sdk version:2.3.1"

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :goto_2
    const-string v2, "md"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match MODEL:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_4
    const-string v2, "av"

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match app version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_5
    const-string v2, "mf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match MANUFACTURER:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_6
    const-string v2, "osv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match android SDK version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_7
    const-string v2, "ov"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match android SDK version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_8
    const-string v2, "ui"

    invoke-static {p0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/legu/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/legu/stat/common/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match imei:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/legu/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/legu/stat/common/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_9
    const-string v2, "mid"

    invoke-static {p0}, Lcom/tencent/legu/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/legu/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "match mid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tencent/legu/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_a
    if-eqz v0, :cond_0

    const-string v0, "2.3.1"

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSDKLongVersion(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method static b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    :cond_0
    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->z:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/legu/stat/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/legu/stat/StatConfig;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hibernateVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2.3.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSDKLongVersion(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "2.3.1"

    invoke-static {v2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSDKLongVersion(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static c()V
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->U:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/legu/stat/StatConfig;->U:I

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    if-nez v2, :cond_2

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method static d()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->U:I

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Wechat_Sdk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QQConnect"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static e()Lcom/tencent/legu/stat/StatExceptionCallBack;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ab:Lcom/tencent/legu/stat/StatExceptionCallBack;

    return-object v0
.end method

.method public static enableCommitEventAtBackground(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/legu/stat/e;

    invoke-direct {v0, p0}, Lcom/tencent/legu/stat/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatService;->addActionListener(Lcom/tencent/legu/stat/StatActionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatService;->removeActionListener(Lcom/tencent/legu/stat/StatActionListener;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->ag:Lcom/tencent/legu/stat/StatActionListener;

    goto :goto_0
.end method

.method static synthetic f()Lcom/tencent/legu/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    return-object v0
.end method

.method public static declared-synchronized getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/tencent/legu/stat/StatConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "AppKey can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public static getBackgroundDelayTimestamp()J
    .locals 2

    sget-wide v0, Lcom/tencent/legu/stat/StatConfig;->af:J

    return-wide v0
.end method

.method public static getCurSessionStatReportCount()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->S:I

    return v0
.end method

.method public static getCustomGlobalReportContent()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ad:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getCustomLogger()Lcom/tencent/legu/stat/StatCustomLogger;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->aa:Lcom/tencent/legu/stat/StatCustomLogger;

    return-object v0
.end method

.method public static getCustomProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCustomProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCustomUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "Context for getCustomUid is null."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->Y:Ljava/lang/String;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "MTA_CUSTOM_UID"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/common/StatPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->Y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->Y:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getDataTransfer()Lcom/tencent/legu/stat/StatDataTransfer;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->p:Lcom/tencent/legu/stat/StatDataTransfer;

    return-object v0
.end method

.method public static getFlushDBSpaceMS()J
    .locals 2

    sget-wide v0, Lcom/tencent/legu/stat/StatConfig;->n:J

    return-wide v0
.end method

.method public static declared-synchronized getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/tencent/legu/stat/StatConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->K:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/tencent/legu/stat/common/StatPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "installChannel can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/legu/mid/api/MidService;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMTAPreferencesFileName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->M:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxBatchReportCount()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->F:I

    return v0
.end method

.method public static getMaxDaySessionNumbers()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->T:I

    return v0
.end method

.method public static getMaxImportantDataSendRetryCount()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->E:I

    return v0
.end method

.method public static getMaxParallelTimmingEvents()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->N:I

    return v0
.end method

.method public static getMaxReportEventLength()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->W:I

    return v0
.end method

.method public static getMaxSendRetryCount()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->D:I

    return v0
.end method

.method public static getMaxSessionStatReportCount()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->R:I

    return v0
.end method

.method public static getMaxStoreEventCount()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->B:I

    return v0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/legu/mid/api/MidService;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMsPeriodForMethodsCalledLimitClear()J
    .locals 2

    sget-wide v0, Lcom/tencent/legu/stat/StatConfig;->i:J

    return-wide v0
.end method

.method public static getNumEventsCachedInMemory()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->m:I

    return v0
.end method

.method public static getNumEventsCommitPerSec()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->G:I

    return v0
.end method

.method public static getNumOfMethodsCalledLimit()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->h:I

    return v0
.end method

.method public static getQQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mta.acc.qq"

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/common/StatPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReportCompressedSize()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->o:I

    return v0
.end method

.method public static getSDKProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSDKProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget-object v0, v0, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find SDK Properties key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSendPeriodMinutes()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->L:I

    return v0
.end method

.method public static getSessionTimoutMillis()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->y:I

    return v0
.end method

.method public static getStatReportHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatReportUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatSendStrategy()Lcom/tencent/legu/stat/StatReportStrategy;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->v:Lcom/tencent/legu/stat/StatReportStrategy;

    return-object v0
.end method

.method public static getStoredRecordExpiredDays()J
    .locals 2

    sget-wide v0, Lcom/tencent/legu/stat/StatConfig;->t:J

    return-wide v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    invoke-virtual {v0, p0}, Lcom/tencent/legu/stat/f;->b(Landroid/content/Context;)Z

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    invoke-virtual {v0, p0}, Lcom/tencent/legu/stat/f;->b(Landroid/content/Context;)Z

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->a()V

    return-void
.end method

.method public static initNativeCrashReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatConfig.initNativeCrashReport() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/legu/stat/StatNativeCrashReport;->initNativeCrash(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAntoActivityLifecycleStat()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->q:Z

    return v0
.end method

.method public static isAutoExceptionCaught()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->isAutoExceptionCaught:Z

    return v0
.end method

.method public static isAutoTrackAppsEvent()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->s:Z

    return v0
.end method

.method public static isAutoTrackBackgroundEvent()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->r:Z

    return v0
.end method

.method public static isDebugEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->w:Z

    return v0
.end method

.method public static isEnableConcurrentProcess()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->X:Z

    return v0
.end method

.method public static isEnableReportWifiList()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->ah:Z

    return v0
.end method

.method public static isEnableSmartReporting()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->j:Z

    return v0
.end method

.method public static isEnableStatService()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->x:Z

    return v0
.end method

.method public static isEventIdInDontReportEventIdsSet(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isReportEventsByOrder()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->l:Z

    return v0
.end method

.method public static isXGProMode()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->Z:Z

    return v0
.end method

.method public static removeSkipSessionReportAppkey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ae:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setAntoActivityLifecycleStat(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->q:Z

    return-void
.end method

.method public static setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "ctx in StatConfig.setAppKey() is null"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "appkey in StatConfig.setAppKey() is null or exceed 256 bytes"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/tencent/legu/stat/StatConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    :cond_4
    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->c(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/legu/stat/StatConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "appkey in StatConfig.setAppKey() is null"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The length of appkey cann\'t exceed 256 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->I:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->ac:Ljava/lang/String;

    return-void
.end method

.method public static setAutoExceptionCaught(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->isAutoExceptionCaught:Z

    return-void
.end method

.method public static setAutoTrackAppsEvent(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->s:Z

    return-void
.end method

.method public static setAutoTrackBackgroundEvent(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->r:Z

    return-void
.end method

.method public static setBackgroundDelayTimestamp(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    sput-wide p0, Lcom/tencent/legu/stat/StatConfig;->af:J

    :goto_0
    return-void

    :cond_0
    const-string v0, "MtaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundDelayTimestamp falied, timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCustomGlobalReportContent(Lorg/json/JSONObject;)V
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->ad:Lorg/json/JSONObject;

    return-void
.end method

.method public static setCustomLogger(Lcom/tencent/legu/stat/StatCustomLogger;)V
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->aa:Lcom/tencent/legu/stat/StatCustomLogger;

    return-void
.end method

.method public static setCustomUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "Context for setCustomUid is null."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MTA_CUSTOM_UID"

    invoke-static {p0, v0, p1}, Lcom/tencent/legu/stat/common/StatPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tencent/legu/stat/StatConfig;->Y:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setDataTransfer(Lcom/tencent/legu/stat/StatDataTransfer;)V
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->p:Lcom/tencent/legu/stat/StatDataTransfer;

    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 1

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->w:Z

    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getLogger()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/legu/stat/common/StatLogger;->setDebugEnable(Z)V

    return-void
.end method

.method public static setEnableConcurrentProcess(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->X:Z

    return-void
.end method

.method public static setEnableReportWifiList(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->ah:Z

    return-void
.end method

.method public static setEnableSmartReporting(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->j:Z

    return-void
.end method

.method public static setEnableStatService(Z)V
    .locals 2

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->x:Z

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setFlushDBSpaceMS(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/tencent/legu/stat/StatConfig;->n:J

    :cond_0
    return-void
.end method

.method public static setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->K:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/tencent/legu/stat/common/StatPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInstallChannel(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatConfig;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->J:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setMTAPreferencesFileName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->M:Ljava/lang/String;

    return-void
.end method

.method public static setMaxBatchReportCount(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "setMaxBatchReportCount can not exceed the range of [2,1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->F:I

    goto :goto_0
.end method

.method public static setMaxDaySessionNumbers(I)V
    .locals 2

    if-gtz p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "maxDaySessionNumbers must be greater than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->T:I

    goto :goto_0
.end method

.method public static setMaxImportantDataSendRetryCount(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    sput p0, Lcom/tencent/legu/stat/StatConfig;->E:I

    :cond_0
    return-void
.end method

.method public static setMaxParallelTimmingEvents(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "setMaxParallelTimmingEvents can not exceed the range of [1, 4096]."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->N:I

    goto :goto_0
.end method

.method public static setMaxReportEventLength(I)V
    .locals 2

    if-gtz p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "maxReportEventLength on setMaxReportEventLength() must greater than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->W:I

    goto :goto_0
.end method

.method public static setMaxSendRetryCount(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "setMaxSendRetryCount can not exceed the range of [1,1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->D:I

    goto :goto_0
.end method

.method public static setMaxSessionStatReportCount(I)V
    .locals 2

    if-gez p0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "maxSessionStatReportCount cannot be less than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->R:I

    goto :goto_0
.end method

.method public static setMaxStoreEventCount(I)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7a120

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "setMaxStoreEventCount can not exceed the range of [0, 500000]."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->B:I

    goto :goto_0
.end method

.method public static setNativeCrashDebugEnable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/legu/stat/StatNativeCrashReport;->setNativeCrashDebugEnable(Z)V

    return-void
.end method

.method public static setNumEventsCachedInMemory(I)V
    .locals 0

    if-ltz p0, :cond_0

    sput p0, Lcom/tencent/legu/stat/StatConfig;->m:I

    :cond_0
    return-void
.end method

.method public static setNumEventsCommitPerSec(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/tencent/legu/stat/StatConfig;->G:I

    :cond_0
    return-void
.end method

.method public static setNumOfMethodsCalledLimit(IJ)V
    .locals 2

    sput p0, Lcom/tencent/legu/stat/StatConfig;->h:I

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sput-wide p1, Lcom/tencent/legu/stat/StatConfig;->i:J

    :cond_0
    return-void
.end method

.method public static setQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mta.acc.qq"

    invoke-static {p0, v0, p1}, Lcom/tencent/legu/stat/common/StatPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tencent/legu/stat/StatConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public static setReportCompressedSize(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/tencent/legu/stat/StatConfig;->o:I

    :cond_0
    return-void
.end method

.method public static setReportEventsByOrder(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->l:Z

    return-void
.end method

.method public static setSendPeriodMinutes(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2760

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->L:I

    goto :goto_0
.end method

.method public static setSessionTimoutMillis(I)V
    .locals 2

    const/16 v0, 0x3e8

    const v1, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/tencent/legu/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/legu/stat/StatConfig;->y:I

    goto :goto_0
.end method

.method public static setStatExCallBack(Lcom/tencent/legu/stat/StatExceptionCallBack;)V
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->ab:Lcom/tencent/legu/stat/StatExceptionCallBack;

    return-void
.end method

.method public static setStatReportUrl(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "statReportUrl cannot be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->Q:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->Q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatConfig;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setStatSendStrategy(Lcom/tencent/legu/stat/StatReportStrategy;)V
    .locals 3

    sput-object p0, Lcom/tencent/legu/stat/StatConfig;->v:Lcom/tencent/legu/stat/StatReportStrategy;

    sget-object v0, Lcom/tencent/legu/stat/StatReportStrategy;->PERIOD:Lcom/tencent/legu/stat/StatReportStrategy;

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->c:J

    :cond_0
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->u:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change to statSendStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setStoredRecordExpiredDays(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/tencent/legu/stat/StatConfig;->t:J

    :cond_0
    return-void
.end method

.method public static setXGProMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatConfig;->Z:Z

    return-void
.end method

.method public static shouldSkipSessionReport(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->ae:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static updateDontReportEventIdsSet(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    :cond_0
    sget-object v1, Lcom/tencent/legu/stat/StatConfig;->A:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
