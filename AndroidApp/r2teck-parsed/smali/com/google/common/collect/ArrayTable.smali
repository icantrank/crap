.class public final Lcom/google/common/collect/ArrayTable;
.super Ljava/lang/Object;
.source "ArrayTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ArrayTable$Values;,
        Lcom/google/common/collect/ArrayTable$RowMap;,
        Lcom/google/common/collect/ArrayTable$Row;,
        Lcom/google/common/collect/ArrayTable$ColumnMap;,
        Lcom/google/common/collect/ArrayTable$Column;,
        Lcom/google/common/collect/ArrayTable$CellSet;,
        Lcom/google/common/collect/ArrayTable$ArrayMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final array:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private transient cellSet:Lcom/google/common/collect/ArrayTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.CellSet;"
        }
    .end annotation
.end field

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Lcom/google/common/collect/ArrayTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 191
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 192
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 193
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 196
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->eraseAll()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 199
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 200
    iget-object v3, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    aget-object v4, v0, v2

    iget-object v5, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v5, v5, v2

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->putAll(Lcom/google/common/collect/Table;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 156
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 157
    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 158
    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 165
    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->index(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 166
    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->index(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 169
    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, Ljava/lang/Object;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    .line 171
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->eraseAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method public static create(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ArrayTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Table;)Lcom/google/common/collect/ArrayTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/Table;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/ArrayTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static index(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 179
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public at(II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 340
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 341
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public cellSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->cellSet:Lcom/google/common/collect/ArrayTable$CellSet;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/google/common/collect/ArrayTable$CellSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$CellSet;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->cellSet:Lcom/google/common/collect/ArrayTable$CellSet;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 643
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 645
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ArrayTable$Column;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$Column;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public columnKeyList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 417
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 426
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 435
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 441
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 442
    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 548
    instance-of v0, p1, Lcom/google/common/collect/Table;

    if-eqz v0, :cond_0

    .line 549
    check-cast p1, Lcom/google/common/collect/Table;

    .line 550
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public erase(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 533
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public eraseAll()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 407
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 453
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 474
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Row %s not in %s"

    const/4 v5, 0x2

    .line 477
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v1

    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    aput-object p1, v6, v2

    invoke-static {v3, v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object p1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Column %s not in %s"

    .line 479
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget-object p2, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    aput-object p2, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 502
    invoke-interface {p1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 503
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/common/collect/ArrayTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 733
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 735
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ArrayTable$Row;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$Row;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public rowKeyList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TR;>;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Lcom/google/common/collect/ArrayTable$RowMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    :cond_0
    return-object v0
.end method

.method public set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)TV;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    .line 364
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object p1, v1, p1

    aput-object p3, p1, p2

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public toArray(Ljava/lang/Class;)[[Ljava/lang/Object;
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "reflection"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;)[[TV;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 382
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lcom/google/common/collect/ArrayTable$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$Values;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
