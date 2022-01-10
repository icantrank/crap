.class Lcom/sharptech/aerialc/protocol/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/protocol/MainActivity;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/protocol/MainActivity;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/protocol/MainActivity;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget v1, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    const-string v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    .line 793
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget v3, v3, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget v3, v3, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 794
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget v2, v2, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 793
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 795
    iget-object v1, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v1}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1600(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-boolean v0, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mStartVideoRecord:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iget-object v0, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/protocol/MainActivity;->access$1600(Lcom/sharptech/aerialc/protocol/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/MainActivity$4;->this$0:Lcom/sharptech/aerialc/protocol/MainActivity;

    iput v4, v0, Lcom/sharptech/aerialc/protocol/MainActivity;->mRecorderSecond:I

    :goto_0
    return-void
.end method
