.class public Lcom/tencent/legu/MtaInstance;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/legu/MtaInstance;


# instance fields
.field private a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

.field private b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/legu/MtaInstance;->c:Lcom/tencent/legu/MtaInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/legu/MtaInstance;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    iput-object v0, p0, Lcom/tencent/legu/MtaInstance;->b:Landroid/app/Application;

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Z)Lcom/tencent/legu/MtaInstance;
    .locals 2

    sget-object v0, Lcom/tencent/legu/MtaInstance;->c:Lcom/tencent/legu/MtaInstance;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/legu/MtaInstance;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/legu/MtaInstance;->c:Lcom/tencent/legu/MtaInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/legu/MtaInstance;

    invoke-direct {v0}, Lcom/tencent/legu/MtaInstance;-><init>()V

    sput-object v0, Lcom/tencent/legu/MtaInstance;->c:Lcom/tencent/legu/MtaInstance;

    sget-object v0, Lcom/tencent/legu/MtaInstance;->c:Lcom/tencent/legu/MtaInstance;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/legu/MtaInstance;->b(Landroid/app/Application;Ljava/lang/String;Z)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/legu/MtaInstance;->c:Lcom/tencent/legu/MtaInstance;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p3}, Lcom/tencent/legu/stat/StatConfig;->setDebugEnable(Z)V

    invoke-static {p2}, Lcom/tencent/legu/stat/StatConfig;->setAppKey(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-direct {v0}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/legu/MtaInstance;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    iget-object v0, p0, Lcom/tencent/legu/MtaInstance;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    const-string v1, "\u5e94\u7528\u5b9d"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/StatSpecifyReportedInfo;->setInstallChannel(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/legu/MtaInstance;->b:Landroid/app/Application;

    invoke-static {p1}, Lcom/tencent/legu/stat/StatConfig;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setAutoExceptionCaught(Z)V

    sget-object v0, Lcom/tencent/legu/stat/StatReportStrategy;->PERIOD:Lcom/tencent/legu/stat/StatReportStrategy;

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/legu/stat/StatReportStrategy;)V

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setSendPeriodMinutes(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/legu/stat/StatConfig;->setAntoActivityLifecycleStat(Z)V

    invoke-static {p1}, Lcom/tencent/legu/stat/StatServiceImpl;->setContext(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/MtaInstance;->a:Lcom/tencent/legu/stat/StatSpecifyReportedInfo;

    invoke-static {p1, v0}, Lcom/tencent/legu/stat/StatServiceImpl;->registerActivityLifecycleAutoStat(Landroid/app/Application;Lcom/tencent/legu/stat/StatSpecifyReportedInfo;)V

    const-string v0, "legu"

    const-string v1, "legu mta init done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "legu"

    const-string v2, "legu mta init failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
