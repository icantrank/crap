.class Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

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
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-static {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->access$200(Lcom/google/common/collect/RegularImmutableSortedMultiset;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->get(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method
