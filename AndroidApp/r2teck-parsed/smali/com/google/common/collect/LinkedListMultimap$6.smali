.class Lcom/google/common/collect/LinkedListMultimap$6;
.super Lcom/google/common/collect/Multimaps$AsMap;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$AsMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$6;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$AsMap;-><init>()V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 943
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$6$1;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$6;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$6$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$6;Ljava/util/Iterator;)V

    return-object v0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$6;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$6;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
