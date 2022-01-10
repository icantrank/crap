.class public Lcom/sharptech/aerialc/util/LoadingDialog$Builder;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/util/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isCancelOutside:Z

.field private isCancelable:Z

.field private isShowMessage:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isShowMessage:Z

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isCancelable:Z

    .line 25
    iput-boolean v0, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isCancelOutside:Z

    .line 28
    iput-object p1, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/sharptech/aerialc/util/LoadingDialog;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090023

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/sharptech/aerialc/util/LoadingDialog;

    iget-object v2, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f0e0169

    invoke-direct {v1, v2, v3}, Lcom/sharptech/aerialc/util/LoadingDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0700d1

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    iget-boolean v3, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isShowMessage:Z

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_0
    invoke-virtual {v1, v0}, Lcom/sharptech/aerialc/util/LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 74
    iget-boolean v0, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isCancelable:Z

    invoke-virtual {v1, v0}, Lcom/sharptech/aerialc/util/LoadingDialog;->setCancelable(Z)V

    .line 75
    iget-boolean v0, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isCancelOutside:Z

    invoke-virtual {v1, v0}, Lcom/sharptech/aerialc/util/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    return-object v1
.end method

.method public setCancelOutside(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isCancelOutside:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isCancelable:Z

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setShowMessage(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->isShowMessage:Z

    return-object p0
.end method
