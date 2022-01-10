.class final Lcom/tencent/legu/stat/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/NetworkManager;->getInstance(Landroid/content/Context;)Lcom/tencent/legu/stat/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/legu/stat/NetworkManager;->registerBroadcast()V

    iget-object v0, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/common/StatCommonHelper;->getDiffTime(Landroid/content/Context;Z)I

    iget-object v0, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/ba;->a(Landroid/content/Context;)Lcom/tencent/legu/stat/ba;

    iget-object v0, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/g;->b(Landroid/content/Context;)Lcom/tencent/legu/stat/g;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/stat/StatServiceImpl;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/tencent/legu/stat/ar;

    invoke-direct {v0}, Lcom/tencent/legu/stat/ar;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/legu/stat/StatReportStrategy;

    move-result-object v0

    sget-object v1, Lcom/tencent/legu/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/legu/stat/StatReportStrategy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/legu/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    :cond_0
    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->h()V

    iget-object v0, p0, Lcom/tencent/legu/stat/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/legu/stat/common/o;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/legu/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/legu/stat/StatServiceImpl;->f()Lcom/tencent/legu/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "Init MTA StatService success with sdk version2.3.1"

    invoke-virtual {v0, v1}, Lcom/tencent/legu/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
