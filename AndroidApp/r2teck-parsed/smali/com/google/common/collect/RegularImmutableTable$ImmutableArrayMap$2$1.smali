.class Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private final maxIndex:I

.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 p1, -0x1

    .line 404
    iput p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    .line 405
    iget-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    iget-object p1, p1, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-virtual {p1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->maxIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->maxIndex:I

    if-ge v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->index:I

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
