.class Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->createValues()Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$100(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p1

    .line 287
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$200(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    .line 288
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$300(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v1

    aget p1, v1, p1

    .line 289
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$100(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method
