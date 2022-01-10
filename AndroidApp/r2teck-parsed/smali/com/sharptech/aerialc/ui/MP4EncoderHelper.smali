.class public Lcom/sharptech/aerialc/ui/MP4EncoderHelper;
.super Ljava/lang/Object;
.source "MP4EncoderHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native audioStart()V
.end method

.method public static native audioStop()V
.end method

.method public static native close()V
.end method

.method public static native encodePCMData([BI)[B
.end method

.method public static native init(Ljava/lang/String;II)V
.end method

.method public static native setAudioSampleRate(I)V
.end method

.method public static native start(Ljava/lang/String;I)I
.end method

.method public static native writeH264Data([BI)I
.end method

.method public static native writePCMData([BI)I
.end method
