.class public Lcom/tencent/legu/stat/StatServiceImpl;
.super Ljava/lang/Object;


# static fields
.field private static volatile A:J

.field private static B:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

.field static volatile a:I

.field static volatile b:J

.field static volatile c:J

.field private static d:Landroid/os/Handler;

.field private static volatile e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/legu/stat/event/d;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:J

.field private static volatile i:J

.field private static volatile j:J

.field private static k:Ljava/lang/String;

.field private static volatile l:I

.field private static volatile m:Ljava/lang/String;

.field private static volatile n:Ljava/lang/String;

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lcom/tencent/legu/stat/common/StatLogger;

.field private static r:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile s:Z

.field private static t:Landroid/content/Context;

.field private static volatile u:Z

.field private static volatile v:Z

.field private static volatile w:Z

.field private static x:Landroid/os/Handler;

.field private static y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/StatActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->g:Ljava/util/Map;

    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->h:J

    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->i:J

    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->j:J

    const-string v0, ""

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->k:Ljava/lang/String;

    sput v5, Lcom/tencent/legu/stat/StatServiceImpl;->l:I

    const-string v0, ""

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->p:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getLogger()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    sput-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-boolean v6, Lcom/tencent/legu/stat/StatServiceImpl;->s:Z

    sput v5, Lcom/tencent/legu/stat/StatServiceImpl;->a:I

    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->b:J

    sput-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->c:J

    sput-boolean v5, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    sput-boolean v5, Lcom/tencent/legu/stat/StatServiceImpl;->v:Z

    sput-boolean v6, Lcom/tencent/legu/stat/StatServiceImpl;->w:Z

    sput-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->x:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->y:Ljava/util/List;

    sput-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->z:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->A:J

    sput-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->B:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;ZLcom/tencent/legu/stat/StatSpecifyReportedInfo;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz p1, :cond_b

    sget-wide v5, Lcom/tencent/legu/stat/StatServiceImpl;->i:J

    sub-long v5, v3, v5

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getSessionTimoutMillis()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_b

    move v0, v1

    :goto_0
    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->i:J

    sget-wide v5, Lcom/tencent/legu/stat/StatServiceImpl;->j:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getTomorrowStartMilliseconds()J

    move-result-wide v5

    sput-wide v5, Lcom/tencent/legu/stat/StatServiceImpl;->j:J

    :cond_0
    sget-wide v5, Lcom/tencent/legu/stat/StatServiceImpl;->j:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getTomorrowStartMilliseconds()J

    move-result-wide v3

    sput-wide v3, Lcom/tencent/legu/stat/StatServiceImpl;->j:J

    invoke-static {p0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/legu/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/stat/common/DeviceInfo;->getUserType()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/legu/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/DeviceInfo;->setUserType(I)V

    :cond_1
    invoke-static {v2}, Lcom/tencent/legu/stat/StatConfig;->b(I)V

    sput v2, Lcom/tencent/legu/stat/StatServiceImpl;->a:I

    invoke-static {v2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDateString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->k:Ljava/lang/String;

    move v0, v1

    :cond_2
    sget-object v3, Lcom/tencent/legu/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isSpecifyReportedValid(Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/legu/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget-object v4, Lcom/tencent/legu/stat/StatServiceImpl;->p:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isSpecifyReportedValid(Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->d()I

    move-result v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxDaySessionNumbers()I

    move-result v4

    if-ge v0, v4, :cond_8

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->checkFirstTimeActivate(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    :cond_4
    :goto_2
    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->s:Z

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->p:Ljava/util/Map;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    :cond_6
    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->s:Z

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isSpecifyReportedValid(Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->d(Landroid/content/Context;)V

    :cond_7
    sput-boolean v2, Lcom/tencent/legu/stat/StatServiceImpl;->s:Z

    sget v0, Lcom/tencent/legu/stat/StatServiceImpl;->l:I

    return v0

    :cond_8
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v4, "Exceed StatConfig.getMaxDaySessionNumbers()."

    invoke-virtual {v0, v4}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    invoke-static {p0, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    goto :goto_2

    :cond_a
    move v1, v2

    goto :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/legu/stat/StatServiceImpl;->A:J

    return-wide p0
.end method

.method static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatServiceImpl;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/tencent/legu/stat/StatServiceImpl;

    monitor-enter v1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "StatService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDateString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/legu/stat/StatConfig;->i:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/tencent/legu/stat/StatServiceImpl;->h:J

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/l;

    invoke-direct {v3, v0}, Lcom/tencent/legu/stat/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;JLcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V
    .locals 7

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackBackground() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v6, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/legu/stat/al;

    move-wide v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/legu/stat/al;-><init>(JLandroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/tencent/legu/stat/StatAccount;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;Lcom/tencent/legu/stat/StatAccount;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "start new session."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/tencent/legu/stat/StatServiceImpl;->l:I

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getNextSessionID()I

    move-result v0

    sput v0, Lcom/tencent/legu/stat/StatServiceImpl;->l:I

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->a(I)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->c()V

    new-instance v0, Lcom/tencent/legu/stat/event/m;

    sget v1, Lcom/tencent/legu/stat/StatServiceImpl;->l:I

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/tencent/legu/stat/event/m;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0}, Lcom/tencent/legu/stat/event/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->shouldSkipSessionReport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appkey :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skip session report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v1, Lcom/tencent/legu/stat/au;

    invoke-direct {v1, v0}, Lcom/tencent/legu/stat/au;-><init>(Lcom/tencent/legu/stat/event/f;)V

    invoke-virtual {v1}, Lcom/tencent/legu/stat/au;->a()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportSdkSelfException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/r;

    invoke-direct {v2, v0, p1}, Lcom/tencent/legu/stat/r;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a()Z
    .locals 2

    sget v0, Lcom/tencent/legu/stat/StatServiceImpl;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->b:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatServiceImpl;->w:Z

    return p0
.end method

.method public static addActionListener(Lcom/tencent/legu/stat/StatActionListener;)V
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->y:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/legu/stat/StatServiceImpl;->h:J

    return-wide p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatServiceImpl;->m:Ljava/lang/String;

    return-object p0
.end method

.method static b()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget v2, v2, Lcom/tencent/legu/stat/f;->d:I

    if-eqz v2, :cond_0

    const-string v2, "v"

    sget-object v3, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget v3, v3, Lcom/tencent/legu/stat/f;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    iget v2, v2, Lcom/tencent/legu/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget v2, v2, Lcom/tencent/legu/stat/f;->d:I

    if-eqz v2, :cond_1

    const-string v2, "v"

    sget-object v3, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget v3, v3, Lcom/tencent/legu/stat/f;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    iget v2, v2, Lcom/tencent/legu/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/tencent/legu/stat/StatAccount;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/legu/stat/event/a;

    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/legu/stat/StatSpecifyReportedInfo;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/legu/stat/event/a;-><init>(Landroid/content/Context;ILcom/tencent/legu/stat/StatAccount;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    new-instance v1, Lcom/tencent/legu/stat/au;

    invoke-direct {v1, v0}, Lcom/tencent/legu/stat/au;-><init>(Lcom/tencent/legu/stat/event/f;)V

    invoke-virtual {v1}, Lcom/tencent/legu/stat/au;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/ag;

    invoke-direct {v2, v0, p1}, Lcom/tencent/legu/stat/ag;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/tencent/legu/stat/StatServiceImpl;->B:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackBackground lastForegroundTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/legu/stat/StatServiceImpl;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    sget-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->r:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/legu/stat/StatServiceImpl;->A:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getBackgroundDelayTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    invoke-static {v2, v0, v1, p1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;JLcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->A:J

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/ah;

    invoke-direct {v2, p0, v0, p2}, Lcom/tencent/legu/stat/ah;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->c:Ljava/lang/String;

    invoke-static {p0, v0, v8, v9}, Lcom/tencent/legu/stat/common/StatPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "2.3.1"

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSDKLongVersion(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MTA is disable for current version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",wakeup version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    move v0, v1

    :cond_0
    sget-object v2, Lcom/tencent/legu/stat/StatConfig;->d:Ljava/lang/String;

    invoke-static {p0, v2, v8, v9}, Lcom/tencent/legu/stat/common/StatPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTA is disable for current time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",wakeup time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->setEnableStatService(Z)V

    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/tencent/legu/stat/StatServiceImpl;->v:Z

    return p0
.end method

.method static c(Landroid/content/Context;)Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/legu/stat/StatServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setEnableStatService(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tencent/legu/stat/StatServiceImpl;->n:Ljava/lang/String;

    return-object p0
.end method

.method static c()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/tencent/legu/stat/StatServiceImpl;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->b:J

    return-void
.end method

.method public static commitEvents(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitEvents, maxNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    if-lt p1, v1, :cond_4

    if-nez p1, :cond_5

    :cond_4
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/tencent/legu/stat/NetworkManager;->getInstance(Landroid/content/Context;)Lcom/tencent/legu/stat/NetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/legu/stat/NetworkManager;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/af;

    invoke-direct {v2, v0, p1}, Lcom/tencent/legu/stat/af;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static d()V
    .locals 2

    sget v0, Lcom/tencent/legu/stat/StatServiceImpl;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/legu/stat/StatServiceImpl;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->b:J

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    return-void
.end method

.method static d(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/t;

    invoke-direct {v1, p0}, Lcom/tencent/legu/stat/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    return-object v0
.end method

.method static e(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.sendNetworkDetector() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/legu/stat/event/i;

    invoke-direct {v1, v0}, Lcom/tencent/legu/stat/event/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    move-result-object v0

    new-instance v2, Lcom/tencent/legu/stat/v;

    invoke-direct {v2}, Lcom/tencent/legu/stat/v;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/legu/stat/g;->a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f()Lcom/tencent/legu/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    return-object v0
.end method

.method static f(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->c:J

    const-string v0, "last_period_ts"

    sget-wide v1, Lcom/tencent/legu/stat/StatServiceImpl;->c:J

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/legu/stat/common/StatPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    return-void
.end method

.method public static flushDataToDB(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/tencent/legu/stat/StatConfig;->m:I

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/stat/ba;->c()V

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getFeedBackMessage(Landroid/content/Context;IILcom/tencent/legu/stat/StatFBDispatchCallback;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.getFeedBackMessage() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/legu/stat/g;->b(IILcom/tencent/legu/stat/StatFBDispatchCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->u()V

    return-void
.end method

.method static synthetic i()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->o:Ljava/util/Map;

    return-object v0
.end method

.method public static inerTrackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/w;

    invoke-direct {v2, v0, p0, p2}, Lcom/tencent/legu/stat/w;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static isBackground()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableAutoMonitorActivityCycle()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    return v0
.end method

.method public static isForeground()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->v:Z

    return v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->v:Z

    return v0
.end method

.method static synthetic m()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic n()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->y:Ljava/util/List;

    return-object v0
.end method

.method public static onLowMemory(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/p;

    invoke-direct {v1, p0}, Lcom/tencent/legu/stat/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/tencent/legu/stat/StatServiceImpl;->trackEndPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/tencent/legu/stat/StatServiceImpl;->trackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static onStop(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/o;

    invoke-direct {v2, v0}, Lcom/tencent/legu/stat/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic p()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->w:Z

    return v0
.end method

.method public static postFeedBackFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatFBDispatchCallback;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.postFeedBackFiles() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/legu/stat/g;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatFBDispatchCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic q()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r()I
    .locals 1

    sget v0, Lcom/tencent/legu/stat/StatServiceImpl;->l:I

    return v0
.end method

.method public static registerActivityLifecycleAutoStat(Landroid/app/Application;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    sput-object p1, Lcom/tencent/legu/stat/StatServiceImpl;->B:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->x:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->x:Landroid/os/Handler;

    :cond_2
    const-class v1, Lcom/tencent/legu/stat/StatServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    if-eqz v0, :cond_3

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/tencent/legu/stat/am;

    invoke-direct {v0, p1}, Lcom/tencent/legu/stat/am;-><init>(Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    new-instance v2, Lcom/tencent/legu/stat/ao;

    invoke-direct {v2, p1}, Lcom/tencent/legu/stat/ao;-><init>(Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Lcom/tencent/legu/stat/StatServiceImpl;->addActionListener(Lcom/tencent/legu/stat/StatActionListener;)V

    invoke-static {p0, v0}, Lcom/tencent/legu/stat/lifecycle/MtaActivityLifeCycle;->registerActivityLifecycleCallbacks(Landroid/app/Application;Lcom/tencent/legu/stat/lifecycle/MtaActivityLifecycleCallback;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAutoMonitorActivityCycle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isAntoActivityLifecycleStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isAntoActivityLifecycleStat()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static removeActionListener(Lcom/tencent/legu/stat/StatActionListener;)V
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->y:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static replyFeedBackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatFBDispatchCallback;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.replyFeedBackMessage() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/legu/stat/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatFBDispatchCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static reportAccount(Landroid/content/Context;Lcom/tencent/legu/stat/StatAccount;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "context is null in reportAccount."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/aq;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/legu/stat/aq;-><init>(Lcom/tencent/legu/stat/StatAccount;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/legu/stat/StatAppMonitor;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportAppMonitorStat() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/legu/stat/StatAppMonitor;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/legu/stat/StatAppMonitor;->clone()Lcom/tencent/legu/stat/StatAppMonitor;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/ac;

    invoke-direct {v3, v0, p2, v1}, Lcom/tencent/legu/stat/ac;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Lcom/tencent/legu/stat/StatAppMonitor;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportError() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/q;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/legu/stat/q;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static reportException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/s;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/legu/stat/s;-><init>(Ljava/lang/Throwable;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static reportGameUser(Landroid/content/Context;Lcom/tencent/legu/stat/StatGameUser;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportGameUser() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/m;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/legu/stat/m;-><init>(Lcom/tencent/legu/stat/StatGameUser;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static reportQQ(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "context is null in reportQQ()"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/ap;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/legu/stat/ap;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic s()J
    .locals 2

    sget-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->h:J

    return-wide v0
.end method

.method public static setCommonKeyValueForKVEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2

    invoke-static {p0}, Lcom/tencent/legu/stat/common/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "event_id or commonProp for setCommonKeyValueForKVEvent is invalid."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static setEnvAttributes(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The map in setEnvAttributes can\'t be null or its size can\'t exceed 512."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/legu/stat/common/a;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startNewSession(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.startNewSession() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/ak;

    invoke-direct {v2, v0, p1}, Lcom/tencent/legu/stat/ak;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/legu/stat/MtaSDkException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "MTA StatService is disable."

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "2.3.1"

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTA SDK version, current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    const-string v2, ""

    if-eqz p0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const-string v1, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->setEnableStatService(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSDKLongVersion(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getSDKLongVersion(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTA SDK version conflicted, current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->setEnableStatService(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lcom/tencent/legu/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "-"

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->setInstallChannel(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Lcom/tencent/legu/stat/StatConfig;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/legu/stat/n;

    invoke-direct {v2, p0, p3}, Lcom/tencent/legu/stat/n;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static stopSession()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/legu/stat/StatServiceImpl;->i:J

    return-void
.end method

.method static synthetic t()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static testSpeed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static testSpeed(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tencent/legu/stat/StatSpecifyReportedInfo;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The domainMap of StatService.testSpeed() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/ai;

    invoke-direct {v3, v0, v1, p2}, Lcom/tencent/legu/stat/ai;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static trackBackground(Landroid/content/Context;JLcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Landroid/content/Context;JLcom/tencent/legu/stat/StatSpecifyReportedInfo;Z)V

    return-void
.end method

.method public static trackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->q:Z

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, p1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->inerTrackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    goto :goto_0
.end method

.method public static varargs trackCustomBeginEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomBeginEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/y;

    invoke-direct {v3, p1, v1, v0}, Lcom/tencent/legu/stat/y;-><init>(Ljava/lang/String;Lcom/tencent/legu/stat/event/d;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomBeginEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/aa;

    invoke-direct {v3, p1, v1, v0}, Lcom/tencent/legu/stat/aa;-><init>(Ljava/lang/String;Lcom/tencent/legu/stat/event/d;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static varargs trackCustomEndEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/z;

    invoke-direct {v3, p1, v1, v0, p2}, Lcom/tencent/legu/stat/z;-><init>(Ljava/lang/String;Lcom/tencent/legu/stat/event/d;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/ab;

    invoke-direct {v3, p1, v1, v0, p3}, Lcom/tencent/legu/stat/ab;-><init>(Ljava/lang/String;Lcom/tencent/legu/stat/event/d;Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static varargs trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/u;

    invoke-direct {v3, v0, p2, v1}, Lcom/tencent/legu/stat/u;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Lcom/tencent/legu/stat/event/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/x;

    invoke-direct {v3, v0, p3, v1}, Lcom/tencent/legu/stat/x;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Lcom/tencent/legu/stat/event/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static trackCustomKVTimeIntervalEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;ILcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEndEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/legu/stat/event/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/legu/stat/event/d;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/legu/stat/ae;

    invoke-direct {v3, v0, p4, v1, p3}, Lcom/tencent/legu/stat/ae;-><init>(Landroid/content/Context;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;Lcom/tencent/legu/stat/event/d;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static varargs trackCustomTimeIntervalEvent(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p1, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The intervalSecond of StatService.trackCustomTimeIntervalEvent() can must bigger than 0!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomTimeIntervalEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/ad;

    invoke-direct {v1}, Lcom/tencent/legu/stat/ad;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static trackEndPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/tencent/legu/stat/StatServiceImpl;->u:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->q:Z

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/legu/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->q:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, p1, p2}, Lcom/tencent/legu/stat/StatServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    goto :goto_0
.end method

.method private static u()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "autoTm"

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/tencent/legu/stat/StatConfig;->getSDKProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/StatServiceImpl;->registerActivityLifecycleAutoStat(Landroid/app/Application;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/tencent/legu/stat/StatServiceImpl;->t:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
