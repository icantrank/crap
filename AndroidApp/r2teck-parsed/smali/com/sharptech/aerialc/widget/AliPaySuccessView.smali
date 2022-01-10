.class public Lcom/sharptech/aerialc/widget/AliPaySuccessView;
.super Landroid/view/View;
.source "AliPaySuccessView.java"


# instance fields
.field private mBeginAngle:I

.field private mCircleRadius:I

.field private mDrawHookProgress:F

.field private mDrawProgress:F

.field private mFirstHookPercent:F

.field private mHeight:I

.field private mHookPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintwidth:F

.field private mRectF:Landroid/graphics/RectF;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x3ea8f5c3    # 0.33f

    .line 43
    iput p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    .line 48
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3ea8f5c3    # 0.33f

    .line 43
    iput p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    .line 53
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3ea8f5c3    # 0.33f

    .line 43
    iput p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    .line 58
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x3ea8f5c3    # 0.33f

    .line 43
    iput p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    return-void
.end method

.method static synthetic access$002(Lcom/sharptech/aerialc/widget/AliPaySuccessView;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawProgress:F

    return p1
.end method

.method public static dp2px(Landroid/content/Context;I)F
    .locals 1

    int-to-float p1, p1

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0
.end method

.method private init()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->dp2px(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 75
    iput v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaintwidth:F

    .line 76
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaintwidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    const/16 v0, 0x10e

    .line 79
    iput v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mBeginAngle:I

    .line 80
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->initAnim()V

    return-void
.end method

.method private initAnim()V
    .locals 3

    const/4 v0, 0x2

    .line 146
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 147
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sharptech/aerialc/widget/AliPaySuccessView$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/widget/AliPaySuccessView$1;-><init>(Lcom/sharptech/aerialc/widget/AliPaySuccessView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 105
    iget v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mBeginAngle:I

    add-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    iget v2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 106
    iget-object v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    .line 109
    iget v2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawProgress:F

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 110
    iget v2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mBeginAngle:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 111
    iget-object v6, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    rsub-int v2, v0, 0x168

    int-to-float v7, v2

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    iget v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 115
    iget v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawProgress:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawHookProgress:F

    .line 119
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 120
    iget v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    const-wide v4, 0x3fe0f5c28f5c28f6L    # 0.53

    iget v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    int-to-double v6, v0

    mul-double v6, v6, v4

    sub-double/2addr v2, v6

    double-to-float v0, v2

    .line 121
    iget v2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    iget v6, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    .line 122
    iget-object v3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const-wide v3, 0x3fd6666666666666L    # 0.35

    .line 124
    iget v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    int-to-double v5, v5

    mul-double v5, v5, v3

    double-to-float v3, v5

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v3

    .line 126
    iget v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawHookProgress:F

    iget v6, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    add-float/2addr v0, v3

    add-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget v3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawHookProgress:F

    iget v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    sub-float/2addr v1, v5

    div-float/2addr v3, v1

    .line 131
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    mul-float v4, v4, v3

    add-float/2addr v0, v4

    sub-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawHookProgress:F

    iget v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    div-float/2addr v4, v5

    mul-float v4, v4, v3

    add-float/2addr v0, v4

    iget v4, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mDrawHookProgress:F

    iget v5, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mFirstHookPercent:F

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHookPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 86
    iput p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    .line 87
    iput p2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHeight:I

    .line 88
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    .line 89
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 90
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mHeight:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 91
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 92
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mWidth:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mCircleRadius:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public startAnim()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
