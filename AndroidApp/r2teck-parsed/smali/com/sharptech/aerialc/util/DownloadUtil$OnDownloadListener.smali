.class public interface abstract Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/util/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadStart(Ljava/io/File;J)V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method

.method public abstract onDownloading(IJJ)V
.end method

.method public abstract onInstallFile(Ljava/io/File;)V
.end method
