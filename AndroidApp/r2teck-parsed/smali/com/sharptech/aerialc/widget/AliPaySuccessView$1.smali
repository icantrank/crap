.class Lcom/sharptech/aerialc/widget/AliPaySuccessView$1;
.super Ljava/lang/Object;
.source "AliPaySuccessView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/widget/AliPaySuccessView;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/widget/AliPaySuccessView;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/widget/AliPaySuccessView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView$1;->this$0:Lcom/sharptech/aerialc/widget/AliPaySuccessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView$1;->this$0:Lcom/sharptech/aerialc/widget/AliPaySuccessView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->access$002(Lcom/sharptech/aerialc/widget/AliPaySuccessView;F)F

    .line 152
    iget-object p1, p0, Lcom/sharptech/aerialc/widget/AliPaySuccessView$1;->this$0:Lcom/sharptech/aerialc/widget/AliPaySuccessView;

    invoke-virtual {p1}, Lcom/sharptech/aerialc/widget/AliPaySuccessView;->postInvalidate()V

    return-void
.end method
