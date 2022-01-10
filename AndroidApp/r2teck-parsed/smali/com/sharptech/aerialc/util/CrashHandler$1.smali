.class Lcom/sharptech/aerialc/util/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/util/CrashHandler;->catchCrashException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/util/CrashHandler;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/util/CrashHandler;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/sharptech/aerialc/util/CrashHandler$1;->this$0:Lcom/sharptech/aerialc/util/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 126
    invoke-static {}, Lcom/sharptech/aerialc/MainApplication;->getInstance()Lcom/sharptech/aerialc/MainApplication;

    move-result-object v0

    const-string v1, "~~~~bug exit~~~~"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
