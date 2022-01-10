.class Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;
.super Ljava/lang/Throwable;
.source "MediaCodecWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;


# direct methods
.method private constructor <init>(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;->this$0:Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;

    .line 389
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;Ljava/lang/String;Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$1;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper$WriteException;-><init>(Lcom/sharptech/aerialc/aerialapp/MediaCodecWrapper;Ljava/lang/String;)V

    return-void
.end method
