.class final Lcom/tencent/legu/mid/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/mid/api/MidCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/mid/api/MidCallback;


# direct methods
.method constructor <init>(Lcom/tencent/legu/mid/api/MidCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/mid/a/h;->a:Lcom/tencent/legu/mid/api/MidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/legu/mid/a/g;->b()Lcom/tencent/legu/mid/util/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get mid, errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/legu/mid/a/h;->a:Lcom/tencent/legu/mid/api/MidCallback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/legu/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/legu/mid/api/MidEntity;->parse(Ljava/lang/String;)Lcom/tencent/legu/mid/api/MidEntity;

    move-result-object v0

    invoke-static {}, Lcom/tencent/legu/mid/a/g;->b()Lcom/tencent/legu/mid/util/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success to get mid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/legu/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/legu/mid/util/f;->h(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/legu/mid/a/h;->a:Lcom/tencent/legu/mid/api/MidCallback;

    invoke-virtual {v0}, Lcom/tencent/legu/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/legu/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
