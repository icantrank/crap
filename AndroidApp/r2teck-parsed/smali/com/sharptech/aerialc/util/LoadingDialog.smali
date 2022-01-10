.class public Lcom/sharptech/aerialc/util/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/util/LoadingDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 83
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/LoadingDialog;->cancel()V

    return-void
.end method
