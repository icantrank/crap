.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field static MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 5

    const/4 v0, 0x2

    .line 53
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v1, p0

    int-to-double v3, v0

    div-double/2addr v1, v3

    cmpl-double p0, v1, p1

    if-lez p0, :cond_1

    shl-int/lit8 p0, v0, 0x1

    if-lez p0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    sget p0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    :goto_0
    return p0

    :cond_1
    return v0
.end method

.method static needsResizing(IID)Z
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p1

    mul-double p2, p2, v2

    cmpl-double p0, v0, p2

    if-lez p0, :cond_0

    .line 64
    sget p0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static smear(I)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p0, p0, v0

    const/16 v0, 0xf

    .line 45
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int p0, p0, v0

    return p0
.end method