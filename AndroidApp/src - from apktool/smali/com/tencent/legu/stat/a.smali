.class Lcom/tencent/legu/stat/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/legu/stat/NetworkManager;


# direct methods
.method constructor <init>(Lcom/tencent/legu/stat/NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/stat/a;->a:Lcom/tencent/legu/stat/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/legu/stat/a;->a:Lcom/tencent/legu/stat/NetworkManager;

    invoke-static {v0}, Lcom/tencent/legu/stat/NetworkManager;->a(Lcom/tencent/legu/stat/NetworkManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/legu/stat/a;->a:Lcom/tencent/legu/stat/NetworkManager;

    invoke-static {v0}, Lcom/tencent/legu/stat/NetworkManager;->a(Lcom/tencent/legu/stat/NetworkManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/legu/stat/b;

    invoke-direct {v1, p0}, Lcom/tencent/legu/stat/b;-><init>(Lcom/tencent/legu/stat/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method