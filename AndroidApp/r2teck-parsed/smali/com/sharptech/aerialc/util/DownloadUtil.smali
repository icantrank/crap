.class public Lcom/sharptech/aerialc/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;
    }
.end annotation


# static fields
.field private static downloadUtil:Lcom/sharptech/aerialc/util/DownloadUtil;


# instance fields
.field private mDownloadPath:Ljava/lang/String;

.field private final okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sharptech/aerialc/common/Constants;->PATH_SDCARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil;->mDownloadPath:Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/sharptech/aerialc/util/DownloadUtil;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/sharptech/aerialc/util/DownloadUtil;->isExistDir()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/sharptech/aerialc/util/DownloadUtil;
    .locals 1

    .line 37
    sget-object v0, Lcom/sharptech/aerialc/util/DownloadUtil;->downloadUtil:Lcom/sharptech/aerialc/util/DownloadUtil;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/sharptech/aerialc/util/DownloadUtil;

    invoke-direct {v0}, Lcom/sharptech/aerialc/util/DownloadUtil;-><init>()V

    sput-object v0, Lcom/sharptech/aerialc/util/DownloadUtil;->downloadUtil:Lcom/sharptech/aerialc/util/DownloadUtil;

    .line 40
    :cond_0
    sget-object v0, Lcom/sharptech/aerialc/util/DownloadUtil;->downloadUtil:Lcom/sharptech/aerialc/util/DownloadUtil;

    return-object v0
.end method

.method private getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isExistDir()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil;->mDownloadPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sharptech/aerialc/util/DownloadUtil;->isExistDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExistDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "savePath"

    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;)V
    .locals 1

    .line 53
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/sharptech/aerialc/util/DownloadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/sharptech/aerialc/util/DownloadUtil$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/sharptech/aerialc/util/DownloadUtil$1;-><init>(Lcom/sharptech/aerialc/util/DownloadUtil;Lcom/sharptech/aerialc/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
