.class public Lcom/tencent/legu/mid/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/legu/mid/api/MidCallback;

.field private c:I

.field private d:Lcom/tencent/legu/mid/util/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/legu/mid/api/MidCallback;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/legu/mid/a/j;->b:Lcom/tencent/legu/mid/api/MidCallback;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/legu/mid/a/j;->c:I

    iput-object v1, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    iput-object p1, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/legu/mid/a/j;->c:I

    iput-object p3, p0, Lcom/tencent/legu/mid/a/j;->b:Lcom/tencent/legu/mid/api/MidCallback;

    invoke-static {}, Lcom/tencent/legu/mid/util/Util;->getLogger()Lcom/tencent/legu/mid/util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    return-void
.end method

.method static synthetic a(Lcom/tencent/legu/mid/a/j;)Lcom/tencent/legu/mid/util/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v6, [Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/b/g;->a(Ljava/util/List;)Lcom/tencent/legu/mid/api/MidEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/Integer;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/tencent/legu/mid/b/g;->a(Ljava/util/List;)Lcom/tencent/legu/mid/api/MidEntity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/legu/mid/util/Util;->equal(Lcom/tencent/legu/mid/api/MidEntity;Lcom/tencent/legu/mid/api/MidEntity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    const-string v1, "local mid check passed."

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1, v0}, Lcom/tencent/legu/mid/util/Util;->getNewerMidEntity(Lcom/tencent/legu/mid/api/MidEntity;Lcom/tencent/legu/mid/api/MidEntity;)Lcom/tencent/legu/mid/api/MidEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local mid check failed, redress with mid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/legu/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/legu/mid/util/f;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/legu/mid/util/i;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/util/i;

    move-result-object v1

    const-string v2, "ten.mid.allowCheckAndRewriteLocal.bool"

    invoke-virtual {v1, v2, v5}, Lcom/tencent/legu/mid/util/i;->b(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/legu/mid/b/g;->f(Lcom/tencent/legu/mid/api/MidEntity;)V

    goto :goto_0
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/mid/b/g;->k()Lcom/tencent/legu/mid/b/a;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    const-string v1, "CheckEntity is null"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/tencent/legu/mid/b/a;->b()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/tencent/legu/mid/b/a;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    :goto_1
    iget-object v4, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check entity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/legu/mid/b/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/legu/mid/util/f;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/legu/mid/a/j;->a()V

    invoke-direct {p0}, Lcom/tencent/legu/mid/a/j;->c()V

    invoke-virtual {v2, v3}, Lcom/tencent/legu/mid/b/a;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/legu/mid/b/a;->a(J)V

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/legu/mid/b/g;->a(Lcom/tencent/legu/mid/b/a;)V

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/mid/b/g;->a()Lcom/tencent/legu/mid/api/MidEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midNewEntity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/legu/mid/util/f;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/legu/mid/util/Util;->isMidValid(Lcom/tencent/legu/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    const-string v1, "request mid_new "

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/a/c;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/a/c;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Lcom/tencent/legu/mid/a/f;

    iget-object v3, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/legu/mid/a/f;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tencent/legu/mid/a/k;

    invoke-direct {v3, p0}, Lcom/tencent/legu/mid/a/k;-><init>(Lcom/tencent/legu/mid/a/j;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/legu/mid/a/c;->a(ILcom/tencent/legu/mid/a/e;Lcom/tencent/legu/mid/api/MidCallback;)V

    goto/16 :goto_0

    :cond_2
    neg-long v0, v0

    goto/16 :goto_1
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    const-string v1, "checkServer"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/a/c;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/a/c;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/tencent/legu/mid/a/f;

    iget-object v3, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/legu/mid/a/f;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tencent/legu/mid/a/l;

    invoke-direct {v3, p0}, Lcom/tencent/legu/mid/a/l;-><init>(Lcom/tencent/legu/mid/a/j;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/legu/mid/a/c;->a(ILcom/tencent/legu/mid/a/e;Lcom/tencent/legu/mid/api/MidCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v1, Lcom/tencent/legu/mid/a/j;

    monitor-enter v1

    :try_start_0
    const-string v0, "MID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceRunnable begin, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/legu/mid/a/j;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x40666666    # 3.6f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lcom/tencent/legu/mid/a/j;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/legu/mid/a/j;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/legu/mid/util/f;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string v0, "MID"

    const-string v2, "ServiceRunnable end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/a/g;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/api/MidEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/mid/util/Util;->isMidValid(Lcom/tencent/legu/mid/api/MidEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/legu/mid/a/j;->b:Lcom/tencent/legu/mid/api/MidCallback;

    invoke-interface {v2, v0}, Lcom/tencent/legu/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/tencent/legu/mid/a/j;->d:Lcom/tencent/legu/mid/util/f;

    invoke-virtual {v2, v0}, Lcom/tencent/legu/mid/util/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/mid/a/c;->a(Landroid/content/Context;)Lcom/tencent/legu/mid/a/c;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/legu/mid/a/f;

    iget-object v4, p0, Lcom/tencent/legu/mid/a/j;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/tencent/legu/mid/a/f;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/tencent/legu/mid/a/j;->b:Lcom/tencent/legu/mid/api/MidCallback;

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/legu/mid/a/c;->a(ILcom/tencent/legu/mid/a/e;Lcom/tencent/legu/mid/api/MidCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/legu/mid/a/j;->b:Lcom/tencent/legu/mid/api/MidCallback;

    const/16 v2, -0x271a

    const-string v3, "network not available."

    invoke-interface {v0, v2, v3}, Lcom/tencent/legu/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/legu/mid/a/j;->b()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
