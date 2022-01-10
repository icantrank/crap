.class final Lcom/google/android/gms/internal/icing/zzdk;
.super Lcom/google/android/gms/internal/icing/zzca;

# interfaces
.implements Lcom/google/android/gms/internal/icing/zzdq;
.implements Lcom/google/android/gms/internal/icing/zzfb;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/icing/zzca<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/icing/zzdq<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/icing/zzfb;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzko:Lcom/google/android/gms/internal/icing/zzdk;


# instance fields
.field private size:I

.field private zzkp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/google/android/gms/internal/icing/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/icing/zzdk;-><init>()V

    .line 109
    sput-object v0, Lcom/google/android/gms/internal/icing/zzdk;->zzko:Lcom/google/android/gms/internal/icing/zzdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/icing/zzca;->zzaj()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/icing/zzdk;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/icing/zzca;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    return-void
.end method

.method private final zzh(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/icing/zzdk;->zzi(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzi(I)Ljava/lang/String;
    .locals 3

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 84
    check-cast p2, Ljava/lang/Integer;

    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/icing/zzca;->zzak()V

    if-ltz p1, :cond_1

    .line 87
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-gt p1, v0, :cond_1

    .line 89
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 92
    new-array v0, v0, [I

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aput p2, v0, p1

    .line 97
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    .line 98
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    return-void

    .line 88
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/icing/zzdk;->zzi(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/icing/zzca;->zzak()V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/icing/zzdl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    instance-of v0, p1, Lcom/google/android/gms/internal/icing/zzdk;

    if-nez v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/icing/zzca;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 39
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/icing/zzdk;

    .line 40
    iget v0, p1, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7fffffff

    .line 42
    iget v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr v0, v2

    .line 43
    iget v2, p1, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-lt v0, v2, :cond_3

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    add-int/2addr v0, v2

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    .line 48
    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget v4, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    invoke-static {v2, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iput v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    .line 50
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    return v0

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/icing/zzdk;

    if-nez v1, :cond_1

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/icing/zzca;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/icing/zzdk;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 21
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    const/4 v1, 0x0

    .line 22
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-ge v1, v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/icing/zzdk;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(I)I
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/icing/zzdk;->zzh(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aget p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/icing/zzca;->zzak()V

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/icing/zzdk;->zzh(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aget v0, v0, p1

    .line 78
    iget v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget v4, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    .line 81
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/icing/zzca;->zzak()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-ge v1, v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget v3, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr v3, v1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    .line 57
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/icing/zzca;->zzak()V

    if-lt p2, p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    iget v2, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/icing/zzdk;->modCount:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/icing/zzca;->zzak()V

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/icing/zzdk;->zzh(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aget v0, v0, p1

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    aput p2, v1, p1

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    return v0
.end method

.method public final synthetic zzj(I)Lcom/google/android/gms/internal/icing/zzdq;
    .locals 2

    .line 101
    iget v0, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    if-lt p1, v0, :cond_0

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/icing/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->zzkp:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/icing/zzdk;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/icing/zzdk;-><init>([II)V

    return-object v0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
