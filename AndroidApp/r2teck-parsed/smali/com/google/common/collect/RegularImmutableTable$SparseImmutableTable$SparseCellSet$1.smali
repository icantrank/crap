.class Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$100(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p1

    .line 321
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$200(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableMap;

    .line 323
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v2, v2, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$300(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v2

    aget p1, v2, p1

    .line 324
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method
