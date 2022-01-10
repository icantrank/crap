.class public Lcom/sharptech/aerialc/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# static fields
.field public static FPS:I

.field private static sInstance:Lcom/sharptech/aerialc/MainApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sharptech/aerialc/MainApplication;
    .locals 1

    .line 38
    sget-object v0, Lcom/sharptech/aerialc/MainApplication;->sInstance:Lcom/sharptech/aerialc/MainApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sput-object p0, Lcom/sharptech/aerialc/MainApplication;->sInstance:Lcom/sharptech/aerialc/MainApplication;

    .line 22
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 31
    invoke-static {}, Lcom/sharptech/aerialc/util/CrashHandler;->getInstance()Lcom/sharptech/aerialc/util/CrashHandler;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcom/sharptech/aerialc/util/CrashHandler;->init(Landroid/content/Context;)V

    return-void
.end method
