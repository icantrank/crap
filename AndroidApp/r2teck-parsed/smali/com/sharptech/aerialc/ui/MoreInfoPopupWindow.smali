.class public Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MoreInfoPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;
    }
.end annotation


# instance fields
.field private clMoreInfo:Landroid/support/constraint/ConstraintLayout;

.field private clPw:Landroid/support/constraint/ConstraintLayout;

.field private cmd:Lcom/sharptech/aerialc/bean/CommandPack;

.field private ctvOsd:Landroid/widget/CheckedTextView;

.field private ctvPw100:Landroid/widget/CheckedTextView;

.field private ctvPw25:Landroid/widget/CheckedTextView;

.field private ctvPw500:Landroid/widget/CheckedTextView;

.field private ctvPw800:Landroid/widget/CheckedTextView;

.field private ctv_osd:Landroid/widget/CheckedTextView;

.field private listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

.field private mCommandSender:Lcom/sharptech/aerialc/runable/CommandTask;

.field private mContext:Landroid/content/Context;

.field private mCtvFrame1:Landroid/widget/CheckedTextView;

.field private mCtvFrame2:Landroid/widget/CheckedTextView;

.field private mCtvFrame3:Landroid/widget/CheckedTextView;

.field private mCtvFrame4:Landroid/widget/CheckedTextView;

.field private mCtvQuality1:Landroid/widget/CheckedTextView;

.field private mCtvQuality2:Landroid/widget/CheckedTextView;

.field private mCtvQuality3:Landroid/widget/CheckedTextView;

.field private mCtvQuality4:Landroid/widget/CheckedTextView;

.field private mRootView:Landroid/view/View;

.field status:Z

.field private tvAboutUs:Landroid/widget/TextView;

.field private tvInstructions:Landroid/widget/TextView;

.field private tvOSD:Landroid/widget/TextView;

.field private tvPw:Landroid/widget/TextView;

.field private tvVersionCode:Landroid/widget/TextView;

.field private tvVersionName:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f090025

    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    .line 59
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->initView()V

    .line 60
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->initData()V

    .line 61
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->init()V

    .line 62
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->initListener()V

    .line 63
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->setContentView(Landroid/view/View;)V

    .line 64
    iput-boolean p2, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->status:Z

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->setOutsideTouchable(Z)V

    .line 75
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvVersionName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/sharptech/aerialc/MainApplication;->getInstance()Lcom/sharptech/aerialc/MainApplication;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0060

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvAboutUs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvVersionName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvVersionCode:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvOSD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctv_osd:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw25:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw100:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw500:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw800:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvAboutUs:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvInstructions:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvVersionName:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvVersionCode:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->tvOSD:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctv_osd:Landroid/widget/CheckedTextView;

    .line 87
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctv_osd:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->clPw:Landroid/support/constraint/ConstraintLayout;

    .line 90
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw25:Landroid/widget/CheckedTextView;

    .line 91
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw100:Landroid/widget/CheckedTextView;

    .line 92
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw500:Landroid/widget/CheckedTextView;

    .line 93
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw800:Landroid/widget/CheckedTextView;

    const-string v0, "r2teck"

    const-string v1, "main"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->clPw:Landroid/support/constraint/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, "r2teck"

    const-string v1, "reteck"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->clPw:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "r2teck"

    const-string v2, "exabotix"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->clPw:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 204
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "V1.0"

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 143
    :pswitch_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sharptech/aerialc/ui/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->dismiss()V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "r2teck"

    const-string v0, "exabotix"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sharptech/aerialc/ui/AboutUsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sharptech/aerialc/ui/WebViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->dismiss()V

    goto/16 :goto_1

    .line 180
    :pswitch_2
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw25:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 181
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw100:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 182
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw500:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 183
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw800:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 184
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    const/16 v0, 0x320

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;->onPowerClick(I)V

    goto/16 :goto_1

    .line 171
    :pswitch_3
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw25:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 172
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw100:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 173
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw500:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 174
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw800:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 175
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    const/16 v0, 0x1f4

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;->onPowerClick(I)V

    goto :goto_1

    .line 153
    :pswitch_4
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw25:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 154
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw100:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 155
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw500:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 156
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw800:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;->onPowerClick(I)V

    goto :goto_1

    .line 162
    :pswitch_5
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw25:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 163
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw100:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw500:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 165
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctvPw800:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 166
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;->onPowerClick(I)V

    goto :goto_1

    .line 147
    :pswitch_6
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctv_osd:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 148
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->ctv_osd:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;->onStatusClick(I)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f070042
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0700d8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow;->listener:Lcom/sharptech/aerialc/ui/MoreInfoPopupWindow$OnStatusClickListener;

    return-void
.end method
