.class Lcom/google/common/collect/LinkedListMultimap$6$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$6$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/LinkedListMultimap$6$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$6$1;Ljava/lang/Object;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$6$1$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$6$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$6$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$6$1$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 946
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$6$1$1;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$6$1$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$6$1;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$6$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$6;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$6;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$6$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
