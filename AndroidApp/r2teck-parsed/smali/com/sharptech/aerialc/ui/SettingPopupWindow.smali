.class public Lcom/sharptech/aerialc/ui/SettingPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SettingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;
    }
.end annotation


# static fields
.field private static final CODE_BUTTON:I = 0x1

.field private static final CODE_TIME:I = 0x0

.field private static final ENCODE_TYPE:I = 0x1

.field private static final TIME_HIDE_DELAY:I = 0x1388


# instance fields
.field private ctvChangePicVideo:Landroid/widget/CheckedTextView;

.field private ctvTakePicVideo:Landroid/widget/CheckedTextView;

.field private ivSetting:Landroid/widget/ImageView;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

.field private mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

.field private mRootView:Landroid/view/View;

.field private mStartVideoRecord:Z

.field private mVisiableAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sharptech/aerialc/ui/MainPresenter2;Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 230
    new-instance v0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$2;-><init>(Lcom/sharptech/aerialc/ui/SettingPopupWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    .line 57
    iput-object p3, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    .line 58
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mContext:Landroid/content/Context;

    const p3, 0x7f090037

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mRootView:Landroid/view/View;

    .line 59
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setContentView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->initView()V

    .line 61
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->initData()V

    .line 62
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->initListener()V

    .line 63
    invoke-direct {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvChangePicVideo:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 p1, -0x2

    .line 77
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setWidth(I)V

    const/4 p1, -0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setFocusable(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setOutsideTouchable(Z)V

    const p1, 0x7f0e00b0

    .line 82
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setAnimationStyle(I)V

    .line 83
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f04006d

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvChangePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ivSetting:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    .line 70
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvChangePicVideo:Landroid/widget/CheckedTextView;

    return-void
.end method

.method private startRotateButton()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    const-string v1, "rotationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    new-instance v1, Lcom/sharptech/aerialc/ui/SettingPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$1;-><init>(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private startScaleButton()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    const-string v1, "scaleX"

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    const-string v3, "scaleY"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 205
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 207
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070041

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const v0, 0x7f070047

    const-wide/16 v2, 0x1388

    if-eq p1, v0, :cond_2

    const v0, 0x7f070079

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    invoke-interface {p1, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;->onDialogHideShow(Z)V

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_b

    .line 119
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mMainPresenter:Lcom/sharptech/aerialc/ui/MainPresenter2;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/ui/MainPresenter2;->takePic()V

    .line 133
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->startScaleButton()V

    .line 134
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 138
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 139
    iput-boolean v1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mStartVideoRecord:Z

    .line 140
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    sget v2, Lcom/sharptech/aerialc/MainApplication;->FPS:I

    if-nez v2, :cond_6

    const/16 v2, 0x3c

    goto :goto_0

    :cond_6
    sget v2, Lcom/sharptech/aerialc/MainApplication;->FPS:I

    :goto_0
    invoke-static {p1, v2}, Lcom/sharptech/aerialc/ui/MP4EncoderHelper;->start(Ljava/lang/String;I)I

    .line 154
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    if-eqz p1, :cond_b

    .line 155
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    invoke-interface {p1, v1, v0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;->onStartRecord(ILjava/lang/String;)V

    goto :goto_2

    .line 158
    :cond_7
    iput-boolean v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mStartVideoRecord:Z

    .line 161
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    if-eqz p1, :cond_8

    .line 162
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mListener:Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;

    invoke-interface {p1, v1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow$OnViewClickListener;->onStopRecord(I)V

    .line 164
    :cond_8
    invoke-static {}, Lcom/sharptech/aerialc/ui/MP4EncoderHelper;->close()V

    .line 165
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 171
    :cond_9
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvChangePicVideo:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvChangePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 172
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->startRotateButton()V

    .line 173
    invoke-static {}, Lcom/sharptech/aerialc/util/ToastUtils;->getInstance()Lcom/sharptech/aerialc/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvChangePicVideo:Landroid/widget/CheckedTextView;

    .line 174
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0d005d

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0061

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/sharptech/aerialc/util/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public setCtvChangePicVideoStatus(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 93
    iget-boolean p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mStartVideoRecord:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mStartVideoRecord:Z

    .line 95
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->ctvTakePicVideo:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    invoke-static {}, Lcom/sharptech/aerialc/ui/MP4EncoderHelper;->close()V

    :cond_1
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 188
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
