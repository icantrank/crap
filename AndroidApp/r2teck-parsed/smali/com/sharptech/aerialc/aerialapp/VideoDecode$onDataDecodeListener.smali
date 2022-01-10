.class public interface abstract Lcom/sharptech/aerialc/aerialapp/VideoDecode$onDataDecodeListener;
.super Ljava/lang/Object;
.source "VideoDecode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/aerialapp/VideoDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onDataDecodeListener"
.end annotation


# virtual methods
.method public abstract onDecode([BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onReceiveSample([BIII)V
.end method
