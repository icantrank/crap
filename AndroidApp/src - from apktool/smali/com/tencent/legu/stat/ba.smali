.class public Lcom/tencent/legu/stat/ba;
.super Ljava/lang/Object;


# static fields
.field static volatile c:I

.field private static i:Lcom/tencent/legu/stat/common/StatLogger;

.field private static j:Landroid/content/Context;

.field private static l:Lcom/tencent/legu/stat/ba;


# instance fields
.field volatile a:I

.field b:Lcom/tencent/legu/stat/common/DeviceInfo;

.field private d:Lcom/tencent/legu/stat/bi;

.field private e:Lcom/tencent/legu/stat/bi;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private k:J

.field private m:I

.field private n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/tencent/legu/stat/event/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getLogger()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    sput-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    sput-object v1, Lcom/tencent/legu/stat/ba;->l:Lcom/tencent/legu/stat/ba;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/legu/stat/ba;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    iput-object v2, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    iput-object v2, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->h:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/legu/stat/ba;->a:I

    iput-object v2, p0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;

    const-wide/32 v0, 0x4b000

    iput-wide v0, p0, Lcom/tencent/legu/stat/ba;->k:J

    iput v3, p0, Lcom/tencent/legu/stat/ba;->m:I

    iput-object v2, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v3, p0, Lcom/tencent/legu/stat/ba;->o:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->p:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatStore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDatabaseName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pri_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDatabaseName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->h:Ljava/lang/String;

    new-instance v0, Lcom/tencent/legu/stat/bi;

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/legu/stat/bi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    new-instance v0, Lcom/tencent/legu/stat/bi;

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/legu/stat/bi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->f()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->b(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->b(Z)V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->g()V

    sget-object v0, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tencent/legu/stat/ba;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-virtual {p0}, Lcom/tencent/legu/stat/ba;->d()V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;
    .locals 2

    sget-object v0, Lcom/tencent/legu/stat/ba;->l:Lcom/tencent/legu/stat/ba;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/legu/stat/ba;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/legu/stat/ba;->l:Lcom/tencent/legu/stat/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/legu/stat/ba;

    invoke-direct {v0, p0}, Lcom/tencent/legu/stat/ba;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/legu/stat/ba;->l:Lcom/tencent/legu/stat/ba;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/legu/stat/ba;->l:Lcom/tencent/legu/stat/ba;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent_mta_sp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/bj;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "event_id in ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/legu/stat/bj;

    iget-wide v5, v0, Lcom/tencent/legu/stat/bj;->a:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-eq v1, v0, :cond_0

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(IZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/legu/stat/ba;->b(Ljava/util/List;IZ)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peek "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unsent events."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/legu/stat/ba;->a(Ljava/util/List;IZ)V

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    move-result-object v1

    new-instance v2, Lcom/tencent/legu/stat/bg;

    invoke-direct {v2, p0, v0, p2}, Lcom/tencent/legu/stat/bg;-><init>(Lcom/tencent/legu/stat/ba;Ljava/util/List;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/legu/stat/g;->b(Ljava/util/List;Lcom/tencent/legu/stat/StatDispatchCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string v0, "uid"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/tencent/legu/stat/common/StatPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_type"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/tencent/legu/stat/common/StatPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "app_ver"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/legu/stat/common/StatPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ts"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p4, p5}, Lcom/tencent/legu/stat/common/StatPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/stat/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->j()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/stat/ba;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/legu/stat/ba;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/legu/stat/ba;->b(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/legu/stat/ba;->b(Lcom/tencent/legu/stat/f;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/stat/ba;Ljava/util/List;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/legu/stat/ba;->a(Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/stat/ba;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/legu/stat/ba;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;Z)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/tencent/legu/stat/ba;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p3, :cond_0

    iget v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v2

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "Too many events stored in db."

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const-string v6, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/legu/stat/event/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert 1 event, content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v2}, Lcom/tencent/legu/stat/common/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v6, v3

    iget-wide v8, p0, Lcom/tencent/legu/stat/ba;->k:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    const-string v3, "content"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "send_count"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/legu/stat/event/f;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v2

    :goto_1
    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directStoreEvent insert event to db, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/legu/stat/event/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/tencent/legu/stat/StatDispatchCallback;->onDispatchSuccess()V

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-wide/16 v2, -0x1

    :try_start_2
    sget-object v6, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v6, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to store event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/legu/stat/event/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-wide v0, v2

    goto :goto_1

    :cond_7
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/bj;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/legu/stat/ba;->c(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :try_start_2
    invoke-direct {p0, p3}, Lcom/tencent/legu/stat/ba;->d(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update events set status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", send_count=send_count+1  where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/legu/stat/ba;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update sql:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update for delete sql:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->g()V

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update events set status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " where "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/legu/stat/ba;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/tencent/legu/stat/ba;->m:I

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from events where send_count>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iget v3, p0, Lcom/tencent/legu/stat/ba;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/legu/stat/ba;->m:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_7
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_9
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_4
    :try_start_b
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/bj;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events, important:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "event_id in ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/legu/stat/bj;

    iget-wide v6, v0, Lcom/tencent/legu/stat/bj;->a:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, -0x1

    if-eq v2, v0, :cond_3

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/tencent/legu/stat/ba;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "events"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", success delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_5
    iget v2, p0, Lcom/tencent/legu/stat/ba;->a:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->g()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    :goto_2
    :try_start_9
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method private a(Z)Z
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string v5, "test"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/legu/stat/ba;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "send_count"

    const-string v3, "100"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "events"

    const-string v2, "content = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const-string v1, "events"

    const/4 v2, 0x0

    const-string v3, "content=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",queryNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    if-eqz v12, :cond_1

    if-lez v2, :cond_3

    :cond_1
    new-instance v0, Landroid/database/SQLException;

    const-string v2, "test delete error."

    invoke-direct {v0, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_0
    :try_start_2
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "db is full, change to INSTANT"

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->setReportEventsByOrder(Z)V

    sget-object v1, Lcom/tencent/legu/stat/StatReportStrategy;->INSTANT:Lcom/tencent/legu/stat/StatReportStrategy;

    invoke-static {v1}, Lcom/tencent/legu/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/legu/stat/StatReportStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    move v0, v9

    :goto_1
    return v0

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_4

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test db passed, db name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move v0, v9

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v9

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v9

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v11

    :goto_2
    :try_start_6
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move v0, v10

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v11

    :goto_3
    if-eqz v1, :cond_7

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_4
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public static b()Lcom/tencent/legu/stat/ba;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/ba;->l:Lcom/tencent/legu/stat/ba;

    return-object v0
.end method

.method private b(IZ)V
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->h()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getNumEventsCommitPerSec()I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->b()I

    move-result v2

    div-int v3, v0, v2

    rem-int v4, v0, v2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sentStoreEventsByDb sendNumbers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",important="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",maxSendNumPerFor1Period="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",restNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "round:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/tencent/legu/stat/ba;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " send i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p2}, Lcom/tencent/legu/stat/ba;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->i()I

    move-result v0

    goto/16 :goto_0

    :cond_3
    if-lez v4, :cond_4

    invoke-direct {p0, v4, p2}, Lcom/tencent/legu/stat/ba;->a(IZ)V

    :cond_4
    return-void

    :cond_5
    move v0, p1

    goto/16 :goto_0
.end method

.method private declared-synchronized b(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lcom/tencent/legu/stat/StatConfig;->m:I

    if-lez v0, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/legu/stat/ba;->a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget v0, Lcom/tencent/legu/stat/StatConfig;->m:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheEventsInMemory.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numEventsCachedInMemory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/legu/stat/StatConfig;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numStoredEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/legu/stat/event/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget v1, Lcom/tencent/legu/stat/StatConfig;->m:I

    if-lt v0, v1, :cond_4

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->j()V

    :cond_4
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->j()V

    :cond_5
    invoke-interface {p2}, Lcom/tencent/legu/stat/StatDispatchCallback;->onDispatchSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/tencent/legu/stat/f;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/legu/stat/f;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/legu/stat/common/StatCommonHelper;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "content"

    iget-object v2, p1, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md5sum"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/tencent/legu/stat/f;->c:Ljava/lang/String;

    const-string v0, "version"

    iget v1, p1, Lcom/tencent/legu/stat/f;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v2, p1, Lcom/tencent/legu/stat/f;->a:I

    if-ne v0, v2, :cond_0

    move v0, v9

    :goto_0
    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ne v9, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "config"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/tencent/legu/stat/f;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store cfg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    const-string v0, "type"

    iget v2, p1, Lcom/tencent/legu/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sucessed to store cfg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_5

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    :try_start_9
    iget-object v1, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_6
    move v0, v10

    goto/16 :goto_0
.end method

.method private declared-synchronized b(Ljava/util/List;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/bj;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/tencent/legu/stat/ba;->e(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    move v6, p2

    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/tencent/legu/stat/StatConfig;->g:Z

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/tencent/legu/stat/common/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v0, Lcom/tencent/legu/stat/bj;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/legu/stat/bj;-><init>(JLjava/lang/String;II)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "peek event, id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",send_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v1, "fetch row error, passed."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v0, 0x28

    if-ge v6, v0, :cond_5

    add-int/lit8 v0, v6, 0x1

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v9

    :goto_3
    :try_start_6
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v9

    :goto_4
    if-eqz v7, :cond_4

    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    :goto_5
    :try_start_a
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v7

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method private b(Z)V
    .locals 10

    const-wide/16 v8, 0x3c

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/legu/stat/ba;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "events"

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " unsent events."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-wide v4, Lcom/tencent/legu/stat/StatConfig;->t:J

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from events where timestamp<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  or length(content) >"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/legu/stat/ba;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_3
.end method

.method private c(Z)I
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxSendRetryCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getMaxImportantDataSendRetryCount()I

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "uid"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/legu/stat/common/StatPreferences;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user_type"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/legu/stat/common/StatPreferences;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_ver"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/legu/stat/common/StatPreferences;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/legu/stat/common/StatPreferences;->contains(Landroid/content/Context;Ljava/lang/String;)Z

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

.method private d(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e()Lcom/tencent/legu/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-static {v2}, Lcom/tencent/legu/stat/bi;->a(Lcom/tencent/legu/stat/bi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and create new one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->a()Z

    new-instance v0, Lcom/tencent/legu/stat/bi;

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/legu/stat/bi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/legu/stat/ba;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    invoke-static {v2}, Lcom/tencent/legu/stat/bi;->a(Lcom/tencent/legu/stat/bi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and create new one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->a()Z

    new-instance v0, Lcom/tencent/legu/stat/bi;

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/legu/stat/bi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->i()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    return-void
.end method

.method private h()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->e:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 10

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/legu/stat/ba;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/legu/stat/ba;->o:Z

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events ,numEventsCachedInMemory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/legu/stat/StatConfig;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",numStoredEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/legu/stat/event/f;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/legu/stat/event/f;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v5}, Lcom/tencent/legu/stat/common/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/tencent/legu/stat/ba;->k:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    const-string v6, "content"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "send_count"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    invoke-virtual {v0}, Lcom/tencent/legu/stat/event/f;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "events"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v3, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->g()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/tencent/legu/stat/ba;->o:Z

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after insert, cacheEventsInMemory.size():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/legu/stat/ba;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",numEventsCachedInMemory:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/tencent/legu/stat/StatConfig;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",numStoredEvents:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/tencent/legu/stat/ba;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->g()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/legu/stat/ba;->g()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    :goto_3
    :try_start_a
    throw v0

    :catch_3
    move-exception v1

    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v3, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method private k()V
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "keyvalues"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->p:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/legu/stat/ba;->a:I

    return v0
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/bh;

    invoke-direct {v1, p0, p1}, Lcom/tencent/legu/stat/bh;-><init>(Lcom/tencent/legu/stat/ba;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/legu/stat/be;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/legu/stat/be;-><init>(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/event/f;Lcom/tencent/legu/stat/StatDispatchCallback;ZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method a(Lcom/tencent/legu/stat/f;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tencent/legu/stat/f;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/bf;

    invoke-direct {v1, p0, p1}, Lcom/tencent/legu/stat/bf;-><init>(Lcom/tencent/legu/stat/ba;Lcom/tencent/legu/stat/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Ljava/util/List;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/bj;",
            ">;IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/legu/stat/bb;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/legu/stat/bb;-><init>(Lcom/tencent/legu/stat/ba;Ljava/util/List;IZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method a(Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/legu/stat/bj;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/bc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/legu/stat/bc;-><init>(Lcom/tencent/legu/stat/ba;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lcom/tencent/legu/stat/common/DeviceInfo;
    .locals 16

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/tencent/legu/stat/ba;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "try to load user info from sp."

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    const-string v1, ""

    const-string v1, "uid"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tencent/legu/stat/common/StatPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/legu/stat/common/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "user_type"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tencent/legu/stat/common/StatPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    const-string v1, "app_ver"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tencent/legu/stat/common/StatPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/legu/stat/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/legu/stat/common/StatPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    div-long v5, v4, v11

    const/4 v4, 0x1

    if-eq v9, v4, :cond_1f

    const-wide/16 v11, 0x3e8

    mul-long/2addr v2, v11

    invoke-static {v2, v3}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDateFormat(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDateFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v4, 0x1

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v4, v4, 0x2

    :cond_2
    const/4 v1, 0x0

    if-eqz v7, :cond_1e

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_2
    const/4 v3, 0x0

    if-eqz v8, :cond_7

    array-length v1, v8

    if-lez v1, :cond_7

    const/4 v1, 0x0

    aget-object v2, v8, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v11, 0xb

    if-ge v1, v11, :cond_1d

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/Util;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_1c

    const/4 v2, 0x1

    :goto_3
    move-object v3, v7

    move-object v7, v1

    :goto_4
    if-eqz v8, :cond_8

    array-length v1, v8

    const/4 v11, 0x2

    if-lt v1, v11, :cond_8

    const/4 v1, 0x1

    aget-object v1, v8, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_5
    new-instance v8, Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-direct {v8, v7, v1, v4}, Lcom/tencent/legu/stat/common/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-static {v3}, Lcom/tencent/legu/stat/common/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    :cond_5
    if-eq v4, v9, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;

    goto/16 :goto_0

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v7, v2

    move v15, v3

    move-object v3, v2

    move v2, v15

    goto :goto_4

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getMacId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    const-string v2, "try to load user info from db."

    invoke-virtual {v1, v2}, Lcom/tencent/legu/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    const/4 v1, 0x0

    :try_start_3
    const-string v2, ""

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/legu/stat/common/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v13, 0x3e8

    div-long v5, v4, v13

    const/4 v4, 0x1

    if-eq v11, v4, :cond_1b

    const-wide/16 v13, 0x3e8

    mul-long/2addr v2, v13

    invoke-static {v2, v3}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDateFormat(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDateFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v4, 0x1

    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    or-int/lit8 v4, v4, 0x2

    :cond_b
    const/4 v1, 0x0

    if-eqz v9, :cond_1a

    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    :goto_8
    const/4 v3, 0x0

    if-eqz v10, :cond_13

    array-length v1, v10

    if-lez v1, :cond_13

    const/4 v1, 0x0

    aget-object v2, v10, v1

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v13, 0xb

    if-ge v1, v13, :cond_19

    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/Util;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_18

    const/4 v2, 0x1

    :goto_9
    move-object v3, v9

    move-object v9, v1

    :goto_a
    if-eqz v10, :cond_14

    array-length v1, v10

    const/4 v13, 0x2

    if-lt v1, v13, :cond_14

    const/4 v1, 0x1

    aget-object v1, v10, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    :goto_b
    new-instance v10, Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-direct {v10, v9, v1, v4}, Lcom/tencent/legu/stat/common/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3}, Lcom/tencent/legu/stat/common/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "uid"

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "user_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "app_ver"

    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ts"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v9, "user"

    const-string v10, "uid=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v2, v9, v1, v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_e
    if-eq v4, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v9, "user"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    move v1, v8

    :cond_10
    if-nez v1, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getMacId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1}, Lcom/tencent/legu/stat/common/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "uid"

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "app_ver"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ts"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user"

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    new-instance v1, Lcom/tencent/legu/stat/common/DeviceInfo;

    invoke-direct {v1, v8, v9, v4}, Lcom/tencent/legu/stat/common/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/legu/stat/ba;->b:Lcom/tencent/legu/stat/common/DeviceInfo;

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_12

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_13
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v9, v2

    move v15, v3

    move-object v3, v2

    move v2, v15

    goto/16 :goto_a

    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getMacId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v3

    const/4 v2, 0x1

    goto/16 :goto_b

    :catch_1
    move-exception v1

    move-object v2, v10

    :goto_d
    :try_start_7
    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v3, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_15

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v1}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    :catch_2
    move-exception v1

    :try_start_9
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    :catchall_1
    move-exception v1

    move-object v7, v10

    :goto_e
    if-eqz v7, :cond_16

    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v2}, Lcom/tencent/legu/stat/bi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_f
    :try_start_b
    throw v1

    :catch_3
    move-exception v2

    sget-object v3, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_f

    :catchall_2
    move-exception v1

    goto :goto_e

    :catchall_3
    move-exception v1

    move-object v7, v2

    goto :goto_e

    :catch_4
    move-exception v1

    move-object v2, v7

    goto :goto_d

    :cond_17
    move-object v1, v8

    goto/16 :goto_c

    :cond_18
    move-object v1, v2

    move v2, v3

    goto/16 :goto_9

    :cond_19
    move-object v15, v2

    move v2, v3

    move-object v3, v9

    move-object v9, v15

    goto/16 :goto_a

    :cond_1a
    move-object v10, v1

    goto/16 :goto_8

    :cond_1b
    move v4, v11

    goto/16 :goto_7

    :cond_1c
    move-object v1, v2

    move v2, v3

    goto/16 :goto_3

    :cond_1d
    move-object v15, v2

    move v2, v3

    move-object v3, v7

    move-object v7, v15

    goto/16 :goto_4

    :cond_1e
    move-object v8, v1

    goto/16 :goto_2

    :cond_1f
    move v4, v9

    goto/16 :goto_1
.end method

.method c()V
    .locals 2

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->f:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/legu/stat/bd;

    invoke-direct {v1, p0}, Lcom/tencent/legu/stat/bd;-><init>(Lcom/tencent/legu/stat/ba;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method d()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->b:Lcom/tencent/legu/stat/f;

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/legu/stat/StatConfig;->a:Lcom/tencent/legu/stat/f;

    sget-object v1, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/legu/stat/ba;->d:Lcom/tencent/legu/stat/bi;

    invoke-virtual {v0}, Lcom/tencent/legu/stat/bi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/tencent/legu/stat/f;

    invoke-direct {v5, v0}, Lcom/tencent/legu/stat/f;-><init>(I)V

    iput v0, v5, Lcom/tencent/legu/stat/f;->a:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/tencent/legu/stat/f;->b:Lorg/json/JSONObject;

    iput-object v3, v5, Lcom/tencent/legu/stat/f;->c:Ljava/lang/String;

    iput v4, v5, Lcom/tencent/legu/stat/f;->d:I

    sget-object v0, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-virtual {v5, v0}, Lcom/tencent/legu/stat/f;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/legu/stat/ba;->j:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/tencent/legu/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/legu/stat/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    sget-object v2, Lcom/tencent/legu/stat/ba;->i:Lcom/tencent/legu/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method
