.class public Lcom/sharptech/aerialc/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static final TOAST_ERROR:I = 0x0

.field public static final TOAST_INFO:I = 0x3

.field public static final TOAST_LOADING:I = 0x2

.field public static final TOAST_MESSAGE:I = 0x5

.field public static final TOAST_SHORT:I = 0x4

.field public static final TOAST_SUCCESS:I = 0x1

.field private static sInstance:Lcom/sharptech/aerialc/util/ToastUtils;


# instance fields
.field private mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

.field private toast:Landroid/widget/Toast;

.field private toast2:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private create(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/Toast;
    .locals 5

    const v0, 0x7f090026

    const/4 v1, 0x0

    .line 108
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f07007b

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0700dc

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070021

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sharptech/aerialc/widget/AliPaySuccessView;

    .line 112
    iget-object v3, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 113
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 114
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 115
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x5

    const p3, 0x7f0b001a

    const/16 v1, 0x8

    if-eq p2, p1, :cond_0

    const p1, 0x7f0b0019

    packed-switch p2, :pswitch_data_0

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-virtual {v2, v1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->setVisibility(I)V

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    invoke-virtual {v2, v1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0b0002

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {v2, v1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {v2, v3}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->setVisibility(I)V

    .line 126
    invoke-virtual {v2}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->startAnim()V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0b0018

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {v2, v1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-virtual {v2, v1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->setVisibility(I)V

    .line 149
    :goto_0
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/sharptech/aerialc/util/ToastUtils;
    .locals 1

    .line 33
    sget-object v0, Lcom/sharptech/aerialc/util/ToastUtils;->sInstance:Lcom/sharptech/aerialc/util/ToastUtils;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sharptech/aerialc/util/ToastUtils;

    invoke-direct {v0}, Lcom/sharptech/aerialc/util/ToastUtils;-><init>()V

    sput-object v0, Lcom/sharptech/aerialc/util/ToastUtils;->sInstance:Lcom/sharptech/aerialc/util/ToastUtils;

    .line 36
    :cond_0
    sget-object v0, Lcom/sharptech/aerialc/util/ToastUtils;->sInstance:Lcom/sharptech/aerialc/util/ToastUtils;

    return-object v0
.end method


# virtual methods
.method public hideLoading()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/LoadingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    return-void
.end method

.method public hideToast()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideLoading()V

    .line 231
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast2()V

    return-void
.end method

.method public hideToast2()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;II)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 219
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sharptech/aerialc/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast()V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 205
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    .line 206
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    const/16 p2, 0x11

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast2:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public showError(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast()V

    .line 41
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->create(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/Toast;

    .line 45
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showInfo(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast()V

    .line 67
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    :cond_0
    const/4 v0, 0x3

    .line 70
    invoke-direct {p0, p1, v0, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->create(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/Toast;

    .line 71
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showLoading(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showLoading(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showLoading(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast()V

    .line 94
    new-instance v0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    invoke-direct {v0, p1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setCancelable(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setCancelOutside(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object v0

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p2, 0x7f0d005c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setShowMessage(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->create()Lcom/sharptech/aerialc/util/LoadingDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    .line 100
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/util/LoadingDialog;->show()V

    return-void
.end method

.method public showLong(Landroid/content/Context;I)V
    .locals 1

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sharptech/aerialc/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public showLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, p1, p2, v0}, Lcom/sharptech/aerialc/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public showMessage(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast()V

    .line 80
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    :cond_0
    const/4 v0, 0x5

    .line 83
    invoke-direct {p0, p1, v0, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->create(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/Toast;

    .line 84
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showShort(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 174
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, p2, v0}, Lcom/sharptech/aerialc/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public showSuccess(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/sharptech/aerialc/util/ToastUtils;->hideToast()V

    .line 54
    iget-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    :cond_0
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1, v0, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->create(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/Toast;

    .line 58
    iget-object p1, p0, Lcom/sharptech/aerialc/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/sharptech/aerialc/util/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
