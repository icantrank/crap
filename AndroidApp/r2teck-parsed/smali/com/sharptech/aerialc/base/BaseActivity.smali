.class public abstract Lcom/sharptech/aerialc/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "onOrientationChanged"


# instance fields
.field protected mDistance:I

.field private mOrientationDetector:Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/sharptech/aerialc/base/BaseActivity;->mDistance:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/sharptech/aerialc/base/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private screenOrientation()V
    .locals 1

    .line 57
    new-instance v0, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;

    invoke-direct {v0, p0, p0}, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;-><init>(Lcom/sharptech/aerialc/base/BaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/base/BaseActivity;->mOrientationDetector:Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/sharptech/aerialc/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 33
    invoke-direct {p0}, Lcom/sharptech/aerialc/base/BaseActivity;->screenOrientation()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/sharptech/aerialc/base/BaseActivity;->mOrientationDetector:Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;->enable()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 80
    iget-object v0, p0, Lcom/sharptech/aerialc/base/BaseActivity;->mOrientationDetector:Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/base/BaseActivity$MyOrientationDetector;->disable()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/sharptech/aerialc/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
