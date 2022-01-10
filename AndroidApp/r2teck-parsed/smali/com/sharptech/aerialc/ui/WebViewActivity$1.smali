.class Lcom/sharptech/aerialc/ui/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/WebViewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/WebViewActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/WebViewActivity$1;->this$0:Lcom/sharptech/aerialc/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/WebViewActivity$1;->this$0:Lcom/sharptech/aerialc/ui/WebViewActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/WebViewActivity;->access$000(Lcom/sharptech/aerialc/ui/WebViewActivity;)Lcom/sharptech/aerialc/util/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sharptech/aerialc/util/LoadingDialog;->dismiss()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 84
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/WebViewActivity$1;->this$0:Lcom/sharptech/aerialc/ui/WebViewActivity;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/WebViewActivity;->access$000(Lcom/sharptech/aerialc/ui/WebViewActivity;)Lcom/sharptech/aerialc/util/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sharptech/aerialc/util/LoadingDialog;->show()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method
