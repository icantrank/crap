.class public final Lcom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "UnsignedLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/primitives/UnsignedLong;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ONE:Lcom/google/common/primitives/UnsignedLong;

.field private static final UNSIGNED_MASK:J = 0x7fffffffffffffffL

.field public static final ZERO:Lcom/google/common/primitives/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ZERO:Lcom/google/common/primitives/UnsignedLong;

    .line 49
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ONE:Lcom/google/common/primitives/UnsignedLong;

    .line 50
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    return-void
.end method

.method public static asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p0

    return-object p0
.end method

.method public static fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 1

    .line 89
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1

    const/16 v0, 0xa

    .line 125
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;
    .locals 0

    .line 137
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4

    .line 111
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x40

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 5

    .line 306
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 307
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/16 v1, 0x3f

    .line 308
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedLong;)I
    .locals 4

    .line 315
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->compareTo(Lcom/google/common/primitives/UnsignedLong;)I

    move-result p1

    return p1
.end method

.method public divide(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 229
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 6

    .line 295
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 296
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    add-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 326
    instance-of v0, p1, Lcom/google/common/primitives/UnsignedLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 327
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .line 328
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v4, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 5

    .line 281
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-float v0, v0

    .line 282
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/high16 v1, 0x5f000000

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4

    .line 183
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 251
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4

    .line 160
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public remainder(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 207
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 338
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, p1}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method