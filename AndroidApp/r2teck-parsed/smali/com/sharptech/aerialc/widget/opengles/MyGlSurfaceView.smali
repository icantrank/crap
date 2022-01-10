.class public Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MyGlSurfaceView.java"


# instance fields
.field private mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p2, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    invoke-direct {p2, p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 32
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public capture()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->capture()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setFrameData(II[B[B[B)V
    .locals 7

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->setFrameData(II[B[B[B)V

    .line 41
    invoke-virtual {p0}, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    throw p1
.end method

.method public setOnCaptureListener(Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlSurfaceView;->mGlRender:Lcom/sharptech/aerialc/widget/opengles/MyGlRender;

    invoke-virtual {v0, p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->setListener(Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;)V

    :cond_0
    return-void
.end method
