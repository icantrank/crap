.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->createAsList()Lcom/google/common/collect/ImmutableList;
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
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

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

    .line 683
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1100(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p1

    .line 674
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1200(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v1

    aget p1, v1, p1

    .line 675
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 676
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v2, v2, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-virtual {v2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 677
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v3, v3, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$800(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    .line 678
    invoke-static {v1, v2, p1}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 670
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method
