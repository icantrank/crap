.class Lcom/tencent/legu/mid/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/legu/mid/api/MidCallback;


# instance fields
.field final synthetic a:Lcom/tencent/legu/mid/a/j;


# direct methods
.method constructor <init>(Lcom/tencent/legu/mid/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/legu/mid/a/l;->a:Lcom/tencent/legu/mid/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/legu/mid/a/l;->a:Lcom/tencent/legu/mid/a/j;

    invoke-static {v0}, Lcom/tencent/legu/mid/a/j;->a(Lcom/tencent/legu/mid/a/j;)Lcom/tencent/legu/mid/util/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServer failed, errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/legu/mid/a/l;->a:Lcom/tencent/legu/mid/a/j;

    invoke-static {v0}, Lcom/tencent/legu/mid/a/j;->a(Lcom/tencent/legu/mid/a/j;)Lcom/tencent/legu/mid/util/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServer success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/legu/mid/util/f;->b(Ljava/lang/Object;)V

    return-void
.end method
