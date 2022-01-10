.class Lcom/sharptech/aerialc/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/MainActivity;->decCallBack(II[B[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/MainActivity;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/MainActivity;II)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    iput p2, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->val$w:I

    iput p3, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    iget v1, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->val$w:I

    iget v2, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->val$h:I

    invoke-virtual {v0, v1, v2}, Lcom/sharptech/aerialc/ui/MainActivity;->setSurfaceWH(II)V

    .line 220
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/MainActivity;->access$100(Lcom/sharptech/aerialc/ui/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/MainActivity$2;->this$0:Lcom/sharptech/aerialc/ui/MainActivity;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/MainActivity;->access$200(Lcom/sharptech/aerialc/ui/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
