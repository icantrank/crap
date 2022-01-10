.class Lcom/sharptech/aerialc/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/sharptech/aerialc/service/ScreenRecordService$OnRecordErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/MainActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/MainActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity$1;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordError(Z)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity$1;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    new-instance v0, Lcom/sharptech/aerialc/ui/MainActivity$1$1;

    invoke-direct {v0, p0}, Lcom/sharptech/aerialc/ui/MainActivity$1$1;-><init>(Lcom/sharptech/aerialc/ui/MainActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/sharptech/aerialc/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
