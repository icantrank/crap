.class abstract Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 359
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 360
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 361
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 365
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    .line 387
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 388
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 390
    aput-object v1, p1, v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    add-int/lit8 v3, v0, 0x1

    .line 397
    aput-object v2, p1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 411
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
