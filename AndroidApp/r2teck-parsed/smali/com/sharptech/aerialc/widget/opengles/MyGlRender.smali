.class public Lcom/sharptech/aerialc/widget/opengles/MyGlRender;
.super Ljava/lang/Object;
.source "MyGlRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;
    }
.end annotation


# instance fields
.field private aPositionHandle_stop:I

.field private aPositionHandle_yuv:I

.field private aTextureCoordHandle_stop:I

.field private aTextureCoordHandle_yuv:I

.field private context:Landroid/content/Context;

.field private fFrame:[I

.field private fTexture:[I

.field frame_h:I

.field frame_w:I

.field private isCapture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;

.field private mCaptureBuffer:Ljava/nio/Buffer;

.field private programId_stop:I

.field private programId_yuv:I

.field private sHeight:I

.field private sWidth:I

.field private sampler_u:I

.field private sampler_v:I

.field private sampler_y:I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private final textureVertexData:[F

.field private textureid_yuv:[I

.field u:Ljava/nio/ByteBuffer;

.field v:Ljava/nio/ByteBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexData:[F

.field y:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 46
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexData:[F

    const/16 v0, 0x8

    .line 54
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureVertexData:[F

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->isCapture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sWidth:I

    .line 87
    iput v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sHeight:I

    const/4 v0, 0x1

    .line 129
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fFrame:[I

    .line 130
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fTexture:[I

    .line 90
    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->context:Landroid/content/Context;

    .line 92
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexData:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 93
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexData:[F

    .line 95
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 96
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureVertexData:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureVertexData:[F

    .line 101
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 102
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private bindfbo(II)V
    .locals 12

    .line 304
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fFrame:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 306
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fTexture:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 307
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fTexture:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v6, p1

    move v7, p2

    .line 308
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const p1, 0x46180400    # 9729.0f

    const/16 p2, 0x2801

    .line 310
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2800

    .line 311
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p1, 0x47012f00    # 33071.0f

    const/16 p2, 0x2802

    .line 312
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2803

    .line 313
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 315
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fFrame:[I

    aget p1, p1, v2

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 316
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fTexture:[I

    aget p1, p1, v2

    const v0, 0x8ce0

    invoke-static {p2, v0, v1, p1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 318
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const p2, 0x8cd5

    if-ne p1, p2, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private cutBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 11

    mul-int v0, p3, p4

    .line 234
    new-array v1, v0, [I

    .line 235
    new-array v0, v0, [I

    .line 236
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    const/4 v10, 0x0

    .line 237
    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, v9

    .line 239
    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_1

    mul-int p2, p1, p3

    sub-int v2, p4, p1

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_0

    add-int v4, p2, v3

    .line 246
    aget v4, v1, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int v5, v2, v3

    .line 250
    aput v4, v0, v5
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 257
    invoke-virtual {v9}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initStop()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->context:Landroid/content/Context;

    const v1, 0x7f0c0003

    invoke-static {v0, v1}, Lcom/sharptech/aerialc/widget/opengles/GlShaderUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->context:Landroid/content/Context;

    const v2, 0x7f0c0001

    invoke-static {v1, v2}, Lcom/sharptech/aerialc/widget/opengles/GlShaderUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/sharptech/aerialc/widget/opengles/GlShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_stop:I

    .line 218
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_stop:I

    const-string v1, "av_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aPositionHandle_stop:I

    .line 219
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_stop:I

    const-string v1, "af_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aTextureCoordHandle_stop:I

    return-void
.end method

.method private initYuvShader()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->context:Landroid/content/Context;

    const v1, 0x7f0c0003

    invoke-static {v0, v1}, Lcom/sharptech/aerialc/widget/opengles/GlShaderUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->context:Landroid/content/Context;

    const v2, 0x7f0c0002

    invoke-static {v1, v2}, Lcom/sharptech/aerialc/widget/opengles/GlShaderUtils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lcom/sharptech/aerialc/widget/opengles/GlShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    .line 151
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    const-string v1, "av_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aPositionHandle_yuv:I

    .line 152
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    const-string v1, "af_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aTextureCoordHandle_yuv:I

    .line 154
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    const-string v1, "sampler_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sampler_y:I

    .line 155
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    const-string v1, "sampler_u"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sampler_u:I

    .line 156
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    const-string v1, "sampler_v"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sampler_v:I

    const/4 v0, 0x3

    .line 158
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureid_yuv:[I

    .line 159
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureid_yuv:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureid_yuv:[I

    aget v1, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const/16 v4, 0x2601

    .line 164
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    .line 166
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 168
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 169
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private renderStop()V
    .locals 8

    .line 223
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_stop:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 224
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aPositionHandle_stop:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 226
    iget v2, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aPositionHandle_stop:I

    iget-object v7, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 228
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aTextureCoordHandle_stop:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 230
    iget v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aTextureCoordHandle_stop:I

    iget-object v6, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method private renderYuv()V
    .locals 13

    .line 174
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_w:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->y:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->u:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->v:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->programId_yuv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 176
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aPositionHandle_yuv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 177
    iget v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aPositionHandle_yuv:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 179
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aTextureCoordHandle_yuv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 181
    iget v2, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->aTextureCoordHandle_yuv:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c0

    .line 185
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 187
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureid_yuv:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    .line 189
    iget v6, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_w:I

    iget v7, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_h:I

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    iget-object v11, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->y:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 191
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sampler_y:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    .line 194
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 195
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureid_yuv:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 196
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_w:I

    const/4 v12, 0x2

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_h:I

    div-int/lit8 v7, v0, 0x2

    iget-object v11, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->u:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 198
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sampler_u:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c2

    .line 200
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 201
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->textureid_yuv:[I

    aget v0, v0, v12

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 202
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_w:I

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_h:I

    div-int/lit8 v7, v0, 0x2

    iget-object v11, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->v:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 204
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sampler_v:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 205
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 206
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 207
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->y:Ljava/nio/ByteBuffer;

    .line 209
    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->u:Ljava/nio/ByteBuffer;

    .line 210
    iput-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->v:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public static saveYUVtoPicture([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    :try_start_0
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 284
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x50

    invoke-virtual {v6, v0, p1, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 287
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 289
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sharptech/aerialc/util/FileUtils;->PATH_PIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sharptech/aerialc/util/FileUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 290
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x55

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 291
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 292
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 297
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 295
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 299
    :goto_1
    throw p0
.end method

.method private unbindfbo()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x8d40

    .line 325
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 326
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fTexture:[I

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 327
    iget-object v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->fFrame:[I

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method


# virtual methods
.method public capture()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->isCapture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->isCapture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 p1, 0x4100

    .line 134
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 136
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->renderYuv()V

    const/4 p1, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 137
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 138
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->isCapture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sWidth:I

    iget v1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sHeight:I

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->cutBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->listener:Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->listener:Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;

    invoke-interface {v0, p1}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;->onCapture(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 122
    iput p2, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sWidth:I

    .line 123
    iput p3, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->sHeight:I

    const/4 p1, 0x0

    .line 124
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->initYuvShader()V

    .line 117
    invoke-direct {p0}, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->initStop()V

    return-void
.end method

.method public setFrameData(II[B[B[B)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_w:I

    .line 108
    iput p2, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->frame_h:I

    .line 109
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->y:Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->u:Ljava/nio/ByteBuffer;

    .line 111
    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->v:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setListener(Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sharptech/aerialc/widget/opengles/MyGlRender;->listener:Lcom/sharptech/aerialc/widget/opengles/MyGlRender$ScreenCaptureListener;

    return-void
.end method
