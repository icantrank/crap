.class public Lcom/sharptech/aerialc/ui/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# instance fields
.field private mContentUrl:Ljava/lang/String;

.field private mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "http://h5.boericloud.com:18082/rabbitpre/index.html"

    .line 34
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mContentUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/ui/WebViewActivity;)Lcom/sharptech/aerialc/util/LoadingDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    return-object p0
.end method

.method private destroyWebView()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 136
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 138
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 139
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 140
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 115
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 116
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 117
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 118
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 119
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 120
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 121
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF -8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    return-void
.end method


# virtual methods
.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 151
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 153
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string p1, "sunzhibin"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 159
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v0

    .line 162
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    :goto_5
    throw p1
.end method

.method protected initData()V
    .locals 3

    .line 72
    new-instance v0, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setCancelable(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setCancelOutside(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d005c

    .line 75
    invoke-virtual {p0, v2}, Lcom/sharptech/aerialc/ui/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->setShowMessage(Z)Lcom/sharptech/aerialc/util/LoadingDialog$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/sharptech/aerialc/util/LoadingDialog$Builder;->create()Lcom/sharptech/aerialc/util/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mLoadingDialog:Lcom/sharptech/aerialc/util/LoadingDialog;

    .line 78
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sharptech/aerialc/ui/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/sharptech/aerialc/ui/WebViewActivity$1;-><init>(Lcom/sharptech/aerialc/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 3

    const v0, 0x7f0700e3

    .line 47
    invoke-virtual {p0, v0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 48
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->initWebView()V

    .line 49
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "file:///android_asset/use_index/index.html"

    .line 55
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mContentUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "file:///android_asset/about_us/index.html"

    .line 52
    iput-object v0, p0, Lcom/sharptech/aerialc/ui/WebViewActivity;->mContentUrl:Ljava/lang/String;

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090022

    .line 40
    invoke-virtual {p0, p1}, Lcom/sharptech/aerialc/ui/WebViewActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->initView()V

    .line 42
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->initData()V

    .line 43
    invoke-virtual {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->initListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/sharptech/aerialc/ui/WebViewActivity;->destroyWebView()V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
